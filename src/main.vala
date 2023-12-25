/* main.vala
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
/*
   Request.getLyric("7Years","Easy");
    Request. getBasicSongList();
    Request.  getTop20();
    Request. reqLogin("risal", "risal");
    Request. reqRegister("risal@gmail.com","risal", "risal");
    Request. reqComparisonScore();
    Request. reqGetPlayedSong();
    Request.  reqUpdatePlayedSong();
print("jaidi\n");


print("%s\n",StartSong.ans1);
var tes=new SongSection();
print("%s\n",StartSong.ans1);
print("%s\n",SongSection.difficulty);
StartSong.ans1="avva";
print("%s\n",StartSong.ans1);
 */
int main (string[] args) {
 var tes1=new AccountData();
 var tes2=new Leaderboard();
 var tes3=new SongGrade();
 var tes4=new SongSection();
 var tes5=new StartSong();

    var app = new Blankgtk.Application ();
   return app.run (args);
  
}
