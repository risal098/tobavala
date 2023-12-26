namespace Widgets{
    public class SongCardDisplay{
        public string path;//the widget
        public Gtk.Box thisbox;
        public Gtk.Image thisImage;
        public Gtk.Label thisLabel;
        public Gtk.Box labelBox;
        public Gtk.Label singerLabel;
        public Gtk.CssProvider css_style;
   
    //     public Blankgtk.Window context;
    //     public Gtk.Box navPage;
       public SongCardDisplay(string path, string songLabel, string singer){
         css_style = new Gtk.CssProvider();
         css_style.load_from_resource("/org/example/App/assets/songcard.css");
         Gtk.StyleContext.add_provider_for_display(
             Gdk.Display.get_default(),
             css_style,
             Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
         );
          var tempBox=new SongCardUi2();
          thisbox = tempBox.thisbox;
          thisImage = tempBox.songImage;
          thisLabel = tempBox.songLabel;
          labelBox = tempBox.labelBox;
          singerLabel = tempBox.singerLabel;
          singerLabel.set_label(singer);
          this.path = path;
          thisImage.set_from_resource(path);
          thisLabel.set_label(songLabel);
       }
    }
 
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/songCard2.ui")]
     public class SongCardUi2:Gtk.Box{
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
       public unowned Gtk.Box boxButton; 
     
       
       
       
 
     }
  }
 
 
 