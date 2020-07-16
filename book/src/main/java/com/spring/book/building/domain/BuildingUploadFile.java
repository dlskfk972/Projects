package com.spring.book.building.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(exclude="fileData")
@Data
public class BuildingUploadFile {
	
	private Integer fileId;
	private Integer buildingId;
	private String fileName;
	private long fileSize;
	private String fileContentType;
	private byte[] fileData;
	
}
