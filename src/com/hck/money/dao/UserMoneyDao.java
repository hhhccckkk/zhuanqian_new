package com.hck.money.dao;
import java.util.List;
import com.hck.money.bean.Usermoney;
public interface UserMoneyDao {
	public List<Usermoney> getPH();        //  �û�׬Ǯ����
	public List<Usermoney> getTG();         //�ƹ�����
	public List<Usermoney> getPH2(int pge);        //  �û�׬Ǯ����
	public List<Usermoney> getTG2(int pge);  
	public Usermoney getUsermoney(long uid);
	public boolean addUserMoney(Usermoney mUsermoney);
	public boolean updateMoney(Usermoney usermoney);
	public boolean isExit(long uid);
	
	
	
	
	public boolean updateMoney(long uid,long value,int type);
	public boolean addTJMoney(String uName,long size,String yqm);
	
	
	
	
}
