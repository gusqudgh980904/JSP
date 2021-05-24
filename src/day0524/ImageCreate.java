package day0524;

import kr.co.sist.util.img.ImageResize;

public class ImageCreate {
	
	/**
	 * 업로드된 이미지를 사용하여 다른 크기의 이미즈를 생성하는 일
	 * 외부 라이브러리를 사용.(배포된 jar를 Web Content/WEB-INF/lib 폴더에 붙여놓고 사뇽
	 * @param originalName
	 */
	public void createImg(String originalName) {
		ImageResize.resizeImage("C:/dev/workspace/jsp_prj/WebContent/day0524/"+originalName,242,200);
	}//createImg

}//class
