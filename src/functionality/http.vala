public class Request{
    //  message.set_request("Content-Type", "application/json");
    public static string getLyric(string title,string difficulty){
        Soup.Session session = new Soup.Session ();
    //	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
    //	session.add_feature (logger);
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getLyric/"+title+"&"+difficulty);
        session.send_message (msg);
    
        string lyricList=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        if(stat==200){
            return lyricList;
        }
        return "1"+lyricList;//indicate that lyric not found uyey
        
    }
    
    public static string getBasicSongList(){
        Soup.Session session = new Soup.Session ();
    //	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
    //	session.add_feature (logger);
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getBasicSongList");
        session.send_message (msg);
    
        string songList=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
    
            return songList;
        
    }
    public static string string getTop20(){
        Soup.Session session = new Soup.Session ();
    //	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
    //	session.add_feature (logger);
        Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/giveTop20");
        session.send_message (msg);
    
        string top20List=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        
            return top20List;//indicate that lyric not found uyey
        
    }
    
}