namespace Widgets{
   public class EntryLogin{
      public Gtk.Entry username; //the widget
      public Gtk.Entry password;
      public EntryLogin(){
         var tempBox = new EntryLoginUi();
         var tempBox2 = new EntryLoginUi();
         this.username = tempBox.usernameLogin;
         this.password = tempBox2.passwordLogin;
      }
   }

   [GtkTemplate (ui = "/org/example/App/ui/widget/entryLogin.ui")]
    public class EntryLoginUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Entry usernameLogin;
      [GtkChild]
      public unowned Gtk.Entry passwordLogin;

    }
 }


