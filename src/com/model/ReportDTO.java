package com.model;

public class ReportDTO {
	
	String influ_id;
	int num_media;
	int num_follower;
	int num_following;
	int rank_percent;
	int influence_score;
	int real_follower;
	int fake_follower;
	int real_comment;
	int fake_comment;
	int category_dailylife;
	int category_beauty;
	int category_fashion;
	int category_food;
	int tot_like;
	int tot_comment;
	int assesment;
	int communication;
	int inquire;
	int comment_6;
	int comment_12;
	int comment_18;
	int comment_24;
	int comment_30;
	int like_6;
	int like_12;
	int like_18;
	int like_24;
	int like_30;
	int dispos_mon;
	int dispos_tue;
	int dispos_wed;
	int dispos_thu;
	int dispos_fri;
	int dispos_sat;
	int dispos_sun;
	int dispos_first_time;
	int dispos_second_time;
	int dispos_third_time;
	int dispos_fourth_time;
	int dispos_fifth_time;
	int all_avg_like;
	int influ_inde_avg_like;
	int all_avg_like_comment;
	int influ_inde_avg_comment;
	int all_real_avg_comment;
	int influ_inde_real_avg_comment;
	
	public ReportDTO() {
		
	}
	
	public ReportDTO(String influ_id, int num_media, int num_follower, int num_following, int rank_percent, int influence_score,
			int real_follower, int fake_follower, int real_comment, int fake_comment, int category_dailylife,
			int category_beauty, int category_fashion, int category_food, int tot_like, int tot_comment, int assesment,
			int communication, int inquire, int comment_6, int comment_12, int comment_18, int comment_24,
			int comment_30, int like_6, int like_12, int like_18, int like_24, int like_30, int dispos_mon,
			int dispos_tue, int dispos_wed, int dispos_thu, int dispos_fri, int dispos_sat, int dispos_sun,
			int dispos_first_time, int dispos_second_time, int dispos_third_time, int dispos_fourth_time,
			int dispos_fifth_time, int all_avg_like, int influ_inde_avg_like, int all_avg_like_comment,
			int influ_inde_avg_comment, int all_real_avg_comment, int influ_inde_real_avg_comment) {
		super();
		this.influ_id = influ_id;
		this.num_media = num_media;
		this.num_follower = num_follower;
		this.num_following = num_following;
		this.rank_percent = rank_percent;
		this.influence_score = influence_score;
		this.real_follower = real_follower;
		this.fake_follower = fake_follower;
		this.real_comment = real_comment;
		this.fake_comment = fake_comment;
		this.category_dailylife = category_dailylife;
		this.category_beauty = category_beauty;
		this.category_fashion = category_fashion;
		this.category_food = category_food;
		this.tot_like = tot_like;
		this.tot_comment = tot_comment;
		this.assesment = assesment;
		this.communication = communication;
		this.inquire = inquire;
		this.comment_6 = comment_6;
		this.comment_12 = comment_12;
		this.comment_18 = comment_18;
		this.comment_24 = comment_24;
		this.comment_30 = comment_30;
		this.like_6 = like_6;
		this.like_12 = like_12;
		this.like_18 = like_18;
		this.like_24 = like_24;
		this.like_30 = like_30;
		this.dispos_mon = dispos_mon;
		this.dispos_tue = dispos_tue;
		this.dispos_wed = dispos_wed;
		this.dispos_thu = dispos_thu;
		this.dispos_fri = dispos_fri;
		this.dispos_sat = dispos_sat;
		this.dispos_sun = dispos_sun;
		this.dispos_first_time = dispos_first_time;
		this.dispos_second_time = dispos_second_time;
		this.dispos_third_time = dispos_third_time;
		this.dispos_fourth_time = dispos_fourth_time;
		this.dispos_fifth_time = dispos_fifth_time;
		this.all_avg_like = all_avg_like;
		this.influ_inde_avg_like = influ_inde_avg_like;
		this.all_avg_like_comment = all_avg_like_comment;
		this.influ_inde_avg_comment = influ_inde_avg_comment;
		this.all_real_avg_comment = all_real_avg_comment;
		this.influ_inde_real_avg_comment = influ_inde_real_avg_comment;
	}


	public int getRank_percent() {
		return rank_percent;
	}

