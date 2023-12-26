
namespace Widgets{
  public class LabelRegister{
    public Gtk.Label label;
    public LabelRegister(){
      var tempBox=new LabelRegisterUi ();
      label=tempBox.registerLabel;
      label.set_label(Controllers.TesTing.register.to_string());
    }
  }
   [GtkTemplate (ui = "/org/example/App/ui/widget/labelRegister.ui")]
   public class LabelRegisterUi:Gtk.Box{
    [GtkChild]
    public unowned Gtk.Label registerLabel;
   }
}