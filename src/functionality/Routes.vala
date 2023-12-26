public abstract class Page{
  public abstract Gtk.Box _thisPage{ get; set; }
}
public class Navigator{
    public static Gtk.Box myHome;
    public static Blankgtk.Window myWindow;
    public static Gtk.Box currentPage;
  
    public  static void replacement(Page newPage){
      currentPage = newPage._thisPage;
    //  print("tese");
      Gtk.Widget *oldNav=Navigator.myHome.get_last_child();
     // print("tisis\n");
      Navigator.myHome.append(currentPage);
    //  print("pipis");
      Navigator.myHome.remove(oldNav);

       

    
  }
}
















/*
  public  static void replace(Gtk.Box newPage){
        currentPage = newPage;
      //  print("tese");
        Gtk.Widget *oldNav=Navigator.myHome.get_last_child();
       // print("tisis\n");
        Navigator.myHome.append(newPage);
      //  print("pipis");
        Navigator.myHome.remove(oldNav);

         
  
      
    }
 */