namespace Widgets{
    public class SongCard{
        public string path;//the widget
        public Gtk.Box thisbox;
        public Gtk.Image thisImage;
        public Gtk.Label thisLabel;
        public Gtk.Box labelBox;
        public Gtk.Label singerLabel;
        public Gtk.CssProvider css_style;
        public Gtk.Button playBtn;
        public string getTitle;

        public void clicked(){
            print("uyay");
        }
    //     public Blankgtk.Window context;
    //     public Gtk.Box navPage;
       public SongCard(string path, string songLabel, string singer,string getTitle){
         css_style = new Gtk.CssProvider();
         css_style.load_from_resource("/org/example/App/assets/songcard.css");
         Gtk.StyleContext.add_provider_for_display(
             Gdk.Display.get_default(),
             css_style,
             Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
         );
          var tempBox=new SongCardUi();
          thisbox = tempBox.thisbox;
          playBtn = tempBox.playButton;
          thisImage = tempBox.songImage;
          thisLabel = tempBox.songLabel;
          labelBox = tempBox.labelBox;
          singerLabel = tempBox.singerLabel;
          singerLabel.set_label(singer);
          this.path = path;
          this.getTitle=getTitle;
          thisImage.set_from_resource(path);
          thisLabel.set_label(songLabel);

          playBtn.clicked.connect(clicked);
       }
    }
 
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/songCard.ui")]
     public class SongCardUi:Gtk.Box{
      [GtkChild]
       public unowned Gtk.Box thisbox;
      [GtkChild]
       public unowned Gtk.Image songImage;
      [GtkChild]
       public unowned Gtk.Label songLabel;
      [GtkChild]
       public unowned Gtk.Box labelBox; 
      [GtkChild]
       public unowned Gtk.Label singerLabel;
       [GtkChild]
       public unowned Gtk.Button playButton; 
       
 
     }
  }
 
 
 