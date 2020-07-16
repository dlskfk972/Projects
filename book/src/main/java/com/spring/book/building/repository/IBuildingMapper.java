package com.spring.book.building.repository;

import java.util.List;
import java.util.Map;

import com.spring.book.building.domain.Building;
import com.spring.book.building.domain.BuildingUploadFile;
import com.spring.book.commons.paging.Page;

public interface IBuildingMapper {
	
	//게시글 등록 기능
    void register(Building building);
    //게시글이 첨부파일을 등록하는 기능
    void insertFileData(BuildingUploadFile file);
    //최대 게시글번호를 조회하는 기능
    Integer selectMaxBuildingId();
	
    //게시글 목록조회 기능
    List<Building> selectAll(Page paging);
    //특정 게시글 조회 기능
    Building selectOne(Integer buildingId);
    //파일을 DB에서 불러오는 기능
    BuildingUploadFile getFile(Integer fileId);
    
	Integer countArticles(Page paging);//총 게시물 수 조회
	
	void update(Building building);
	
	void delete(Integer buildingId);
	
	///////////////////////////////////////////////////////////////////
	BuildingUploadFile getFileByBuildingId(Integer buildingId);
	
	//댓글 개수 상승, 하락 처리
	void updateReplyCnt(Map<String, Object> datas);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
