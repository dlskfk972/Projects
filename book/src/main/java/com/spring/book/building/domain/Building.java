package com.spring.book.building.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Building {
	
	private Integer buildingId;
	private String buildingName;
	private String category;
	private String buildingAddress;
	private Integer capacity;
	private String fee;
	private String inquiry;
	private MultipartFile file;
	private Integer replyCnt;
	
	private Integer fileId;
	private String fileName;
	private long fileSize;
	private String fileContentType;
	

}
