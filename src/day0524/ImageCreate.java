package day0524;

import kr.co.sist.util.img.ImageResize;

public class ImageCreate {
	
	/**
	 * ���ε�� �̹����� ����Ͽ� �ٸ� ũ���� �̹�� �����ϴ� ��
	 * �ܺ� ���̺귯���� ���.(������ jar�� Web Content/WEB-INF/lib ������ �ٿ����� �紨
	 * @param originalName
	 */
	public void createImg(String originalName) {
		ImageResize.resizeImage("C:/dev/workspace/jsp_prj/WebContent/day0524/"+originalName,242,200);
	}//createImg

}//class
