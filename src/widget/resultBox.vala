namespace Widgets{
    public class ResultBox{
       public Gtk.Box thisBox;
       public Gtk.Label label1;
       public Gtk.Label label2;
       public Gtk.Label label3;
       public Gtk.Label type;
       public ResultBox(string typeBox, string text1, string text2, string text3){
          var tempBox = new ResultBoxUi();
          thisBox = tempBox;
          type = tempBox.type;
          label1 = tempBox.label1;
          label2 = tempBox.label2;
          label3 = tempBox.label3;

          label1.set_label(text1);
          label2.set_label(text2);
          label3.set_label(text3);
          if(text1==StartSong.ans1){
          addColor(label1,SongGrade.score1);
          addColor(label2,SongGrade.score2);
          addColor(label3,SongGrade.score3);
          }
          type.set_label(typeBox);

          
       }
       
       public string color(double point){
         if(point>0.7){
            return "greenText";
         }else if(point<=0.7 && point >0.3){
            return "yellowText";
         }else{
            return "redText";
         }
       }
       public void addColor(Gtk.Label label,double point){

         label.add_css_class(color(point));
       }
    }
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/resultBox.ui")]
     public class ResultBoxUi:Gtk.Box{
      
      [GtkChild]
       public unowned Gtk.Label label1;
       [GtkChild]
       public unowned Gtk.Label label2;
       [GtkChild]
       public unowned Gtk.Label label3;
       [GtkChild]
       public unowned Gtk.Label type;
       
 
     }
  }
 
 
 