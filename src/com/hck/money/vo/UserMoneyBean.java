package com.hck.money.vo;

public class UserMoneyBean {
	private long id;
	private long allMoney;
	private long todayjifeng;
	private long uid;
	private String name;
	private long tg;
	
	public long getTg() {
		return tg;
	}
	public void setTg(long tg) {
		this.tg = tg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(long allMoney) {
		this.allMoney = allMoney;
	}
	
	public long getTodayjifeng() {
		return todayjifeng;
	}
	public void setTodayjifeng(long todayjifeng) {
		this.todayjifeng = todayjifeng;
	}
	public long getTjMoney() {
		return tjMoney;
	}
	public void setTjMoney(long tjMoney) {
		this.tjMoney = tjMoney;
	}
	public long getAllJiFeng() {
		return allJiFeng;
	}
	public void setAllJiFeng(long allJiFeng) {
		this.allJiFeng = allJiFeng;
	}
	private long tjMoney;
	private long allJiFeng;

}
