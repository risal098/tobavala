namespace Screens{
    public class LoginPage{
        public Gtk.Box thisPage;
        public LoginPage(){
            
            var tempLabelWidget= new Widgets.LabelLogin();
            var tempFormLoginWidget = new Widgets.FormLogin();


            thisPage=new LoginPageUi();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempFormLoginWidget.formWrapper);
            //  thisPage.append(tempButtonWidget .changeRegister);
        }
        
    }



    [GtkTemplate (ui = "/org/example/App/ui/screens/login.ui")]
    public class LoginPageUi:Gtk.Box{
   

    }
}