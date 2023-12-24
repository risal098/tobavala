namespace Widgets{
   public class EntryLogin{
      public Gtk.Entry username; //the widget
      public Gtk.Entry password;
      public Gtk.Box formWrapper;

      public EntryLogin(){
         var tempBox = new EntryLoginUi();
         // var tempBox2 = new EntryLoginUi();
         this.formWrapper = tempBox.formWrapper;
         this.username = tempBox.usernameLogin;
         this.password = tempBox.passwordLogin;

         // this.formWrapper.set_size_request(600,500);
      }
   }

   [GtkTemplate (ui = "/org/example/App/ui/widget/entryLogin.ui")]
    public class EntryLoginUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Entry usernameLogin;
      [GtkChild]
      public unowned Gtk.Entry passwordLogin;
      [GtkChild]
      public unowned Gtk.Box formWrapper;

    }
 }



