package dto;

public class CL_menuGuideDTO {

	private String date;
	private String price;
	private String rice;
	private String soup;
	private String side1;
	private String side2;
	private String side3;
	private String side4;

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRice() {
		return rice;
	}
	public void setRice(String rice) {
		this.rice = rice;
	}
	public String getSoup() {
		return soup;
	}
	public void setSoup(String soup) {
		this.soup = soup;
	}
	public String getSide1() {
		return side1;
	}
	public void setSide1(String side1) {
		this.side1 = side1;
	}
	public String getSide2() {
		return side2;
	}
	public void setSide2(String side2) {
		this.side2 = side2;
	}
	public String getSide3() {
		return side3;
	}
	public void setSide3(String side3) {
		this.side3 = side3;
	}
	public String getSide4() {
		return side4;
	}
	public void setSide4(String side4) {
		this.side4 = side4;
	}
	@Override
	public String toString() {
		return "CL_menuGuideDTO [date=" + date + ", price=" + price + ", rice=" + rice + ", soup=" + soup + ", side1="
				+ side1 + ", side2=" + side2 + ", side3=" + side3 + ", side4=" + side4 + "]";
	}
}
