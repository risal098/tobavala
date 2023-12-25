namespace Screens{
    public class LeaderBoardPage{
        public Gtk.Box thisPages;
        public LeaderBoardPageUi thisPage;
        public Gtk.ScrolledWindow mainBox;
        public Gtk.Box secondary;
        public Gtk.CssProvider css_style;
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
            //  mainBox.set_size_request(900,800);
            //  var tempCard=new Widgets.UserBox();
            //  secondary.append(tempCard.thisbox);
            for(int i = 1; i<=20; i++){
                secondary.append(new Widgets.UserBox(i.to_string(), "Username", "1000 XP"+"    ").thisbox);
            }
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/leaderBoard.ui")]
    public class LeaderBoardPageUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.ScrolledWindow mainBox;

       [GtkChild]
       public unowned Gtk.Box secondaryBox;

    }
}