namespace Screens{
    public class LoginPage{
        public Gtk.Box thisPage;
        // public Gtk.Entry username;
        public Gtk.Entry password;
        // public Gtk.Button
        public LoginPage(){

            var tempLabelWidget= new Widgets.LabelLogin();
            var tempButtonWidget   = new Widgets.ButtonLogin();
            var tempEntryLoginWidget = new Widgets.EntryLogin();

            thisPage=new LoginPageUi();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempEntryLoginWidget.formWrapper);
            // thisPage.append(tempEntryLoginWidget.username);
            // thisPage.append(tempEntryLoginWidget.password);

            thisPage.append(tempButtonWidget .changeRegister);
            // password = new Gtk.Entry();
            // thisPage.append(password);

        }
    }


    [GtkTemplate (ui = "/org/example/App/ui/screens/login.ui")]
    public class LoginPageUi:Gtk.Box{


    }
}
