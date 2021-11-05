package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class sellerVO {
	private int seller_num;
	private String seller_id;
	private String seller_pwd;
	private String seller_phone;
	private String seller_bnum;
}
