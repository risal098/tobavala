namespace Widgets{
   public class EntryRegister{
      public Gtk.Entry usernameRegis; //the widget
      public Gtk.Entry emailRegis;
      public Gtk.Entry passwordRegis;
      public EntryRegister(){
         var tempBox = new EntryRegisterUi();
         var tempBox2 = new EntryRegisterUi();
         var tempBox3 = new EntryRegisterUi();

         this.usernameRegis = tempBox.usernameRegister;
         this.emailRegis = tempBox2.usernameRegister;
         this.passwordRegis = tempBox3.passwordRegister;
      }
   }

   [GtkTemplate (ui = "/org/example/App/ui/widget/entryRegister.ui")]
    public class EntryRegisterUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Entry usernameRegister;
      [GtkChild]
      public unowned Gtk.Entry emailRegister;
      [GtkChild]
      public unowned Gtk.Entry passwordRegister;

    }
 }


