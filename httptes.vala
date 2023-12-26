


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
	size_t length;
    Soup.Session session = new Soup.Session ();
//	Soup.Logger logger = new Soup.Logger (Soup.LoggerLogLevel.MINIMAL, -1);	
//	session.add_feature (logger);
	Soup.Message msg = new Soup.Message ("POST", "http://localhost:7100/login");
	var datas=new Json.Array ();
	print("1");
	datas.add_string_element("risaFSl");
	datas.add_string_element("risal");
	var gen = new Json.Generator();
	var root = new Json.Node(Json.NodeType.ARRAY);
	
	root.set_array(datas);
	gen.set_root(root);
	string body=gen.to_data(out length);
	msg.set_request ("application/json",Soup.MemoryUse.COPY, body.data);
	//msg.request_body.append(Soup.MemoryUse.COPY, body.data, length);
	session.send_message (msg);

	string songList=(string)msg.response_body.data;
	int stat=(int) msg.status_code;

		return songList;
	
}


string loginObjJson(string username, string password){
	size_t length;
	var datas=new Json.Array ();
print("1\n");
datas.add_string_element(username);
datas.add_string_element(password);
var gen = new Json.Generator();
var root = new Json.Node(Json.NodeType.ARRAY);

root.set_array(datas);
gen.set_root(root);
string body=gen.to_data(out length);
return body;
}
string askComparisonObjJson(string lyric1,string lyric2, string lyric3,
	string ans1,string ans2, string ans3
){
	size_t length;
	var mainArray=new Json.Array ();
	var lirik=new Json.Array ();
	print("1");
	lirik.add_string_element(lyric1);
	lirik.add_string_element(lyric2);
	lirik.add_string_element(lyric3);
	var user=new Json.Array ();
	print("2");
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
	return body;
}
int main (string[] args) {
	// Create a session:
	print("tes\n");
	string result=askComparisonObjJson("risal", "risal","risal", "risal","risal", "risal");
	if(result.substring(0,1)=="1"){
		print("no\n");
	}else{print(result);}
	
	print("tis");
	return 0;
}
//valac --pkg libsoup-2.4 httptes.vala