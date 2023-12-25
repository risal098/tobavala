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
    public static string genAskComparison(string lyric1,string lyric2, string lyric3,
        string ans1,string ans2, string ans3){
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
public static  int parseLoginRes(string response){
        
}
public static  int parseRegRes(string response){
        
}
}