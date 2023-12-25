namespace Widgets{
    public class ButtonFinish{
       public Gtk.Box thisBox;
       public Gtk.Button thisButton; //the widget
       public void clicked(){
        print("uuwuiji");
       }
       public ButtonFinish(){
          var tempBox=new ButtonFinishUi();
          thisBox = tempBox;
          thisButton = tempBox.fin;
          thisButton.clicked.connect(clicked);
 
       }
    }
 
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/buttonFinish.ui")]
     public class ButtonFinishUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.Button fin;
 
     }
  }
 
 
 
 
 