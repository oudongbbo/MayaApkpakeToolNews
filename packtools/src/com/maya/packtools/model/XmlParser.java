package com.maya.packtools.model;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.maya.base.utils.LogUtil;

public class XmlParser {

	public static final String NODE_NAME = "node_name"; 
	public static final String NODE_ITEM_NAME = "item_name"; 
	
	public XmlParser() {
		super();
	}

	public static void main(String[] args) throws Exception {
		String path = "/Users/smalli/WorkFile/SJoy/Factory/ApkPack/platform/sdks/maya/use/plugs.txt";
		new XmlParser().getXmlItemValues(path, "android:name");
	}
	
	
	/**
	 * handleResXML,解析res资源的xml文件
	 * @param sourcePath 
	 * @param newXmlProperties 
	 */
	public void handleResXML(String sourcePath, ArrayList<HashMap<String, String>> newXmlProperties){
		
		try {
			
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new File(sourcePath));
			Node resources = doc.getFirstChild();
			//elementsΪresources
			NodeList elements = resources.getChildNodes();
			
			for(int i = 0; i < elements.getLength(); i++){
				Node element = elements.item(i);
				if(element.getNodeType() == Node.ELEMENT_NODE){
					String nodeName = element.getNodeName();
					String nodeItemName = element.getAttributes().getNamedItem("name").getNodeValue();
					if(isExist(newXmlProperties, nodeName, nodeItemName)){
//						System.out.println("--->"+sourcePath+"\n"+nodeName+"_"+nodeItemName);
						element.getParentNode().removeChild(element);
//						System.out.println("--->");					
					}
				}
			}
			
			Transformer t = TransformerFactory.newInstance().newTransformer();
			t.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File(sourcePath));
			t.transform(source, result);
			
		} catch (Exception e) {
			LogUtil.showLog("handleResXML:fail");
			e.printStackTrace();
		}

	}
	
	/**
	 * AndroidManifest.xml处理这里重复的文件
	 * @param sourcePath 
	 * @param newXmlProperties 
	 */
	public void handleAndroidManifest(String sourcePath, ArrayList<HashMap<String, String>> newXmlProperties){
		
		try {
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new File(sourcePath));
			Node resources = doc.getFirstChild();
			//
			NodeList elements = resources.getChildNodes();
			for(int i = 0; i < elements.getLength(); i++){
				Node element = elements.item(i);
				if(element.getNodeType() == Node.ELEMENT_NODE){
//					System.out.println("NodeName:"+element.getNodeName());
					//application
					if ("application".equals(element.getNodeName())) {
						
						NodeList list = element.getChildNodes();
						
						for (int j = 0; j < list.getLength(); j++) {
							Node item = list.item(j);
							if(item.getNodeType() == Node.ELEMENT_NODE){
								String nodeName = item.getNodeName();
								String nodeItemName = item.getAttributes().getNamedItem("android:name").getNodeValue();
								
//								System.out.println("nodeName="+nodeName+"nodeItemName="+nodeItemName);
								
								if(isExist(newXmlProperties, nodeName, nodeItemName)){
//									System.out.println("--->"+sourcePath+"\n"+nodeName+":"+nodeItemName);
									item.getParentNode().removeChild(item);
//									System.out.println("--->");
								}
							}
						}
						
						break;
					}
				}
			}
			
			Transformer t = TransformerFactory.newInstance().newTransformer();
			t.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File(sourcePath));
			t.transform(source, result);
			
		} catch (Exception e) {
			LogUtil.showLog("handleAndroidManifest:fail");
			e.printStackTrace();
		}

	}
	
	
	public ArrayList<HashMap<String, String>> getXmlItemValues(String filePath,String tag){
		
		ArrayList<HashMap<String, String>> nameList = new ArrayList<HashMap<String, String>>();
		
		try {
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new File(filePath));
			NodeList elements;
			
			elements  = doc.getFirstChild().getChildNodes();
			
			HashMap<String, String> map ;
			for(int i = 0; i < elements.getLength(); i++){
				
				Node element = elements.item(i);
				if(element.getNodeType() != Node.ELEMENT_NODE)
					continue ;
				map = new HashMap<String, String>();
				String node_name = element.getNodeName();
				String node_item_name = element.getAttributes().getNamedItem(tag).getNodeValue();
				map.put(NODE_NAME, node_name);
				map.put(NODE_ITEM_NAME, node_item_name);
				
//				System.out.println("--->"+node_name+":"+node_item_name);
				
				nameList.add(map);
			}

		} catch (Exception e) {
			LogUtil.showLog("getXmlItemValues:失败");
			e.printStackTrace();
		}
		
		return nameList;
	}
	
	
	private boolean isNullNodeList(NodeList list){
		for(int i = 0; i < list.getLength(); i++){
			Node temp = list.item(i);
			if(temp.getNodeType() == Node.ELEMENT_NODE)
				return false;
		}
		return true;
	}
	
	private boolean isExist(ArrayList<HashMap<String, String> >content,String nodeName, String nodeItem_Name){
		
		for(HashMap<String, String> c : content){
			if (nodeName.equals(c.get(NODE_NAME)) && nodeItem_Name.equals(c.get(NODE_ITEM_NAME))) {
				return true;
			}
		}
		return false;
	}
	
	
	
}
