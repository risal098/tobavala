namespace Widgets{
   public class FormRegister{
      public Gtk.Entry usernameRegis; //the widget
      public Gtk.Entry emailRegis;
      public Gtk.Entry passwordRegis;
      public Gtk.Box formregWrapper;
      public Gtk.Button regisBtn;
      public Gtk.Label titleRegis;
      public Gtk.Button registologBtn;



      public void get_input_val(Gtk.Entry data1, Gtk.Entry data2, Gtk.Entry data3) {
        string res1 = data1.get_text().to_string();
        string res2 = data2.get_text().to_string();
        string res3 = data3.get_text().to_string();
        int stat=Request.reqRegister(res1,res2,res3);
        if(stat==200){
          Navigator.replacement(new Screens.HomePage());
        }
        print("%s\n, %s\n, %s\n", res1, res2, res3);
        

    }

      public FormRegister(){
         var tempBox = new FormRegisterUi();
         formregWrapper = tempBox.formregWrapper;
         var data1 = tempBox.usernameRegister;
         var data2 = tempBox.emailRegister;
         var data3 = tempBox.passwordRegister;

         usernameRegis = tempBox.usernameRegister;
         emailRegis = tempBox.emailRegister;
         passwordRegis = tempBox.passwordRegister;
         regisBtn = tempBox.regisBtn;
         titleRegis = tempBox.regisLabel;
         registologBtn = tempBox.regisToLoginBtn;


         titleRegis.set_label("Register Now");
         regisBtn.clicked.connect(()=>get_input_val(data1, data2, data3));

         registologBtn.clicked.connect(()=>Navigator.replacement(new Screens.LoginPage()));
         formregWrapper.set_size_request(600, -1);
      }


     

   }

   [GtkTemplate (ui = "/org/example/App/ui/widget/formRegister.ui")]
    public class FormRegisterUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Entry usernameRegister;
      [GtkChild]
      public unowned Gtk.Entry emailRegister;
      [GtkChild]
      public unowned Gtk.Entry passwordRegister;
      [GtkChild]
      public unowned Gtk.Box formregWrapper;
      [GtkChild]
      public unowned Gtk.Button regisBtn;
      [GtkChild]
      public unowned Gtk.Label regisLabel;
      [GtkChild]
      public unowned Gtk.Button regisToLoginBtn;

    }
 }


