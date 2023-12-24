namespace Widgets{
   public class ButtonLogin{
      public Gtk.Button changeRegister; //the widget
      public Blankgtk.Window context;
      public Gtk.Box navPage;

      public ButtonLogin(){
         var tempBox=new ButtonLoginUi();
         changeRegister=tempBox.changeRegister;
         changeRegister.clicked.connect(changeToRegisterPage);

      }
      public void changeToRegisterPage(){
         Controllers.TesTing.register+=1;
         print("perma");
         var tempPage=new Screens.RegisterPage();
         print("sa--");
         print("lahan\n");
       Navigator.replace(tempPage.thisPage);
      }
   }


   [GtkTemplate (ui = "/org/example/App/ui/widget/submitLogin.ui")]
    public class ButtonLoginUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Button changeRegister;


    }
 }









//  //[GtkTemplate (ui = "/org/example/App/ui/widget/button1.ui")]
//      public class TesWidget1{
//          Gtk.ApplicationWindow  window;
//          public Gtk.Button button11;
//          public string apa;
//      //    [GtkChild]
//     //     public Gtk.Button button1;
//     public Gtk.Button button1;
//          public TesWidget1(Gtk.ApplicationWindow  windowe){


//            //      button1.clicked.connect(()=>print("halios"));
//            var boxing=new Widget1();
//             button1=boxing.button1;
//           button1.clicked.connect(()=>print("halios"));
//            string avava=boxing.str;
//           // button11=boxing.maw;
//                button11=new Gtk.Button.with_label("mau");
//                 button11.clicked.connect(()=>print("mawww  "));
//          }


//      }

//      [GtkTemplate (ui = "/org/example/App/ui/widget/button1.ui")]
//      public class Widget1 :Gtk.Box{
//        //  public Gtk.Button maw;
//         public  string str="risal";
//                 [GtkChild]
//    public unowned Gtk.Button button1;
//          public Widget1(){
//          //    maw=new Gtk.Button.with_label("maw");
//             // maw.clicked.connect(()=>print("mawww  "));
//          }
//      }
//  /*
//      [GtkTemplate (ui = "/org/example/App/ui/widget/button1.ui")]
//      public class Widget1:Gtk.Box{
//          Gtk.ApplicationWindow  window;
//          public Gtk.Button button11;
//          public string apa;
//          [GtkChild]
//          public Gtk.Button button1;

//          public Widget1(Gtk.ApplicationWindow  windowe){
//              apa="tebak";
//        //      this.window =windowe;
//        //     print("%s",window.tistes);
//              print("1");
//              button1.clicked.connect(() =>{print("halios");});
//              button11 = new Gtk.Button.with_label ("111");
//              button11.clicked.connect(()=>{print("1111");});

//          }
//          construct{
//              print("2");
//              button1.clicked.connect(() =>{print("halos");});


//          }
//          public void pr(){
//              print("ava");
//              button1.clicked.connect(() =>{print("halo");});
//          }

//      }
//  */

