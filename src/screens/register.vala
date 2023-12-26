namespace Screens{
    public class RegisterPage:Page{
        public Gtk.Box thisPage;
        public string tet="ted";
        public override Gtk.Box _thisPage{
            get {
                return this.thisPage;
            }
            
            set {
                this.thisPage = value;
            }
        }
        public RegisterPage(){

            var tempLabelWidget=new Widgets.LabelRegister();
            var tempFormRegisterWidget = new Widgets.FormRegister();


            thisPage=new RegisterPageUi ();

            //  thisPage.append(tempLabelWidget.label);
            thisPage.append(tempFormRegisterWidget.formregWrapper);

        }


    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/register.ui")]
    public class RegisterPageUi:Gtk.Box{

    }
}