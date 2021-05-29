package com.model;

public class CampaginDTO {
	private int campaign_Sid;
	private String advertiser_ID;
	private String ad_section;
	private int ad_estimate;
	private String rq_gender;
	private String category;
	private String campaign_title;
	private String campaign_sub;
	private int rcrtmNmbr;
	private int rq_follower;
	private int application_num;
	
	public CampaginDTO() {
		
	}
	
	
	public CampaginDTO(int campaign_Sid) {
		this.campaign_Sid = campaign_Sid;
	}

	
	
	
	
	public CampaginDTO(int campaign_Sid, String advertiser_ID, String ad_section, int ad_estimate, String rq_gender,
			String category, String campaign_title, String campaign_sub, int rcrtmNmbr, int rq_follower,
			int application_num) {
		this.campaign_Sid = campaign_Sid;
		this.advertiser_ID = advertiser_ID;
		this.ad_section = ad_section;
		this.ad_estimate = ad_estimate;
		this.rq_gender = rq_gender;
		this.category = category;
		this.campaign_title = campaign_title;
		this.campaign_sub = campaign_sub;
		this.rcrtmNmbr = rcrtmNmbr;
		this.rq_follower = rq_follower;
		this.application_num = application_num;
	}





	public int getCampaign_Sid() {
		return campaign_Sid;
	}

	public void setCampaign_Sid(int campaign_Sid) {
		this.campaign_Sid = campaign_Sid;
	}

	public String getAdvertiser_ID() {
		return advertiser_ID;
	}

	public void setAdvertiser_ID(String advertiser_ID) {
		this.advertiser_ID = advertiser_ID;
	}

	public String getAd_section() {
		return ad_section;
	}

	public void setAd_section(String ad_section) {
		this.ad_section = ad_section;
	}

	public int getAd_estimate() {
		return ad_estimate;
	}

	public void setAd_estimate(int ad_estimate) {
		this.ad_estimate = ad_estimate;
	}

	public String getRq_gender() {
		return rq_gender;
	}

	public void setRq_gender(String rq_gender) {
		this.rq_gender = rq_gender;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCampaign_title() {
		return campaign_title;
	}

	public void setCampaign_title(String campaign_title) {
		this.campaign_title = campaign_title;
	}

	public String getCampaign_sub() {
		return campaign_sub;
	}

	public void setCampaign_sub(String campaign_sub) {
		this.campaign_sub = campaign_sub;
	}

	public int getRcrtmNmbr() {
		return rcrtmNmbr;
	}

	public void setRcrtmNmbr(int rcrtmNmbr) {
		this.rcrtmNmbr = rcrtmNmbr;
	}

	public int getRq_follower() {
		return rq_follower;
	}

	public void setRq_follower(int rq_follower) {
		this.rq_follower = rq_follower;
	}

	public int getApplication_num() {
		return application_num;
	}

	public void setApplication_num(int application_num) {
		this.application_num = application_num;
	}


}

