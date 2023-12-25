


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


string getTop20(){
    Soup.Session session = new Soup.Session ();
//	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
//	session.add_feature (logger);
	Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/giveTop20");
	session.send_message (msg);

	string top20List=(string)msg.response_body.data;
	int stat=(int) msg.status_code;
	
		return top20List;//indicate that lyric not found uyey
	
}

string getBasicSongList(){
    Soup.Session session = new Soup.Session ();
//	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
//	session.add_feature (logger);
	Soup.Message msg = new Soup.Message ("GET", "http://localhost:7100/getBasicSongList");
	session.send_message (msg);

	string songList=(string)msg.response_body.data;
	int stat=(int) msg.status_code;

		return songList;
	
}



string login(){
    Soup.Session session = new Soup.Session ();
//	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
//	session.add_feature (logger);
	Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/login");
	string datas="[risal,risal]";
	//msg.request_body = new Soup.MemoryUse.SLICE(datas.data, datas.length);
	//  var myBody=new Soup.MessageBody ();
	//  myBody.set_request_body("application/json",datas.data, datas.length);
	//  msg.request_body=myBody;
	msg.set_request("application/json",Soup.MemoryUse.COPY, datas.data);
	session.send_message (msg);

	string songList=(string)msg.response_body.data;
	int stat=(int) msg.status_code;

		return songList;
	
}



int main (string[] args) {
	// Create a session:
	print("tes\n");
	string result=login();
	if(result.substring(0,1)=="1"){
		print("no\n");
	}else{print(result);}
	
	print("tis");
	return 0;
}
//valac --pkg libsoup-2.4 httptes.vala