namespace Screens{
    public class HomePage{
        public Gtk.Box thisPage;

        public HomePage(){

            var tempLabelWidget = new Widgets.LabelHome();
            var tempProgressWidget = new Widgets.ProgressHome();
            var tempCardWidget = new Widgets.CardHome();
            // var tempButtonWidget   = new Widgets.ButtonLogin();
            // var tempEntryLoginWidget = new Widgets.EntryLogin();

            thisPage = new HomePageUi();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempProgressWidget.cardProg);
            thisPage.append(tempCardWidget.changeLyr);
            thisPage.append(tempCardWidget.changeLyr2);

            // thisPage.append(tempEntryLoginWidget.formWrapper);

            // thisPage.append(tempButtonWidget .changeRegister);

        }
    }


    [GtkTemplate (ui = "/org/example/App/ui/screens/home.ui")]
    public class HomePageUi:Gtk.Box{


    }
}



/*

 public class HomePage:Page{
        public  Gtk.Box _thisPage;
        public override Gtk.Box thisPage{
            get {
                return this._thisPage;
            }
            
            set {
                this._thisPage = value;
            }
        }
        public HomePage(){

            var tempLabelWidget = new Widgets.LabelHome();
            var tempProgressWidget = new Widgets.ProgressHome();
            var tempCardWidget = new Widgets.CardHome();
            // var tempButtonWidget   = new Widgets.ButtonLogin();
            // var tempEntryLoginWidget = new Widgets.EntryLogin();

            _thisPage = new HomePageUi();
            _thisPage.append(tempLabelWidget.label);
            _thisPage.append(tempProgressWidget.cardProg);
            _thisPage.append(tempCardWidget.changeLyr);
            _thisPage.append(tempCardWidget.changeLyr2);

            // thisPage.append(tempEntryLoginWidget.formWrapper);

            // thisPage.append(tempButtonWidget .changeRegister);

        }
    }
*/