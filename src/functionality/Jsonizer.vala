public class Jsonizer{
    //gen -> gobject to json ready
    //parse -> json to gobject ready
    public static string genLogin(string username, string password){
            size_t length;
            var datas=new Json.Array ();
            print("1");
            datas.add_string_element(username);
            datas.add_string_element(password);
            var gen = new Json.Generator();
            var root = new Json.Node(Json.NodeType.ARRAY);

            root.set_array(datas);
            gen.set_root(root);
            string body=gen.to_data(out length);
            return body;
    }

    public static string genRegister(string email,string username, string password){
            size_t length;
            var datas=new Json.Array ();
            print("1");
            datas.add_string_element(email);
            datas.add_string_element(username);
            datas.add_string_element(password);
            var gen = new Json.Generator();
            var root = new Json.Node(Json.NodeType.ARRAY);

            root.set_array(datas);
            gen.set_root(root);
            string body=gen.to_data(out length);
            return body;
    }
    public static string genAskComparison(string lyric1,string lyric2, string lyric3,string ans1,string ans2, string ans3){
        size_t length;
        var mainArray=new Json.Array ();
        var lirik=new Json.Array ();
        print("1ww %s\n",lyric1);
        lirik.add_string_element(lyric1);
        lirik.add_string_element(lyric2);
        lirik.add_string_element(lyric3);
        var user=new Json.Array ();
        print("2ww %s\n",ans1);
        user.add_string_element(ans1);
        user.add_string_element(ans2);
        user.add_string_element(ans3);
        mainArray.add_array_element(lirik);
        mainArray.add_array_element(user);
        var gen = new Json.Generator();
        var root = new Json.Node(Json.NodeType.ARRAY);
    
        root.set_array(mainArray);
        gen.set_root(root);
        string body=gen.to_data(out length);
        print("seharusnya %s\n", body);
        return body;
    }
    public static string genUserId(int userId){
        size_t length;
        var datas=new Json.Array ();
        print("1");
        datas.add_int_element(userId);  
        var gen = new Json.Generator();
        var root = new Json.Node(Json.NodeType.ARRAY);
        root.set_array(datas);
        gen.set_root(root);
        string body=gen.to_data(out length);
        return body;
}
public static  void parseLoginRes(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         AccountData.userId=(int)main_list .get_int_element(0);
         print("parseloginres \n%s\n\n",response);
       
}
public static void parseRegRes(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         AccountData.userId=(int)main_list .get_int_element(0);
         print("parseRegRes \n%s\n\n",response);
        
}
public static  void parseGetPlayedSongRes(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         AccountData.playedSong=(int)main_list .get_int_element(0);
         print("parseGetPlayedSongRes \n%s\n\n",response);
}
public static  void parseGetBasicList(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         int length = (int)main_list.get_length();
         SongSection. songTitle = new GLib.List<string>();
         SongSection. songSinger = new GLib.List<string>();
         SongSection. songGetTitle = new GLib.List<string>();
         for(int i = 0; i <length;i++){
                var tempList=main_list.get_array_element(i);
                SongSection. songTitle.append(tempList.get_string_element(1));
                SongSection. songSinger.append(tempList.get_string_element(2));
                SongSection. songGetTitle.append(tempList.get_string_element(4));
         }
         print("parseGetBasicList \n%s\n\n",response);
        //   SongSection. songTitle=tempSongTitles.copy ();
        //   SongSection. songSinger=tempsongSinger.copy ();
        //   SongSection. songGetTitle= tempGetTitle.copy ();
}
public static  void parseGetTop20(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         int length =(int) main_list.get_length();
         Leaderboard.username = new GLib.List<string>();
         Leaderboard.points = new GLib.List<int>();
         for(int i = 0; i <length;i++){
                var tempList=main_list.get_array_element(i);
                Leaderboard.username.append(tempList.get_string_element(1));
                Leaderboard.points.append((int)tempList.get_int_element(2));
         }
         print("parseGetTop20 \n%s\n\n",response);
        // Leaderboard.username=tempUsername.copy ();
       //  Leaderboard.points=tempPoints.copy ();
}
public static void parseComparisonScore(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         SongGrade.score1=main_list.get_double_element(0);
         SongGrade.score2=main_list.get_double_element(1);
         SongGrade.score3=main_list.get_double_element(2);
         SongGrade.totalScore=(int)((SongGrade.score1+SongGrade.score2+SongGrade.score3)/3*100);
         print("parseComparisonScore \n%s\n\n",response);

}
public static void parseLyric(string response){
        var parser = new Json.Parser();
          parser.load_from_data(response);
         var root = parser.get_root();
         var main_list = root.get_array();
         StartSong.lyric1=   main_list.get_string_element(0); 
         StartSong.lyric2 = main_list.get_string_element(1); 
         StartSong.lyric3  =  main_list.get_string_element(2); 
         print("parseLyric \n%s\n\n",response);
}
}