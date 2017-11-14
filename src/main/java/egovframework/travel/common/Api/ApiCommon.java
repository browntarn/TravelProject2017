package egovframework.travel.common.Api;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ApiCommon {
	Logger log = Logger.getLogger(this.getClass());
	/**
	 * @param XML Parsing 주소 데이터 출력
	 * @return
	 */
	public List<Map<String, Object>> getXmlParsing(String paramUrl){
		
		List<Map<String, Object>> resultList = new ArrayList<Map<String,Object>>();
		Map<String, Object> resultMap = null;
		
		try {
			URL url = new URL(paramUrl);
			URLConnection connection = url.openConnection();
			
			Document doc = parseXML(connection.getInputStream());
			NodeList descNodes = doc.getElementsByTagName("item");
			
			log.info("######### 숙박정보 목록조회 시작 #########");
			for(int i=0; i<descNodes.getLength(); i++){
				resultMap = new HashMap<String, Object>();
				log.info("데이터목록 ["+i+"] ");
				for(Node node = descNodes.item(i).getFirstChild(); node!=null; node=node.getNextSibling()){
					resultMap.put(node.getNodeName(), node.getTextContent());
					log.info("key : "+node.getNodeName()+"\t value : "+node.getTextContent());
				}
				resultList.add(resultMap);
			}
			log.info("######### 숙박정보 목록조회 종료#########");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultList;
	}
	
	public Document parseXML(InputStream stream){
		
		DocumentBuilderFactory objDocumentBuilderFactory = null;
		DocumentBuilder objDocumentBuilder = null;
		org.w3c.dom.Document doc = null;
		
		try {
			objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
			objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();
			
			doc = objDocumentBuilder.parse(stream);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return doc;
	}
	
}
