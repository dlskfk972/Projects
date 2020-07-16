package com.spring.book.building;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.book.building.domain.Building;
import com.spring.book.building.repository.IBuildingMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/spring/mvc-config.xml"})
public class BuildingMapperTest {
	
	@Autowired
	private IBuildingMapper mapper;
	
	@Test
	public void register() {
		Building building=new Building();
		building.setBuildingName("테크노파크22333");
		building.setCategory("강당");
		building.setBuildingAddress("경기도 용인시 죽전1동 죽전테크노밸리");
		building.setCapacity(5);
		building.setFee("1인당 10000원");
		building.setInquiry("이용문의 5555-5541-111");
		

		mapper.register(building);
		System.out.println("등록!");
		
	}
	
	@Test
	public void selectOneTest() {
		Building building=mapper.selectOne(1);
		System.out.println("====================");
		System.out.println(building);
		System.out.println("====================");
	}
	
	
	
	

}
