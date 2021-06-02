package day0601;


import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

public class UseJDOMParser {

	
	public static void main(String[] args) {
		//1.XML�� �о���� �� �ִ� Parser����
		SAXBuilder sb=new SAXBuilder();
		
		//2.XML���� �ϱ�
		Document doc;
		
		try {
			//�����θ� ����Ͽ� java�� �������� ��ǻ���� HDD�� �����ϴ� ���� �б�
			//doc=sb.build(new File("C:/dev/workspace/jsp_prj/WebContent/xml0601/book.xml"));
			doc=sb.build(new URL("http://localhost/jsp_prj/xml0601/hello.xml"));
			System.out.println(doc);
			
			//�ֻ��� �θ���(�ٳ��,,rootnode)
			Element rootNode=doc.getRootElement();
			System.out.println("�θ���:"+rootNode);
			
			//�θ����� �ڽĳ��� ���
			List<Element> msgNodes=rootNode.getChildren();
			System.out.println(msgNodes);
			
			//�ڽĳ����� ��ȯ�ϸ鼭 �Ľ�
			for(Element msgNode:msgNodes) {
//				System.out.println(msgNode.getName()+"/"+msgNode.getText());
			if("msg1".equals(msgNode.getName())) {
				System.out.println(msgNode.getText());
			}//if
			
			}//for
			
		} catch (JDOMException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
	}//main

}//class
