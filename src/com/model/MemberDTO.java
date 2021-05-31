package com.model;

public class MemberDTO {

	private String influ_id;
	private String influ_pw;
	private String influ_name;
	private int influ_age;
	private String influ_gender;
	private String influ_instaAddr;
	private int influ_point;
	private String influ_phone;
	private int influ_targetAge;
	private String influ_targetGender;
	private String influ_category;
	private int login_ck;
	private int influence_score;

	
	
	public MemberDTO() {

	}
	
	public MemberDTO(String influ_id, String influ_pw) {
		this.influ_id = influ_id;
		this.influ_pw = influ_pw;
	}


	public MemberDTO(String influ_id, String influ_pw, String influ_name, int influ_age, String influ_gender,
			String influ_instaAddr, int influ_point, String influ_phone, int influ_targetAge, String influ_targetGender,
			String influ_category, int login_ck, int influence_score) {
		super();
		this.influ_id = influ_id;
		this.influ_pw = influ_pw;
		this.influ_name = influ_name;
		this.influ_age = influ_age;
		this.influ_gender = influ_gender;
		this.influ_instaAddr = influ_instaAddr;
		this.influ_point = influ_point;
		this.influ_phone = influ_phone;
		this.influ_targetAge = influ_targetAge;
		this.influ_targetGender = influ_targetGender;
		this.influ_category = influ_category;
		this.login_ck = login_ck;
		this.influence_score = influence_score;
	}


	
	
	


	public String getInflu_id() {
		return influ_id;
	}



	public void setInflu_id(String influ_id) {
		this.influ_id = influ_id;
	}



	public String getInflu_pw() {
		return influ_pw;
	}



	public void setInflu_pw(String influ_pw) {
		this.influ_pw = influ_pw;
	}



	public String getInflu_name() {
		return influ_name;
	}



	public void setInflu_name(String influ_name) {
		this.influ_name = influ_name;
	}



	public int getInflu_age() {
		return influ_age;
	}



	public void setInflu_age(int influ_age) {
		this.influ_age = influ_age;
	}



	public String getInflu_gender() {
		return influ_gender;
	}



	public void setInflu_gender(String influ_gender) {
		this.influ_gender = influ_gender;
	}



	public String getInflu_instaAddr() {
		return influ_instaAddr;
	}



	public void setInflu_instaAddr(String influ_instaAddr) {
		this.influ_instaAddr = influ_instaAddr;
	}



	public int getInflu_point() {
		return influ_point;
	}



	public void setInflu_point(int influ_point) {
		this.influ_point = influ_point;
	}



	public String getInflu_phone() {
		return influ_phone;
	}



	public void setInflu_phone(String influ_phone) {
		this.influ_phone = influ_phone;
	}



	public int getInflu_targetAge() {
		return influ_targetAge;
	}



	public void setInflu_targetAge(int influ_targetAge) {
		this.influ_targetAge = influ_targetAge;
	}



	public String getInflu_targetGender() {
		return influ_targetGender;
	}



	public void setInflu_targetGender(String influ_targetGender) {
		this.influ_targetGender = influ_targetGender;
	}



	public String getInflu_category() {
		return influ_category;
	}



	public void setInflu_category(String influ_category) {
		this.influ_category = influ_category;
	}

	public int getLogin_ck() {
		return login_ck;
	}

	public void setLogin_ck(int login_ck) {
		this.login_ck = login_ck;
	}

	public int getInfluence_score() {
		return influence_score;
	}

	public void setInfluence_score(int influence_score) {
		this.influence_score = influence_score;
	}









	
	
	
	
}
