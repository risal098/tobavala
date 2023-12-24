namespace Widgets{
    public class UserBox{
     public Gtk.Box thisbox;
     public Gtk.Box box1;
     public Gtk.Label rankLabel;
     public Gtk.Label userLabel;
     public Gtk.Label pointLabel;
     public Gtk.CssProvider css_style;
     public UserBox(string rank, string uname, string points){
        css_style = new Gtk.CssProvider();
         css_style.load_from_resource("/org/example/App/assets/userBox.css");
         Gtk.StyleContext.add_provider_for_display(
             Gdk.Display.get_default(),
             css_style,
             Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
         );
        UserBoxUi tempBox=new UserBoxUi();
        thisbox = tempBox;
        //  box1 = thisbox.box1;
        //  rankLabel = thisbox.rankLabel;
        thisbox.set_size_request(500,70);
     }
    }
     [GtkTemplate (ui = "/org/example/App/ui/widget/userbox.ui")]
     public class UserBoxUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.Label rankLabel;
       [GtkChild]
       public unowned Gtk.Box box1;
       [GtkChild]
       public unowned Gtk.Label userLabel;
       [GtkChild]
       public unowned Gtk.Label pointLabel;
        
     }
 }