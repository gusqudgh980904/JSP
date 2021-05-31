package kr.co.sist.vo;

public class CarVO {
	private String model,car_option,car_year,car_img;
	private int price,cc;
	public CarVO() {
	}
	public CarVO(String model, String car_option, String car_year, String car_img, int price, int cc) {
		this.model = model;
		this.car_option = car_option;
		this.car_year = car_year;
		this.car_img = car_img;
		this.price = price;
		this.cc = cc;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCar_option() {
		return car_option;
	}
	public void setCar_option(String car_option) {
		this.car_option = car_option;
	}
	public String getCar_year() {
		return car_year;
	}
	public void setCar_year(String car_year) {
		this.car_year = car_year;
	}
	public String getCar_img() {
		return car_img;
	}
	public void setCar_img(String car_img) {
		this.car_img = car_img;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCc() {
		return cc;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}


}
