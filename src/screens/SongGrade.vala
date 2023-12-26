namespace Screens{
    public class SongGradePage:Page{
        public Gtk.Box thisPages;
        public Gtk.Box resultBoxes;
        public SongGradePageUi thisPage;
        public Gtk.CssProvider css_style;
        public Gtk.Box buatGrade;
        public Gtk.Box center;
        public override Gtk.Box _thisPage{
            get {
                return this.thisPages;
            }
            
            set {
                this.thisPages = value;
            }
        }
        public SongGradePage(){
            css_style = new Gtk.CssProvider();
            css_style.load_from_resource("/org/example/App/assets/songGrade.css");
            Gtk.StyleContext.add_provider_for_display(
                Gdk.Display.get_default(),
                css_style,
                Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION
            );
            thisPage=new SongGradePageUi();
            thisPages=thisPage;
            resultBoxes= thisPage.resultBoxes;
            buatGrade = thisPage.buatGrade;
            center = thisPage.center;
            buatGrade.append(new Widgets.GradeBox(SongGrade.totalScore.to_string()).thisBox);

            resultBoxes.append(new Widgets.ResultBox("Your Answer",StartSong.ans1,StartSong.ans2, StartSong.ans3).thisBox);
            resultBoxes.append(new Widgets.ResultBox("Right Answer",StartSong.lyric1,StartSong.lyric2, StartSong.lyric3).thisBox);
            center.append(new Widgets.ButtonFinish().thisBox);

            
            
            //  var widget = new Widgets.SongForm();
            //  thisPage.append(widget.formregWrapper);
            
            
        }

    }
    [GtkTemplate (ui = "/org/example/App/ui/screens/songGrade.ui")]
    public class SongGradePageUi:Gtk.Box{
        [GtkChild]
       public unowned Gtk.Box resultBoxes; 
       [GtkChild]
       public unowned Gtk.Box buatGrade; 
       [GtkChild]
       public unowned Gtk.Box center; 

        
        
    }
}