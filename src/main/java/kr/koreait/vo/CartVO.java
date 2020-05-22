package kr.koreait.vo;

public class CartVO {
	
	private String color;
	private int idx;
	private String size;
	private int price;
	private int ea;
	private String category;
	private String id_number;
	private String item_name;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	@Override
	public String toString() {
		return "CartVO [color=" + color + ", idx=" + idx + ", size=" + size + ", price=" + price + ", ea=" + ea
				+ ", category=" + category + ", id_number=" + id_number + ", item_name=" + item_name + "]";
	}
	
}
