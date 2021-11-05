package kr.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class itemVO {
	private int item_num;
	private String item_name;
	private String item_company;
	private int item_price;
	private float item_gram;
	private int item_serve;
	private int item_time;
	private Date reg_date;
	private int seller_num;
	
}