	public void setRank_percent(int rank_percent) {
		this.rank_percent = rank_percent;
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

	public int getInfluence_score() {
		return influence_score;
	}

	public void setInfluence_score(int influence_score) {
		this.influence_score = influence_score;
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

	public int getReal_comment() {
		return real_comment;
	}

	public void setReal_comment(int real_comment) {
		this.real_comment = real_comment;
	}

	public int getFake_comment() {
		return fake_comment;
	}

	public void setFake_comment(int fake_comment) {
		this.fake_comment = fake_comment;
	}

	public int getCategory_dailylife() {
		return category_dailylife;
	}

	public void setCategory_dailylife(int category_dailylife) {
		this.category_dailylife = category_dailylife;
	}

	public int getCategory_beauty() {
		return category_beauty;
	}

	public void setCategory_beauty(int category_beauty) {
		this.category_beauty = category_beauty;
	}

	public int getCategory_fashion() {
		return category_fashion;
	}

	public void setCategory_fashion(int category_fashion) {
		this.category_fashion = category_fashion;
	}

	public int getCategory_food() {
		return category_food;
	}

	public void setCategory_food(int category_food) {
		this.category_food = category_food;
	}

	public int getTot_like() {
		return tot_like;
	}

	public void setTot_like(int tot_like) {
		this.tot_like = tot_like;
	}

	public int getTot_comment() {
		return tot_comment;
	}

	public void setTot_comment(int tot_comment) {
		this.tot_comment = tot_comment;
	}

	public int getAssesment() {
		return assesment;
	}

	public void setAssesment(int assesment) {
		this.assesment = assesment;
	}

	public int getCommunication() {
		return communication;
	}

	public void setCommunication(int communication) {
		this.communication = communication;
	}

	public int getInquire() {
		return inquire;
	}

	public void setInquire(int inquire) {
		this.inquire = inquire;
	}

	public int getComment_6() {
		return comment_6;
	}

	public void setComment_6(int comment_6) {
		this.comment_6 = comment_6;
	}

	public int getComment_12() {
		return comment_12;
	}

	public void setComment_12(int comment_12) {
		this.comment_12 = comment_12;
	}

	public int getComment_18() {
		return comment_18;
	}

	public void setComment_18(int comment_18) {
		this.comment_18 = comment_18;
	}

	public int getComment_24() {
		return comment_24;
	}

	public void setComment_24(int comment_24) {
		this.comment_24 = comment_24;
	}

	public int getComment_30() {
		return comment_30;
	}

	public void setComment_30(int comment_30) {
		this.comment_30 = comment_30;
	}

	public int getLike_6() {
		return like_6;
	}

	public void setLike_6(int like_6) {
		this.like_6 = like_6;
	}

	public int getLike_12() {
		return like_12;
	}

	public void setLike_12(int like_12) {
		this.like_12 = like_12;
	}

	public int getLike_18() {
		return like_18;
	}

	public void setLike_18(int like_18) {
		this.like_18 = like_18;
	}

	public int getLike_24() {
		return like_24;
	}

	public void setLike_24(int like_24) {
		this.like_24 = like_24;
	}

	public int getLike_30() {
		return like_30;
	}

	public void setLike_30(int like_30) {
		this.like_30 = like_30;
	}

	public int getDispos_mon() {
		return dispos_mon;
	}

	public void setDispos_mon(int dispos_mon) {
		this.dispos_mon = dispos_mon;
	}

	public int getDispos_tue() {
		return dispos_tue;
	}

	public void setDispos_tue(int dispos_tue) {
		this.dispos_tue = dispos_tue;
	}

	public int getDispos_wed() {
		return dispos_wed;
	}

	public void setDispos_wed(int dispos_wed) {
		this.dispos_wed = dispos_wed;
	}

	public int getDispos_thu() {
		return dispos_thu;
	}

	public void setDispos_thu(int dispos_thu) {
		this.dispos_thu = dispos_thu;
	}

	public int getDispos_fri() {
		return dispos_fri;
	}

	public void setDispos_fri(int dispos_fri) {
		this.dispos_fri = dispos_fri;
	}

	public int getDispos_sat() {
		return dispos_sat;
	}

	public void setDispos_sat(int dispos_sat) {
		this.dispos_sat = dispos_sat;
	}

	public int getDispos_sun() {
		return dispos_sun;
	}

	public void setDispos_sun(int dispos_sun) {
		this.dispos_sun = dispos_sun;
	}

	public int getDispos_first_time() {
		return dispos_first_time;
	}

	public void setDispos_first_time(int dispos_first_time) {
		this.dispos_first_time = dispos_first_time;
	}

	public int getDispos_second_time() {
		return dispos_second_time;
	}

	public void setDispos_second_time(int dispos_second_time) {
		this.dispos_second_time = dispos_second_time;
	}

	public int getDispos_third_time() {
		return dispos_third_time;
	}

	public void setDispos_third_time(int dispos_third_time) {
		this.dispos_third_time = dispos_third_time;
	}

	public int getDispos_fourth_time() {
		return dispos_fourth_time;
	}

	public void setDispos_fourth_time(int dispos_fourth_time) {
		this.dispos_fourth_time = dispos_fourth_time;
	}

	public int getDispos_fifth_time() {
		return dispos_fifth_time;
	}

	public void setDispos_fifth_time(int dispos_fifth_time) {
		this.dispos_fifth_time = dispos_fifth_time;
	}

	public int getAll_avg_like() {
		return all_avg_like;
	}

	public void setAll_avg_like(int all_avg_like) {
		this.all_avg_like = all_avg_like;
	}

	public int getInflu_inde_avg_like() {
		return influ_inde_avg_like;
	}

	public void setInflu_inde_avg_like(int influ_inde_avg_like) {
		this.influ_inde_avg_like = influ_inde_avg_like;
	}

	public int getAll_avg_like_comment() {
		return all_avg_like_comment;
	}

	public void setAll_avg_like_comment(int all_avg_like_comment) {
		this.all_avg_like_comment = all_avg_like_comment;
	}

	public int getInflu_inde_avg_comment() {
		return influ_inde_avg_comment;
	}

	public void setInflu_inde_avg_comment(int influ_inde_avg_comment) {
		this.influ_inde_avg_comment = influ_inde_avg_comment;
	}

	public int getAll_real_avg_comment() {
		return all_real_avg_comment;
	}

	public void setAll_real_avg_comment(int all_real_avg_comment) {
		this.all_real_avg_comment = all_real_avg_comment;
	}

	public int getInflu_inde_real_avg_comment() {
		return influ_inde_real_avg_comment;
	}

	public void setInflu_inde_real_avg_comment(int influ_inde_real_avg_comment) {
		this.influ_inde_real_avg_comment = influ_inde_real_avg_comment;
	}
	
	
	
	
	
	
}
