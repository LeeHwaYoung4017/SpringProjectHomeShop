package kr.koreait.vo;

public class Resize {
	String color;
	int idx;
	String size;
	
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
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
	
	public Resize() {
		// TODO Auto-generated constructor stub
	}
	
	public Resize(String color, int idx) {
		this.color = color;
		this.idx = idx;
	}
	@Override
	public String toString() {
		return "Resize [color=" + color + ", idx=" + idx + ", size=" + size + "]";
	}
	
	
}
