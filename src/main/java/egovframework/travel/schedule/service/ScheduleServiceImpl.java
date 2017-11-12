package egovframework.travel.schedule.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("scheduleService")
public class ScheduleServiceImpl extends EgovAbstractServiceImpl implements ScheduleService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ScheduleServiceImpl.class);

	@Override
	public List getScheduleList() throws Exception {
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchStay?serviceKey=JZluWzN7N9c08lN8Xa4k4MEWUbNY0aC%2B0UNowlQfK9d0hzoPZQFpLg7KRSnmaACu47KhBTl48XXGOVWap8AWrQ%3D%3D&numOfRows=10&pageSize=10&pageNo=1&startPage=1&MobileOS=ETC&MobileApp=AppTest&arrange=A&listYN=Y&areaCode=39";
		List resultList = (List) getXmlFestival(url);
		
		return resultList;
	}

	
	public static List getXmlFestival(String url){
		List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			System.out.println("\n##### 정보조회 ##########################");
			
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(url);
			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("item");
			
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				System.out.println(temp + " ----------------------------------------------");
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					resultMap = new HashMap<String, Object>();
					for (int i = 0; i < eElement.getChildNodes().getLength() ; i++ ) {
						if(!eElement.getChildNodes().item(i).getNodeName().equals("#text")){
							System.out.println(eElement.getChildNodes().item(i).getNodeName() + " : " + getTagValue(eElement.getChildNodes().item(i).getNodeName(), eElement));
							resultMap.put(eElement.getChildNodes().item(i).getNodeName(), getTagValue(eElement.getChildNodes().item(i).getNodeName(), eElement));
						}
					}
				}
				resultList.add(temp, resultMap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultList;
	}

	private static String getTagValue(String sTag, Element eElement) {
		String returnVal = "";
		if (eElement.getElementsByTagName(sTag).item(0) != null) {
			NodeList nlList = eElement.getElementsByTagName(sTag).item(0).getChildNodes();
			Node nValue = (Node) nlList.item(0);
			returnVal= nValue.getNodeValue();
		}
		return returnVal;
	}

}
