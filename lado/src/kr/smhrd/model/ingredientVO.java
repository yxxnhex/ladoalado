package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class ingredientVO {
	private int item_num;
	private int item_kcal;
	private int item_nate;
	private int item_carbo;
	private int item_sugar;
	private int item_fat;
	private int item_sat;
	private int item_col;
	private int item_protein;
}
