package clf.dangdang.entity;

import java.util.Date;

public class Product {
	private Integer id;
	private String picLujing;
	private String name;
	private String autor;
	private double oldprice;
	private double dangdangprice;
	private Date putaway;
	private String bookstatus;
	private Integer mounts;
	private String status;
	private ProductType producttype;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPicLujing() {
		return picLujing;
	}

	public void setPicLujing(String picLujing) {
		this.picLujing = picLujing;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public double getOldprice() {
		return oldprice;
	}

	public void setOldprice(double oldprice) {
		this.oldprice = oldprice;
	}

	public double getDangdangprice() {
		return dangdangprice;
	}

	public void setDangdangprice(double dangdangprice) {
		this.dangdangprice = dangdangprice;
	}

	public Date getPutaway() {
		return putaway;
	}

	public void setPutaway(Date putaway) {
		this.putaway = putaway;
	}

	public String getBookstatus() {
		return bookstatus;
	}

	public void setBookstatus(String bookstatus) {
		this.bookstatus = bookstatus;
	}

	public Integer getMounts() {
		return mounts;
	}

	public void setMounts(Integer mounts) {
		this.mounts = mounts;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public ProductType getProducttype() {
		return producttype;
	}

	public void setProducttype(ProductType producttype) {
		this.producttype = producttype;
	}

}
