namespace Screens{
    public class SongAnsPage:Page{
        public Gtk.Box thisPages;
        public SongAnsPageUi thisPage;
        public Gtk.CssProvider css_style;
        public string imagePath;
        public string songTitle;
        public string singer;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPages;
            }
            
            set {
                this.thisPages = value;
            }
        }
        public SongAnsPage(string imagePath, string songTitle, string singer,string getTitle){
            Request.getLyric(getTitle,SongSection.difficulty);
            print("bukti : %s\n", StartSong.lyric1);
            this.imagePath = imagePath;
            this.songTitle = songTitle;
            this.singer = singer;
            css_style = new Gtk.CssProvider();
            css_style.load_from_resource("/org/example/App/assets/songAns.css");
            Gtk.StyleContext.add_provider_for_display(
                Gdk.Display.get_default(),
                css_style,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );
            thisPage=new SongAnsPageUi();
            
            var widget = new Widgets.SongForm();
            var cardWidget = new Widgets.SongCardDisplay(imagePath, songTitle, singer).thisbox;
            thisPage.append(cardWidget);
            thisPage.append(widget.formregWrapper);
            thisPages = thisPage;
            
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/songAns.ui")]
    public class SongAnsPageUi:Gtk.Box{
    
       

    }
}