package kr.co.park.user.model;

/*
CREATE TABLE user(
		user_id varchar(30) primary key,
	    user_pw varchar(30) not null,
	    user_name varchar(30),
	    user_email varchar(30),
	    user_address varchar(80)
	);
*/

public class UserVO {

	private String id;
	private String pw;
	private String name;
	private String email;
	private String address;
	
	public UserVO() {}

	
	
	public UserVO(String id, String pw, String name, String email, String address) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.address = address;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	
}
