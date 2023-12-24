namespace Widgets{
   public class LabelLogin{
    public Gtk.Label label;
    public LabelLogin(){
       var tempBox=new LabelLoginUi ();
        label=tempBox.loginLabel;
        label.set_label(Controllers.TesTing.login.to_string());
    }
   }
    [GtkTemplate (ui = "/org/example/App/ui/widget/labelLogin.ui")]
    public class LabelLoginUi:Gtk.Box{
        [GtkChild]
        public unowned Gtk.Label loginLabel;
    }
}


