package site.gamsung.service.camp.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import site.gamsung.service.camp.CampSearchDAO;
import site.gamsung.service.camp.CampSearchService;
import site.gamsung.service.common.Search;
import site.gamsung.service.domain.Camp;
import site.gamsung.service.domain.MainSite;
import site.gamsung.service.domain.SubSite;


@Service("campSearchServiceImpl")
public class CampSearchServiceImpl implements CampSearchService{
	
	@Autowired
	@Qualifier("campSearchDAOImpl")
	private CampSearchDAO campSearchDAO;

	public void setCampSearchDAO(CampSearchDAO campSearchDAO) {
		this.campSearchDAO = campSearchDAO;
	}

	public CampSearchServiceImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public Map<String, Object> listCamp(Search search) throws Exception{
		
		List<Camp> list = campSearchDAO.listCamp(search);
		int totalCount = campSearchDAO.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

	@Override
	public Map<String, Object> getCamp(int campNo) throws Exception{
		
		int viewUpdate = campSearchDAO.updateViewCount(campNo);
		System.out.println("조회수 증가 확인 -> "+viewUpdate);
		
		Camp camp = campSearchDAO.getCamp(campNo);
		List<MainSite> mainSite = campSearchDAO.getMainSite(campNo);
		List<SubSite> subSite = campSearchDAO.getSubSite(campNo);
		
				
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("camp", camp);
		map.put("mainSite", mainSite);
		map.put("subSite", subSite);
		
		return map;
	}

	@Override
	public Map<String, Object> getTopCamp() throws Exception{
		
		Camp topRating = campSearchDAO.getTopRatingCamp();
		Camp topView = campSearchDAO.getTopViewCamp();
		Camp topReservation = campSearchDAO.getTopReservationCamp();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("topRating", topRating);
		map.put("topView", topView);
		map.put("topReservation", topReservation);
		
		return map;
	}

}