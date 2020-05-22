package kr.koreait.vo;

public class StokeVO {
   private int idx;
   private String color;
   private String size1;
   private String ea;
   
   public StokeVO() {
      // TODO Auto-generated constructor stub
   }
   public StokeVO(int idx, String color, String size1, String ea) {
      this.idx = idx;
      this.color = color;
      this.size1 = size1;
      this.ea = ea;
   }

   public String getSize1() {
      return size1;
   }
   public void setSize1(String size1) {
      this.size1 = size1;
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

   public String getEa() {
      return ea;
   }
   public void setEa(String ea) {
      this.ea = ea;
   }
   
   @Override
   public String toString() {
      return "StokeVO [idx=" + idx + ", color=" + color + ", size1=" + size1 + ", ea=" + ea + "]";
   }
   
   
}