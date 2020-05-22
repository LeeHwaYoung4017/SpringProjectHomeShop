package kr.koreait.vo;

import java.util.Date;

public class StatusVO {
	private int idx;
	private String user_id;
	private String addr;
	private String item_name;  //상품 이름
	private String id_number;  //상품 파일 이름
	private int ea;				// 주문량
	private int status;			//결제 상태
	private int price;
	private String color;
	private Date writedate;
	private String category;
	private String item_size;
	
	
	
	
	public String getItem_size() {
		return item_size;
	}
	public void setItem_size(String item_size) {
		this.item_size = item_size;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "StatusVO [idx=" + idx + ", user_id=" + user_id + ", addr=" + addr + ", item_name=" + item_name
				+ ", id_number=" + id_number + ", ea=" + ea + ", status=" + status + ", price=" + price + ", color="
				+ color + ", writedate=" + writedate + ", category=" + category + ", item_size=" + item_size + "]";
	}
	

	

	
	
	
}
