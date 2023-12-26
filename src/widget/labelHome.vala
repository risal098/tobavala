namespace Widgets{
   public class LabelHome{
    public Gtk.Label label;
    public LabelHome(){
       var tempBox = new LabelHomeUi ();
        this.label = tempBox.homeLabel;
        this.label.set_label("My Progress");
    }
   }
    [GtkTemplate (ui = "/org/example/App/ui/widget/labelHome.ui")]
    public class LabelHomeUi:Gtk.Box{
        [GtkChild]
        public unowned Gtk.Label homeLabel;
    }
}

