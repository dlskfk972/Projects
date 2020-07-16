package com.spring.book.building;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.book.commons.paging.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/spring/mvc-config.xml"})
public class PageAlgorithmTest {
	
	@Test
	public void pagingTest() {
		
		//총 게시물 수를 구하는 테스트
		System.out.println("=======================");
//		System.out.println("# 총 게시물 수: " + mapper.countArticles() + "개");
		System.out.println("=======================");
		
		//끝 페이지 번호 계산 테스트
		Page paging = new Page();
		paging.setPage(1);
		int displayPage = 10;
		
		int endPage = (int)Math.ceil(paging.getPage() / (double)displayPage) * displayPage;
		
		//시작 페이지 번호 계산 테스트
		int beginPage = (endPage - displayPage) + 1;
		System.out.println("시작 페이지 번호: " + beginPage + "번");
		System.out.println("끝 페이지 번호: " + endPage + "번");
		
		//이전 버튼 활성화 여부 계산
		boolean prev = (beginPage == 1) ? false : true;
		System.out.println("이전 버튼 활성?? " + prev);
		
		//다음 버튼 활성화 여부 계산
//		boolean next = (endPage * paging.getCountPerPage() >= mapper.countArticles()) ? false : true;
//		System.out.println("다음 버튼 활성?? " + next);
//		
//		//끝 페이지 재보정
//		if(!next) {
//			endPage = (int)Math.ceil((double)mapper.countArticles() / paging.getCountPerPage());
//		}
//		System.out.println("보정 후 끝 페이지 번호: " + endPage + "번");
	}

	
	

}
