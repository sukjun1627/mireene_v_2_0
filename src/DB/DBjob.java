package DB;

import java.util.ArrayList;

public class DBjob extends DataManager {
	private String query="SELECT user_code FROM User";
	private String query2="SELECT password FROM User";
	private String query3="SELECT user_code FROM User";
	private String query4="SELECT user_code FROM UserCategories";
	private String query5="SELECT category_code FROM UserCategories";
	private String query6="SELECT category_name FROM Categories";
	private String query7="SELECT category_id FROM Categories";
	private String query8="SELECT feed_id FROM Feed";
	private String query9="SELECT user_code FROM Feed";
	private String query10="SELECT categories FROM Feed";
	private String query11="SELECT generated_date FROM Feed";
	private String query12="SELECT modified_date FROM Feed";
	private String query13="SELECT content FROM Feed";
	private String query14="INSERT INTO `User` (`user_e_mail`,`password`,`user_code`) VALUES (";
	private String query15="INSERT INTO `UserCategories` (`user_code`,`category_code`)	VALUES(";
	private String query16="INSERT INTO `Categories` (`category_name`,`category_id`)	VALUES(";
	private String query17="INSERT INTO `Feed` (`feed_id`,`user_code`,`categories`,`generated_date`,`modified_date`,`content`)	VALUES(";
	private String query18="INSERT INTO `FeedCategories` (`feed_id`,`category_code`)	VALUES(";
	
	
	
public void insert_user(String a, String b){
		
		String fquery = new String();
		String id = "'"+a+"'";
		String password= "'"+b+"'";
		fquery=query;
		
		String result = String_query(fquery);
		
		int i = Integer.parseInt(result)+1;
		String user_code=Integer.toString(i);
		user_code="'"+user_code+"'";
		System.out.println(user_code);
		fquery=query14+id+","+password+","+user_code+");";
		System.out.println(fquery);
	
		void_query(fquery);
	}
	public boolean login(String a, String b){
		
		String fquery = new String();
		String id = "'"+a+"'";
		String password= "'"+b+"'";
		fquery=query+" WHERE user_e_mail="+id+"and password="+password+";";
		System.out.println(fquery);
		String result = String_query(fquery);
		if(result.isEmpty())
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	public ArrayList<String> favorite(String a){
		ArrayList<String> list=new ArrayList<String>();
		ArrayList<String> list2=new ArrayList<String>();
		String fquery = new String();
		String user_code = "'"+a+"'";
		fquery=query5+" WHERE user_code="+user_code+"AND favorite=1;";
		String category_code=new String();
		list = list_query(fquery);
		for(int i=0; i<list.size();i++){
			category_code=list.get(i);
			fquery=query6+ " WHERE category_id="+category_code;
			String test= String_query(fquery);
			list2.add(test);
			System.out.println(fquery);
			System.out.println(list2);
		}
		
		
		return list2;
		
	}
}
