package com.spring.book.building.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.book.building.domain.Building;
import com.spring.book.building.domain.BuildingUploadFile;
import com.spring.book.building.repository.IBuildingMapper;
import com.spring.book.commons.paging.Page;
import com.spring.book.reply.repository.IReplyMapper;

@Service
public class BuildingService implements IBuildingService{
	
	@Autowired
	private IBuildingMapper buildingMapper;
	
	@Autowired
	private IReplyMapper replyMapper;
	
	@Override
	public void register(Building building) {
		buildingMapper.register(building);
	}
	
	@Transactional
	@Override
	public void register(Building building,BuildingUploadFile file) {
		buildingMapper.register(building);
		
		if(file!=null && file.getFileName() !=null && !file.getFileName().equals("")) {
			file.setBuildingId(buildingMapper.selectMaxBuildingId());
			buildingMapper.insertFileData(file);
		}
	}
	
	@Override
	public List<Building> selectAll(Page page) {
		return buildingMapper.selectAll(page);
	}
	
	
	@Transactional
	@Override
	public Map<String, Object> selectOne(Integer buildingId,Page paging) {
		
		//컨트롤러에게 전달하는 맵데이터(원본글 데이터+댓글 목록데이터)
		Map<String, Object> returnDatas=new HashMap<>();
		//매퍼에게 전달하는 맵데이터(원본글번호+ 페이지정보)
		Map<String, Object> inputDatas=new HashMap<>();
		
		inputDatas.put("buildingId", buildingId);
		inputDatas.put("page", paging);
		
		returnDatas.put("article",buildingMapper.selectOne(buildingId));
		returnDatas.put("replies", replyMapper.selectAll(inputDatas));
	
		return returnDatas;
	}
	

	@Override
	public void delete(Integer buildingId) {
		buildingMapper.delete(buildingId);
	}

	@Override
	public void update(Building building) {
		buildingMapper.update(building);
		
	}

	@Override
	public Integer countArticles(Page paging) {
		return buildingMapper.countArticles(paging);
	}

   
	@Override
	public BuildingUploadFile getFileByBuildingId(Integer buildingId) throws Exception {
		return buildingMapper.getFileByBuildingId(buildingId);
	}

	@Override
	public BuildingUploadFile getFile(Integer fileId) {
		return buildingMapper.getFile(fileId);
	}



}
