namespace Widgets{
    public class SongForm{
       public Gtk.Entry ans1; //the widget
       public Gtk.Entry ans2;
       public Gtk.Entry ans3;
       public Gtk.Box formregWrapper;
       public Gtk.Button submitBtn;
       public void getValue(Gtk.Entry entry1, Gtk.Entry entry2, Gtk.Entry entry3){
        string text1 = entry1.get_text().to_string();
        string text2 = entry2.get_text().to_string();
        string text3 = entry3.get_text().to_string();
        print("%s\n%s\n%s\n", text1, text2, text3);
        StartSong.ans1=text1 ;
            StartSong.ans2=text2;
            StartSong.ans3=text3;
        Request. reqComparisonScore();
        Navigator.replacement(new Screens.SongGradePage());
       }
 
       public SongForm(){
          var tempBox = new SongFormUi();
          formregWrapper = tempBox.formregWrapper;
          submitBtn = tempBox.submitBtn;
          var isi1 = tempBox.usernameRegister;
          var isi2 = tempBox.emailRegister;
          var isi3 = tempBox.passwordRegister;
          ans1 = tempBox.usernameRegister;
          ans2 = tempBox.emailRegister;
          ans3 = tempBox.passwordRegister;
          submitBtn.clicked.connect(()=>getValue(isi1, isi2, isi3));
 
          // this.formregWrapper.set_size_request(600,500);
       }
    }
 
    [GtkTemplate (ui = "/org/example/App/ui/widget/songForm.ui")]
     public class SongFormUi:Gtk.Box{
       [GtkChild]
       public unowned Gtk.Entry usernameRegister;
       [GtkChild]
       public unowned Gtk.Entry emailRegister;
       [GtkChild]
       public unowned Gtk.Entry passwordRegister;
       [GtkChild]
       public unowned Gtk.Box formregWrapper; 
       [GtkChild]
       public unowned Gtk.Button submitBtn;
 
     }
  }
 
 
 