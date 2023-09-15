package org.sp.news.domain;

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
}
