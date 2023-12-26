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
         Navigator.replacement(new Screens.HomePage());
        print("%s\n, %s\n", res1, res2);
    }

      public FormLogin(){
         var tempBox = new FormLoginUi();
         formWrapper = tempBox.formWrapper;
         var data1 = tempBox.usernameLogin;
         var data2 = tempBox.passwordLogin;

         loginBtn = tempBox.loginBtn;
         username = tempBox.usernameLogin;
         password = tempBox.passwordLogin;
         titleLogin = tempBox.loginLabel;
         logresBtn = tempBox.loginToRegisBtn;

         //  imgLogin = tempBox.loginImg;


         titleLogin.set_label("Welcome To Toba App");
         //  imgLogin.set_from_resource ("/org/gnome/Example/images/login_pict.png");
         loginBtn.clicked.connect(()=>get_input_val(data1, data2));


         formWrapper.set_size_request(600, -1);
      }


      public void changeToHomePage(){
         Controllers.TesTing.register+=1;
         print("perma");
         var tempPage=new Screens.HomePage();
         print("sa--");
         print("lahan\n");
       Navigator.replace(tempPage.thisPage);
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



