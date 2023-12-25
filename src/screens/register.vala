namespace Screens{
    public class RegisterPage{
        public Gtk.Box thisPage;
        public string tet="ted";

        public RegisterPage(){

            var tempLabelWidget=new Widgets.LabelRegister();
            var tempFormRegisterWidget = new Widgets.FormRegister();


            thisPage=new RegisterPageUi ();

            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempFormRegisterWidget.formregWrapper);

        }


    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/register.ui")]
    public class RegisterPageUi:Gtk.Box{

    }
}