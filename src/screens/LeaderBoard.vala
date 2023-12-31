namespace Screens{
    public class LeaderBoardPage:Page{
        public Gtk.Box thisPages;
        public LeaderBoardPageUi thisPage;
        public Gtk.ScrolledWindow mainBox;
        public Gtk.Box secondary;
        public Gtk.CssProvider css_style;
        public Gtk.Button back;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPages;
            }
            
            set {
                this.thisPages = value;
            }
        }
        public LeaderBoardPage(){
            css_style = new Gtk.CssProvider();
            css_style.load_from_resource("/org/example/App/assets/songcard.css");
            Gtk.StyleContext.add_provider_for_display(
                Gdk.Display.get_default(),
                css_style,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );
            thisPage=new LeaderBoardPageUi();
            thisPages = thisPage;
            mainBox = thisPage.mainBox;
            secondary = thisPage.secondaryBox;
            this.back=thisPage.back;
            this.back.clicked.connect(()=>{ Navigator.replacement(new Screens.HomePage());});
            Request.getTop20();
            for(int i = 1; i<=Leaderboard.username.length(); i++){
                secondary.append(new Widgets.UserBox(i.to_string(), Leaderboard.username.nth_data(i-1), Leaderboard.points.nth_data(i-1).to_string()+"   ").thisbox);
            }
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/leaderBoard.ui")]
    public class LeaderBoardPageUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.ScrolledWindow mainBox;

       [GtkChild]
       public unowned Gtk.Box secondaryBox;
       [GtkChild]
       public unowned Gtk.Button back;
    }
}