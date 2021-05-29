package com.model;

public class influencerInstaDTO {
	private String influ_id;
	private int num_media;
	private int num_follower;
	private int num_following;
	private String biography;
	private int real_follower;
	private int fake_follower;
	private int influ_affect;
	
	public influencerInstaDTO() {}
	
	public influencerInstaDTO(String influ_id, int num_media, int num_follower, int num_following, String biography,
			int real_follower, int fake_follower, int influ_affect) {
		super();
		this.influ_id = influ_id;
		this.num_media = num_media;
		this.num_follower = num_follower;
		this.num_following = num_following;
		this.biography = biography;
		this.real_follower = real_follower;
		this.fake_follower = fake_follower;
		this.influ_affect = influ_affect;
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
	public int getReal_follower() {
		return real_follower;
	}
	public void setReal_follower(int real_follower) {
		this.real_follower = real_follower;
	}
	public int getFake_follower() {
		return fake_follower;
	}
	public void setFake_follower(int fake_follower) {
		this.fake_follower = fake_follower;
	}
	public int getInflu_affect() {
		return influ_affect;
	}
	public void setInflu_affect(int influ_affect) {
		this.influ_affect = influ_affect;
	}
	
	
	
	
	
}
