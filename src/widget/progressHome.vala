namespace Widgets{
  public class ProgressHome{
    public Gtk.Label labelProg;
    public Gtk.Box cardProg;
    public int persenStat = 15;

    public ProgressHome(){
      var tempBox = new ProgressHomeUi ();
      this.cardProg = tempBox.cardProgress;
      this.labelProg = tempBox.labelProgress;
      this.labelProg.set_label(@"You have achieved $(persenStat)% of your weekly goal");
    }
  }
   [GtkTemplate (ui = "/org/example/App/ui/widget/progressHome.ui")]
   public class ProgressHomeUi:Gtk.Box{
    [GtkChild]
    public unowned Gtk.Box cardProgress;
    [GtkChild]
    public unowned Gtk.Label labelProgress;
   }
}
