package com.spring.book.building.service;

import java.util.List;
import java.util.Map;

import com.mysql.cj.jdbc.result.UpdatableResultSet;
import com.spring.book.building.domain.Building;
import com.spring.book.building.domain.BuildingUploadFile;
import com.spring.book.commons.paging.Page;

public interface IBuildingService {
	
	
    void register(Building building);
    void register(Building building,BuildingUploadFile file);
	
    List<Building> selectAll(Page paging);
    Map<String, Object> selectOne(Integer buildingId,Page paging);
    //Map<String, Object> selectOne(Integer buildingId);
    //List<String> getFileNames(Integer buildingId);
    BuildingUploadFile getFile(Integer fileId);
    
	Integer countArticles(Page paging);
	
	void update(Building building);
	
	void delete(Integer buildingId);

    BuildingUploadFile getFileByBuildingId(Integer buildingId) throws Exception;
	

}
