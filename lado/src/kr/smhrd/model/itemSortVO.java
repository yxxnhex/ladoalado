package kr.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor

public class itemSortVO {
	private int item_num;
	private String item_name;
	private String item_company;
	private int item_price;
	private float item_gram;
	private int item_serve;
	private int item_time;
	private Date reg_date;
	private int seller_num;
	private String item_imgurl;
	private int item_kcal;
	private int item_nate;
	private int item_carbo;
	private int item_sugar;
	private int item_fat;
	private int item_trans;
	private int item_sat;
	private int item_col;
	private int item_protein;
}
