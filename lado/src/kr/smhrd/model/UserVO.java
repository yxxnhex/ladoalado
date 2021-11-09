package kr.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class UserVO {

	private int user_num;
	private String user_pwd;
	private String user_phone;
	private Date user_joindate;
	private String user_id;
	private String user_name;
	private String user_gender;
	private int user_age;

	
}
