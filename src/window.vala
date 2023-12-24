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
            
            
        }
        construct{
           print("1");
           var tempScreenMain=new Screens.RegisterPage();
           wow=new Gtk.Box(Gtk.Orientation.HORIZONTAL,5);
           this.set_child(wow);
           wow.append(tempScreenMain.thisPage);
           Navigator.myHome=wow;
           print("aku\n");

        }

        
    }
}
