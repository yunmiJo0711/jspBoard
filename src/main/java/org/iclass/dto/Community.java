package org.iclass.dto;

import java.sql.Date;
import java.sql.Timestamp;  // 오라클에 가서 Timestamp 쓸 때가 있지만 여기서는 Date 로 써도 된다. 둘다 가능하긴 함.

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Community {
	//필드,객체의 프로퍼티
	private long idx;
	private String writer;
	private String title;
	private String content;
	private int readCount;
	private Date createdAt;  // import java.sql.Timestamp 타입도 가능함. 
	private String ip;
	private String commentCount;

}
