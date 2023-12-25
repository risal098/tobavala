public class Request{
    //  message.set_request("Content-Type", "application/json");
    public static int getLyric(string title,string difficulty){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getLyric/"+title+"&"+difficulty);
        session.send_message (msg);
        string lyricList=(string)msg.response_body.data;
        Jsonizer.parseLyric(lyricList);
        int stat=(int) msg.status_code;
        return stat;
        
    }
    
    public static int getBasicSongList(){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getBasicSongList");
        session.send_message (msg);
        string songList=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        Jsonizer.parseGetBasicList(songList);
            return stat;
        
    }
    public static int  getTop20(){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/giveTop20");
        session.send_message (msg);
    
        string top20List=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        Jsonizer.parseGetTop20(top20List);
            return stat;//indicate that lyric not found uyey
        
    }
    public static int  reqLogin(string username, string password){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/login");
        string body=Jsonizer.genLogin(username, password);
        msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
        session.send_message (msg);
    
        string response=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        if(stat==200){Jsonizer.parseLoginRes(response);
        }
        
        return stat;//indicate that lyric not found uyey
        
    }
    public static int  reqRegister(string email,string username, string password){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/register");
        string body=Jsonizer.genRegister(email,username,password);
        msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
        session.send_message (msg);
    
        string response=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        if(stat==200){Jsonizer.parseRegRes(response);
        }
            return stat;//indicate that lyric not found uyey
        
    }
    public static int  reqComparisonScore(){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/getComparisonAnswerPoint");

        string body=Jsonizer.genAskComparison(
            StartSong.lyric1,
            StartSong.lyric2,
            StartSong.lyric3,
            StartSong.ans1,
            StartSong.ans2,
            StartSong.ans3
        );
        //  print("\nsebelum :%s :--------<\n",StartSong.ans1);
        //  string body=Jsonizer.genAskComparison(
        //      "tenent",
        //      "tenent",
        //      "tenent",
        //      "tenent",
        //      "tenent",
        //      "tenent"
        //  );
        msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
        print("seandainya-------> %s\n\n",body);
        session.send_message (msg);
        string response=(string)msg.response_body.data;
        Jsonizer. parseComparisonScore(response);
        int stat=(int) msg.status_code;
        return stat;

    }
    public static int  reqGetPlayedSong(){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/getPlayedSong");
        int userId=AccountData.userId;
        string body=Jsonizer.genUserId(userId);
        msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
        session.send_message (msg);
        string response=(string)msg.response_body.data;
        Jsonizer.parseGetPlayedSongRes(response);
        int stat=(int) msg.status_code;
        return stat;
    }
    public static int  reqUpdatePlayedSong(){
        Soup.Session session = new Soup.Session ();
        Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/updatePlayedSong");
        int userId=AccountData.userId;
        string body=Jsonizer.genUserId(userId);
        msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
        session.send_message (msg);
        string response=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        return stat;
    }
}