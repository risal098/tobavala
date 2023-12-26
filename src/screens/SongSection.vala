namespace Screens{
    public class SongSectionPage:Page{
        public Gtk.Box thisPages;
        public SongSectionPageUi thisPage;
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
        public SongSectionPage(){
            css_style = new Gtk.CssProvider();
            css_style.load_from_resource("/org/example/App/assets/songcard.css");
            Gtk.StyleContext.add_provider_for_display(
                Gdk.Display.get_default(),
                css_style,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );
            thisPage=new SongSectionPageUi();
            thisPages = thisPage;
            mainBox = thisPage.mainBox;
            secondary = thisPage.secondaryBox;
            this.back=thisPage.back;
            this.back.clicked.connect(()=>{ Navigator.replacement(new Screens.HomePage());});
            //  mainBox.set_size_request(900,800);
            //  var tempCard=new Widgets.UserBox();
            //  secondary.append(tempCard.thisbox);
            for(int i = 0; i<20; i++){
                string a = "A Thousand Years"+i.to_string();
                secondary.append(new Widgets.SongCard("/org/example/App/assets/AThousand_Years.png", a, "Christina Perri","AThousandYears").thisbox);
            }
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/songsection.ui")]
    public class SongSectionPageUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.ScrolledWindow mainBox;

       [GtkChild]
       public unowned Gtk.Box secondaryBox;
       [GtkChild]
       public unowned Gtk.Button back;

    }
}