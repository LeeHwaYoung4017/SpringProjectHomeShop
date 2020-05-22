package kr.koreait.vo;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVO {

   private int idx;
   private String content;
   private Date writeDate;
   private String attached = " ";
   private String name;
   private int ref;
   private int seq;
   private int lev;
   private int goodsidx;
   private int star;
public int getIdx() {
	return idx;
}
public void setIdx(int idx) {
	this.idx = idx;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getWriteDate() {
	return writeDate;
}
public void setWriteDate(Date writeDate) {
	this.writeDate = writeDate;
}
public String getAttached() {
	return attached;
}
public void setAttached(String attached) {
	this.attached = attached;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getRef() {
	return ref;
}
public void setRef(int ref) {
	this.ref = ref;
}
public int getSeq() {
	return seq;
}
public void setSeq(int seq) {
	this.seq = seq;
}
public int getLev() {
	return lev;
}
public void setLev(int lev) {
	this.lev = lev;
}
public int getGoodsidx() {
	return goodsidx;
}
public void setGoodsidx(int goodsidx) {
	this.goodsidx = goodsidx;
}
public int getStar() {
	return star;
}
public void setStar(int star) {
	this.star = star;
}
@Override
public String toString() {
	return "ReviewVO [idx=" + idx + ", content=" + content + ", writeDate=" + writeDate + ", attached=" + attached
			+ ", name=" + name + ", ref=" + ref + ", seq=" + seq + ", lev=" + lev + ", goodsidx=" + goodsidx + ", star="
			+ star + "]";
}
   
   
   
}