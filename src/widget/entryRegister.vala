namespace Widgets{
   public class EntryRegister{
      public Gtk.Entry usernameRegis; //the widget
      public Gtk.Entry emailRegis;
      public Gtk.Entry passwordRegis;
      public Gtk.Box formregWrapper;

      public EntryRegister(){
         var tempBox = new EntryRegisterUi();
         this.formregWrapper = tempBox.formregWrapper;

         this.usernameRegis = tempBox.usernameRegister;
         this.emailRegis = tempBox.emailRegister;
         this.passwordRegis = tempBox.passwordRegister;

         // this.formregWrapper.set_size_request(600,500);
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
      [GtkChild]
      public unowned Gtk.Box formregWrapper;

    }
 }


