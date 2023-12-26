namespace Screens{
    public class LoginPage:Page{
        public Gtk.Box thisPage;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPage;
            }
            
            set {
                this.thisPage = value;
            }
        }
        public LoginPage(){
            var tempLabelWidget= new Widgets.LabelLogin();
            var tempFormLoginWidget = new Widgets.FormLogin();
            thisPage=new LoginPageUi();
            thisPage.append(tempFormLoginWidget.formWrapper);
        }
        
    }



    [GtkTemplate (ui = "/org/example/App/ui/screens/login.ui")]
    public class LoginPageUi:Gtk.Box{
   

    }
}