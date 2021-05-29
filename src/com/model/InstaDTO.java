package com.model;

public class InstaDTO {
	private String influ_id;
	private int num_media;
	private int num_follower;
	private int num_following;
	private String biography;
	
	public InstaDTO(String influ_id, int num_media, int num_follower, int num_following, String biography) {
		this.influ_id = influ_id;
		this.num_media = num_media;
		this.num_follower = num_follower;
		this.num_following = num_following;
		this.biography = biography;
	}	
	public InstaDTO(String influ_id, String biography) {
		this.influ_id = influ_id;
		this.biography = biography;
	}	
	

	public String getInflu_id() {
		return influ_id;
	}

	public void setInflu_id(String influ_id) {
		this.influ_id = influ_id;
	}

	public int getNum_media() {
		return num_media;
	}

	public void setNum_media(int num_media) {
		this.num_media = num_media;
	}

	public int getNum_follower() {
		return num_follower;
	}

	public void setNum_follower(int num_follower) {
		this.num_follower = num_follower;
	}

	public int getNum_following() {
		return num_following;
	}

	public void setNum_following(int num_following) {
		this.num_following = num_following;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}
	
}
