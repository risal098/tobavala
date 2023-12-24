namespace Screens{
    public class RegisterPage{
        public Gtk.Box thisPage;
        public string tet="ted";

        public RegisterPage(){

            var tempLabelWidget=new Widgets.LabelRegister();
            var tempButtonWidget=new Widgets.ButtonRegister();
            var tempEntryRegisterWidget = new Widgets.EntryRegister();


            thisPage=new RegisterPageUi ();

            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempEntryRegisterWidget.formregWrapper);

            thisPage.append(tempButtonWidget.changeLogin);

        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/register.ui")]
    public class RegisterPageUi:Gtk.Box{

    }
}
