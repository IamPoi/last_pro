package com.model;

public class CampaginDTO {
	private int campaign_Sid;
	private String adver_mbr;
	private String ad_section;
	private int ad_estimate;
	private int rq_follower;
	private String rq_gender;
	private String category;
	private String campaign_title;
	private String campaign_sub;
	private int rcrtmNmbr;
	private int application_num;
	private String campaign_start;
	private String campaign_end;
	private int campaign_status;
	
	public CampaginDTO() {
		
	}
	
	
	public CampaginDTO(int campaign_Sid) {
		this.campaign_Sid = campaign_Sid;
	}




	public CampaginDTO(int campaign_Sid, String adver_mbr, String ad_section, int ad_estimate, int rq_follower,
			String rq_gender, String category, String campaign_title, String campaign_sub, int rcrtmNmbr,
			int application_num, String campaign_start, String campaign_end, int campaign_status) {
		super();
		this.campaign_Sid = campaign_Sid;
		this.adver_mbr = adver_mbr;
		this.ad_section = ad_section;
		this.ad_estimate = ad_estimate;
		this.rq_follower = rq_follower;
		this.rq_gender = rq_gender;
		this.category = category;
		this.campaign_title = campaign_title;
		this.campaign_sub = campaign_sub;
		this.rcrtmNmbr = rcrtmNmbr;
		this.application_num = application_num;
		this.campaign_start = campaign_start;
		this.campaign_end = campaign_end;
		this.campaign_status = campaign_status;
	}


	public int getCampaign_Sid() {
		return campaign_Sid;
	}


	public void setCampaign_Sid(int campaign_Sid) {
		this.campaign_Sid = campaign_Sid;
	}


	public String getAdver_mbr() {
		return adver_mbr;
	}


	public void setAdver_mbr(String adver_mbr) {
		this.adver_mbr = adver_mbr;
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


	public int getRq_follower() {
		return rq_follower;
	}


	public void setRq_follower(int rq_follower) {
		this.rq_follower = rq_follower;
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


	public int getApplication_num() {
		return application_num;
	}


	public void setApplication_num(int application_num) {
		this.application_num = application_num;
	}


	public String getCampaign_start() {
		return campaign_start;
	}


	public void setCampaign_start(String campaign_start) {
		this.campaign_start = campaign_start;
	}


	public String getCampaign_end() {
		return campaign_end;
	}


	public void setCampaign_end(String campaign_end) {
		this.campaign_end = campaign_end;
	}


	public int getCampaign_status() {
		return campaign_status;
	}


	public void setCampaign_status(int campaign_status) {
		this.campaign_status = campaign_status;
	}



	
	
}

