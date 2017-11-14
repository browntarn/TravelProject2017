package egovframework.travel.accomm.service;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;
import egovframework.travel.common.Api.ApiCommon;

@Service("accomm001Service")
public class Accomm001ServiceImpl implements Accomm001Service{

	@Override
	public List<Map<String, Object>> selectAccomm001List(Map<String, Object> map) throws Exception {
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?ServiceKey=4lBgY9cDqJIpN1Z8iUbivpOCw0Gpz9wv89knT5YvKw0%2Fez7p%2FnHffV0EHiD6tGFirL6fw%2BQV20F1wM9KdokJxg%3D%3D&areaCode=&sigunguCode=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=12&pageNo=1";
		ApiCommon apiCommon = new ApiCommon();
		return apiCommon.getXmlParsing(url);
	}
}
