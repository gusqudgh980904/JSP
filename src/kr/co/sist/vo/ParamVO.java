package kr.co.sist.vo;

import java.util.Arrays;

/**
 *	HTML Form Control�� ��(Parameter��)�� �޴� ������ VO
 *	Form Control�� name�Ӽ��� VO�� instance������ �ݵ�� ���� �̸��̾�� �Ѵ�.
 *	parameter�� ���������� ���ڿ������� bean�� ����Ͽ� ���� ������ Web Container�� 
 *	������ ��ȯ�Ͽ� �Է����ش�.
 * @author user
 */
public class ParamVO {
	private String name,mail,gender,addr,domain,info;
	private String[] movie;
	private int age;//container�� String�� int�� ��ȯ�Ͽ� �Է����ش�
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String[] getMovie() {
		return movie;
	}
	public void setMovie(String[] movie) {
		this.movie = movie;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "ParamVO [name=" + name + ", mail=" + mail + ", gender=" + gender + ", addr=" + addr + ", domain="
				+ domain + ", info=" + info + ", movie=" + Arrays.toString(movie) + ", age=" + age + "]";
	}
	
	

}
