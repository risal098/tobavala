


string getLyric(string title,string difficulty){
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





int main (string[] args) {
	// Create a session:
	print("tes\n");
	string result=getLyric ("7Years", "Easywww");
	if(result.substring(0,1)=="1"){
		print("no\n");
	}else{print(result);}
	
	print("tis");
	return 0;
}
//valac --pkg libsoup-2.4 httptes.vala