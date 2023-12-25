/* window.vala
 *
 * Copyright 2023 root
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

 namespace Blankgtk {
    
   [GtkTemplate (ui = "/org/example/App/window.ui")]
  
   public class Window : Gtk.ApplicationWindow {
      public string tistes="terpnaggil";
      public Gtk.Box wow;
   [GtkChild]
     public unowned Gtk.Box home;

       public Window (Gtk.Application app) {
          print("2");
           Object (application: app);
           var css_provider = new Gtk.CssProvider ();
           string resc = "/org/example/App/assets/style.css";
           css_provider.load_from_resource (resc);
           Gtk.StyleContext.add_provider_for_display (Gdk.Display.get_default (), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_USER);
           
       }
       construct{
          print("1");
          var tempScreenMain=new Screens.SongGradePage();
          wow=new Gtk.Box(Gtk.Orientation.VERTICAL,5);
          this.set_child(wow);
          wow.append(tempScreenMain.thisPages);
          Navigator.myHome=wow;
          print("aku\n");

       }

       
   }
}
