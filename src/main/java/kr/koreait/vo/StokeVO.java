package kr.koreait.vo;

public class StokeVO {
   private int idx;
   private String color;
   private String size1;
   private String ea;
   private String category;
   private String item_name;
   
   public StokeVO() {
}
   
public StokeVO(int idx, String color, String size1, String ea, String category, String item_name) {
	super();
	this.idx = idx;
	this.color = color;
	this.size1 = size1;
	this.ea = ea;
	this.category = category;
	this.item_name = item_name;
}
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public String getColor() {
	return color;
}
public void setColor(String color) {
	this.color = color;
}
public String getSize1() {
	return size1;
}
public void setSize1(String size1) {
	this.size1 = size1;
}
public String getEa() {
	return ea;
}
public void setEa(String ea) {
	this.ea = ea;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getItem_name() {
	return item_name;
}
public void setItem_name(String item_name) {
	this.item_name = item_name;
}
@Override
public String toString() {
	return "StokeVO [idx=" + idx + ", color=" + color + ", size1=" + size1 + ", ea=" + ea + ", category=" + category
			+ ", item_name=" + item_name + "]";
}
   
  
   
}