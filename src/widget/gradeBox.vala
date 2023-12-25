namespace Widgets{
    public class GradeBox{
       public Gtk.Box thisBox;
       public Gtk.Label gradeLabel;
       public string percentage;

       public GradeBox(string percentage){
         this.percentage = percentage;
          var tempBox = new GradeBoxUi();
          thisBox = tempBox;
          gradeLabel = tempBox.gradeLabel;

          gradeLabel.set_label(percentage);
       }
    }
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/gradeBox.ui")]
     public class GradeBoxUi:Gtk.Box{
      [GtkChild]
       public unowned Gtk.Label gradeLabel; 
      
       
 
     }
  }
 
 
 