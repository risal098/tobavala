namespace Widgets{
   public class FormLogin{
      public Gtk.Entry username; //the widget
      public Gtk.Entry password;
      public Gtk.Box formWrapper;
      public Gtk.Button loginBtn;
      public Gtk.Label titleLogin;
      //  public Gtk.Image imgLogin;
      public Gtk.Button logresBtn;
      public bool isClicked = false;
     public void get_input_val(Gtk.Entry data1, Gtk.Entry data2) {
        string res1 = data1.get_text().to_string();
        string res2 = data2.get_text().to_string();
        int stat=Request.reqLogin(res1,res2);
        if(stat==200){Navigator.replacement(new Screens.HomePage());}
        print("usus : %s\n,pw : %s\n", this.username.get_text().to_string(), this.password.get_text());
    }
    public void get_input_val2() {
      print("awodawo\n");
      string res1 = this.username.get_text().to_string();
      string res2 = this.password.get_text().to_string();
      print("usus2 : %s\n,pw2 : %s\n", res1, res2);
      int stat=Request.reqLogin(res1,res2);
      if(stat==200){Navigator.replacement(new Screens.HomePage());}   
  }
      public FormLogin(){
         var tempBox = new FormLoginUi();
         formWrapper = tempBox.formWrapper;
         var data1 = tempBox.usernameLogin;
         var data2 = tempBox.passwordLogin;
         loginBtn = tempBox.loginBtn;
         this. username = data1;
         this.password = data2;
         titleLogin = tempBox.loginLabel;
         logresBtn = tempBox.loginToRegisBtn;
         titleLogin.set_label("Welcome To Toba App");
         loginBtn.clicked.connect(()=>get_input_val(data1,  data2));
         logresBtn.clicked.connect(()=>Navigator.replacement(new Screens.RegisterPage()));
         formWrapper.set_size_request(600, -1);
      }

   }

   [GtkTemplate (ui = "/org/example/App/ui/widget/formLogin.ui")]
    public class FormLoginUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Entry usernameLogin;
      [GtkChild]
      public unowned Gtk.Entry passwordLogin;
      [GtkChild]
      public unowned Gtk.Box formWrapper;
      [GtkChild]
      public unowned Gtk.Button loginBtn;
      [GtkChild]
      public unowned Gtk.Label loginLabel;
      //  [GtkChild]
      //  public unowned Gtk.Image loginImg;
      [GtkChild]
      public unowned Gtk.Button loginToRegisBtn;

    }



 }



