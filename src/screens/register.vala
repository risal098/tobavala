namespace Screens{
    public class RegisterPage{
        public Gtk.Box thisPage;
        public string tet="ted";
        public RegisterPage(){
            thisPage=new RegisterPageUi ();
            var tempLabelWidget=new Widgets.LabelRegister();
            var tempButtonWidget=new Widgets.ButtonRegister();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempButtonWidget.changeLogin);
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/register.ui")]
    public class RegisterPageUi:Gtk.Box{

    }
}