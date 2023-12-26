namespace Screens{
    public class HomePage:Page{
        public Gtk.Box thisPage;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPage;
            }
            
            set {
                this.thisPage = value;
            }
        }
        public HomePage(){
           Request.reqGetPlayedSong();
            var tempLabelWidget = new Widgets.LabelHome();
            var tempProgressWidget = new Widgets.ProgressHome();
            var tempCardWidget = new Widgets.CardHome();
            // var tempButtonWidget   = new Widgets.ButtonLogin();
            // var tempEntryLoginWidget = new Widgets.EntryLogin();

            thisPage = new HomePageUi();
            thisPage.append(tempLabelWidget.label);
            thisPage.append(tempProgressWidget.cardProg);
            thisPage.append(tempCardWidget.cardWrap);
            //  thisPage.append(tempCardWidget.changeLyr2);

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
        public  Gtk.Box thisPage;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPage;
            }
            
            set {
                this.thisPage = value;
            }
        }
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
*/