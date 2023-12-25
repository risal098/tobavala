public class StartSong{

    public static string lyric1="";
    public static string lyric2="";
    public static string lyric3="";
    public static string ans1="";
    public static string ans2="";
    public static string ans3="";






    public static string getLyric(string title,string difficulty){
        Soup.Session session = new Soup.Session ();
    //    Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
     //   session.add_feature (logger);

      //  Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getLyric/"+title+"&"+difficulty);
      Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getLyric/"+title+"&"+"Easy");
        session.send_message (msg);
    
        string lyricList=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        if(stat==200){
            return lyricList;
        }
        return "1"+lyricList;//indicate that lyric not found uyey
        
    }
//////////////////////////////////////////////////////////
    public static string sendNaswer(){
        Soup.Session session = new Soup.Session ();
    //    Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
     //   session.add_feature (logger);

      //  Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getLyric/"+title+"&"+difficulty);
      Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100//getComparisonAnswerPoint");
        session.send_message (msg);
    
        string lyricList=(string)msg.response_body.data;
        int stat=(int) msg.status_code;
        if(stat==200){
            return lyricList;
        }
        return "1"+lyricList;//indicate that lyric not found uyey
        
    }
    
}