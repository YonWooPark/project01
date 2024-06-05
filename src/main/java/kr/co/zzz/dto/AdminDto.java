package kr.co.zzz.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class AdminDto {
	private String a_id;
	private String a_pw;
	private String a_name;
	private String a_phone;
	private int a_approval;
	
}
