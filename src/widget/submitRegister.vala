


namespace Widgets{
   public class ButtonRegister{
      public Gtk.Button changeLogin; //the widget
      public Blankgtk.Window context;
      public Gtk.Box navPage;
      public ButtonRegister(){
         var tempBox=new ButtonRegisterUi();
     
         changeLogin=tempBox.changeLogin;
         changeLogin.clicked.connect(changeToLoginPage);

      }
      public void changeToLoginPage(){
         Controllers.TesTing.login+=100;
         var tempPage=new Screens.LoginPage();
     print("sip\n");
     Navigator.replace(tempPage.thisPage);
 
      }
   }


   [GtkTemplate (ui = "/org/example/App/ui/widget/submitRegister.ui")]
    public class ButtonRegisterUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Button changeLogin;

    }
 }
