namespace Widgets{
  public class ProgressHome{
    public Gtk.Label labelProg;
    public Gtk.Box cardProg;
    public Gtk.Box circularProg;
    public Gtk.Box persenProg;
    public Gtk.Label labelPers;
    public int persentase = 15;




    public int persenStat = 15;

    public ProgressHome(){
      var tempBox = new ProgressHomeUi ();
      cardProg = tempBox.cardProgress;
      labelProg = tempBox.labelProgress;
      circularProg = tempBox.cirProg;
      persenProg = tempBox.persenBox;
      labelPers = tempBox.persenLabel;

      circularProg.set_size_request(-1,150);
      persenProg.set_size_request(-1, 150);

      labelPers.set_label("15%");
      //  labelPers.set_justify(2);
      labelProg.set_label(@"You have achieved $(persenStat)% of your weekly goal");
    }
  }
   [GtkTemplate (ui = "/org/example/App/ui/widget/progressHome.ui")]
   public class ProgressHomeUi:Gtk.Box{
    [GtkChild]
    public unowned Gtk.Box cardProgress;
    [GtkChild]
    public unowned Gtk.Label labelProgress;
    [GtkChild]
    public unowned Gtk.Box cirProg;
    [GtkChild]
    public unowned Gtk.Box persenBox;
    [GtkChild]
    public unowned Gtk.Label persenLabel;

   }
}
