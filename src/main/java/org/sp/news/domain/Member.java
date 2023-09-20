package org.sp.news.domain;

import java.util.List;

import lombok.Data;

@Data
public class Member {
	/* member_idx id pass name email agree */
	
	private int member_idx;
	private String id;
	private String pass;
	private String name;
	private String emil;
	private String agree;
	
	// 한명의 회원은 여러개의 취미를 가질 수 있다..
	private int[] hobby_idx;
	
	//private List<Hobby> hobbyList;
}
