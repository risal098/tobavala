namespace Screens{
    public class LoginPage{
        public Gtk.Box thisPage;
        public LoginPage(){
            
            var tempLabelWidget= new Widgets.LabelLogin();
            var tempButtonWidget   = new Widgets.ButtonLogin();
            thisPage=new LoginPageUi();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempButtonWidget .changeRegister);
        }
        
    }



    [GtkTemplate (ui = "/org/example/App/ui/screens/login.ui")]
    public class LoginPageUi:Gtk.Box{
   

    }
}