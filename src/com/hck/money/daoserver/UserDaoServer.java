package com.hck.money.daoserver;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hck.money.bean.Jilu;
import com.hck.money.bean.Message;
import com.hck.money.bean.Tg;
import com.hck.money.bean.User;
import com.hck.money.bean.Usermoney;
import com.hck.money.dao.UserDao;
import com.opensymphony.xwork2.ActionContext;

public class UserDaoServer extends HibernateDaoSupport implements UserDao {

	public User SearchUser(String key) {

		String sqlString = "from User u where u.tjm='" + key + "'";
		List<User> users = getHibernateTemplate().find(sqlString);
		if (users != null && !users.isEmpty()) {
			return users.get(0);

		}
		return null;
	}

	public User addUser(User user) {
		System.out.print("adduser: " + user.getMac());
		getHibernateTemplate().save(user);

		return getUser(user.getMac());
	}

	public void deleteUser(long id) {
		getHibernateTemplate().delete(
				getHibernateTemplate().get(User.class, id));
	}

	public User getOneUser(long id) {
		return (User) getHibernateTemplate().get(User.class, id);
	}

	public List<User> getUsers(int page) {
		String sql = "select new User(id,isok,nicheng,tjm) from User u order by u.id desc";
		ActionContext.getContext().getSession().put("userSize", getCount(sql));

		return getList(sql, page, 12);
	}

	public User login(String name, String password) {
		return null;
	}

	public void updateState(long id, int state) {
		User user = (User) getHibernateTemplate().get(User.class, id);
		user.setIsok(state);
		getHibernateTemplate().update(user);
	}

	@SuppressWarnings("unchecked")
	private List<User> getList(String sql, int page, int num) {
		List<User> pList = new ArrayList<User>();
		Query query = null;
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		query = session.createQuery(sql);
		query.setFirstResult((page - 1) * num);
		query.setMaxResults(num);
		pList = query.list();
		super.releaseSession(session);
		return pList;
	}

	private int getCount(String sql) {

		return this.getHibernateTemplate().find(sql).size();
	}

	public boolean updateUser(User user) {
		
		try {
			getHibernateTemplate().update(user);
			return true;
		} catch (Exception e) {
			System.out.print("�޸��û�ʧ��: "+e.toString());
			return false;
		}
		
	}

	public long getUserSize() {

		return getCount("select id from User");
	}

	public List<User> getXiaJia(String jhm, int page) {
		String sqlString = "select new User(id,isok,nicheng,tjm) from User u where u.yqh='"
				+ jhm + "' order by u.id desc";
		ActionContext.getContext().getSession().put("userSize",
				getCount(sqlString));
		return getList(sqlString, page, 12);
	}

	public User isExit(String mac) {

		User user = null;
		user = getUser(mac);
		if (user == null) {
			return null;
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	private User getUser(String mac) {
		System.out.print("getUser mac:" + mac);
		String sqlString = "from User u where u.mac='" + mac + "'";
		List<User> users = new ArrayList<User>();
		users = getHibernateTemplate().find(sqlString);
		if (users.isEmpty()) {
			return null;
		} else {
			System.out.print("getUser:" + users.get(0).getMac());
			return users.get(0);
		}
	}

	@SuppressWarnings("unchecked")
	public boolean isExitJHM(String jhm) {
		String sqlString = "select tjm from User u where u.tjm='" + jhm + "'";
		List<Object> objects = getHibernateTemplate().find(sqlString);
		if (objects != null && !objects.isEmpty()) {
			System.out.print(objects.get(0).toString());
			return true;
		}
		return false;
	}

	public User updateUser(String nc, long uid) {
		User user = (User) getHibernateTemplate().get(User.class, uid);
		if (user != null) {
			user.setNicheng(nc);
			getHibernateTemplate().update(user);
		}

		return user;
	}

	public boolean addYQM(User user, String qym,int jinbi) {
		try {
			boolean b = isExitJHM(qym);
			if (b) {
				addTJ(qym);
				updateUserYQM(user.getId(), qym);
				//addTJMoney(jinbi, qym,user);
				return true;
			}
		} catch (Exception e) {
			return false;
		}
		return false;
	}
	public boolean addTJMoney(long kedoubi,String yqm,User user1) {
		if (yqm != null && !"".equals(yqm)) {
			String sqlString = "from User u where u.tjm='" + yqm+ "'";
			List<User> objects = getHibernateTemplate().find(sqlString);
			if (objects != null) {
				User user= objects.get(0);
				updateMoney(user.getId(), kedoubi, 1);
				
				Tg tg=new Tg();
				tg.setContent("�û�"+user1.getNicheng()+"���������뽱����� "+kedoubi+"��");
				tg.setUserName(user.getNicheng());
				tg.setUid(user.getId());
				tg.setTime(new Timestamp(System.currentTimeMillis()));
				saveTg(tg);
				addJiLu(user.getId(), kedoubi);
				addMessage(user1.getNicheng(), kedoubi, user.getId());
			}
		}
		return false;
	}
	private void addJiLu(long uid,long jf)
	{
		Jilu jilu = new Jilu();
		jilu.setJifeng(jf);
		jilu.setTime(new Timestamp(System.currentTimeMillis()));
		jilu.setType("�ƹ�");
		jilu.setUid(uid);
		getHibernateTemplate().save(jilu);
	}
	private void saveTg(Tg tg)
	{
		getHibernateTemplate().save(tg);
	}
	public boolean updateMoney(long uid, long value,int type) {
		Usermoney usermoney=getUsermoney(uid);
		if (usermoney==null) {
			return false;
		}
		else {
			switch (type) {
			case 1: //��������
				usermoney.setAlljifeng(usermoney.getAlljifeng()+value);
				
				break;
			case 2: //��������
				usermoney.setAllmoney(usermoney.getAllmoney()+value/1000);
				usermoney.setAlljifeng(usermoney.getAlljifeng()-value);
				break;
			default:
				break;
			}
			getHibernateTemplate().update(usermoney);
			return true;
		}
	}
	@SuppressWarnings("unchecked")
	public Usermoney getUsermoney(long uid) {
		List<Usermoney> usermoneys=new ArrayList<Usermoney>();
		String sqlString="from Usermoney u where u.user.id="+uid;
		usermoneys=getHibernateTemplate().find(sqlString);
		if (!usermoneys.isEmpty()) {
			return usermoneys.get(0);
		}
		return null;
	}
	private void updateUserYQM(long uid, String qym) {
        User user=(User) getHibernateTemplate().get(User.class, uid);
        if (user!=null) {
			user.setYqh(qym);
			getHibernateTemplate().update(user);
		}
	}

	public void addTJ(String valu) {
		String sqlString = "from User u where u.tjm='" + valu + "'";
		List<Object> objects = getHibernateTemplate().find(sqlString);
		if (objects != null && !objects.isEmpty()) {
			User user = (User) objects.get(0);
			user.setTj(user.getTj() + 1);
			getHibernateTemplate().update(user);

		}
	}
	public void addMessage(String uName,Long kedoubi,long uid){
		Message message=new Message();
		message.setContent("�û�"+uName+"���������룬���������"+kedoubi+"��");
		message.setState(0);
		message.setTime(new Timestamp(System.currentTimeMillis()));
		message.setUid(uid);
		getHibernateTemplate().save(message);
	}

}