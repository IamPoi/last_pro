package com.model;

public class MatchingDTO {


   
   int campaign_index;
   int campaign_Sid;
   String campaign_title;
   String influ_id;
   String ad_section;
   int match_ck;
   int influ_affect;
   int camp_ck;
 
 
 
   
   public MatchingDTO() {}




public MatchingDTO(int campaign_index, int campaign_Sid, String campaign_title, String influ_id, String ad_section,
		int match_ck, int influ_affect,int camp_ck) {
	super();
	this.campaign_index = campaign_index;
	this.campaign_Sid = campaign_Sid;
	this.campaign_title = campaign_title;
	this.influ_id = influ_id;
	this.ad_section = ad_section;
	this.match_ck = match_ck;
	this.influ_affect = influ_affect;
	this.camp_ck = camp_ck;
}




public int getCamp_ck() {
	return camp_ck;
}




public void setCamp_ck(int camp_ck) {
	this.camp_ck = camp_ck;
}




public int getCampaign_index() {
	return campaign_index;
}




public void setCampaign_index(int campaign_index) {
	this.campaign_index = campaign_index;
}




public int getCampaign_Sid() {
	return campaign_Sid;
}




public void setCampaign_Sid(int campaign_Sid) {
	this.campaign_Sid = campaign_Sid;
}




public String getCampaign_title() {
	return campaign_title;
}




public void setCampaign_title(String campaign_title) {
	this.campaign_title = campaign_title;
}




public String getInflu_id() {
	return influ_id;
}




public void setInflu_id(String influ_id) {
	this.influ_id = influ_id;
}




public String getAd_section() {
	return ad_section;
}




public void setAd_section(String ad_section) {
	this.ad_section = ad_section;
}




public int getMatch_ck() {
	return match_ck;
}




public void setMatch_ck(int match_ck) {
	this.match_ck = match_ck;
}




public int getInflu_affect() {
	return influ_affect;
}




public void setInflu_affect(int influ_affect) {
	this.influ_affect = influ_affect;
}
   
  
   
    
}
