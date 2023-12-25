namespace Widgets{
   public class CardHome{
      public Gtk.Button changeLyr; //the widget
      public Gtk.Label descLabel;
      public Gtk.Label titleLabel;

      public Gtk.Button changeLyr2; //the widget
      public Gtk.Label descLabel2;
      public Gtk.Label titleLabel2;



      public CardHome(){
         var tempBox = new CardHomeUi();
         changeLyr = tempBox.changeToPage;
         descLabel = tempBox.cardLabel;
         titleLabel = tempBox.cardBoxTitle;

         changeLyr2 = tempBox.changeToPage2;
         descLabel2 = tempBox.cardLabel2;
         titleLabel2 = tempBox.cardBoxTitle2;


         // titleLabel.set_label("Guess The Lyrics");
         descLabel.set_label("Guess The Lyrics \n\nChoose song that you want and improve your listening skill in fun way");
         changeLyr.clicked.connect(changeToLyricsPage);

         descLabel2.set_label("Leaderboard \n\nLet's see your ranking in the leaderboard");
         changeLyr2.clicked.connect(changeToLeaderboardPage);

      }


      public void changeToLeaderboardPage(){
         Controllers.TesTing.register+=1;
         print("perma");
         var tempPage=new Screens.RegisterPage();
         print("sa--");
         print("lahan\n");
         Navigator.replace(tempPage.thisPage);
      }


      public void changeToLyricsPage(){
         Controllers.TesTing.register+=1;
         print("perma");
         var tempPage=new Screens.RegisterPage();
         print("sa--");
         print("lahan\n");
         Navigator.replace(tempPage.thisPage);
      }
   }


   [GtkTemplate (ui = "/org/example/App/ui/widget/cardHome.ui")]
    public class CardHomeUi:Gtk.Box{
      [GtkChild]
      public unowned Gtk.Button changeToPage;
      [GtkChild]
      public unowned Gtk.Label cardLabel;
      [GtkChild]
      public unowned Gtk.Label cardBoxTitle;

      [GtkChild]
      public unowned Gtk.Button changeToPage2;
      [GtkChild]
      public unowned Gtk.Label cardLabel2;
      [GtkChild]
      public unowned Gtk.Label cardBoxTitle2;


    }

}





















// namespace Widgets{
//    public class CardHome{
//       public Gtk.Box changeLyr; //the widget
//       public Gtk.Label descLabel;
//       public Gtk.Label titleLabel;


//       public CardHome(){
//          var tempBox = new CardHomeUi();
//          changeLyr = tempBox.changeToBox;
//          descLabel = tempBox.cardLabel;
//          titleLabel = tempBox.cardBoxTitle;

//          descLabel.set_label("Choose song that you want and improve your listening skill in fun way");
//          titleLabel.set_label("Guess The Lyrics");



//       }

//       public void changeToLeaderboardPage(){
//          Controllers.TesTing.register+=1;
//          print("perma");
//          var tempPage=new Screens.RegisterPage();
//          print("sa--");
//          print("lahan\n");
//          Navigator.replace(tempPage.thisPage);
//       }


//       public void changeToLyricsPage(){
//          Controllers.TesTing.register+=1;
//          print("perma");
//          var tempPage=new Screens.RegisterPage();
//          print("sa--");
//          print("lahan\n");
//          Navigator.replace(tempPage.thisPage);
//       }
//    }


//    [GtkTemplate (ui = "/org/example/App/ui/widget/cardHome.ui")]
//     public class CardHomeUi:Gtk.Box{
//       [GtkChild]
//       public unowned Gtk.Box changeToBox;
//       [GtkChild]
//       public unowned Gtk.Label cardLabel;
//       [GtkChild]
//       public unowned Gtk.Label cardBoxTitle;


//     }

// }
//


