package com.hck.money.util;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartTimer implements ServletContextListener  {

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	 
	/**  private Timer timer = null;  
	  public void contextInitialized(ServletContextEvent event)  
	  
	  { 
		  System.out.println("�����ɹ�");
		  Calendar calendar = Calendar.getInstance();
      calendar.set(Calendar.HOUR_OF_DAY, 14); // ����ʱ
      calendar.set(Calendar.MINUTE, 33);       // ���Ʒ�
      calendar.set(Calendar.SECOND, 0);       // ������

      Date time = calendar.getTime();         // �ó�ִ�������ʱ��,�˴�Ϊ�����12��00��00

      Timer timer = new Timer();
      
      timer.scheduleAtFixedRate(new TimerTask() {
          public void run() {
              System.out.println("��ʱ����ʼ��ʼ��ʼ");
          }
      }, time, 1000 * 60 );// �����趨����ʱÿ��̶�ִ��
	  }

	  public void contextDestroyed(ServletContextEvent event)  
	  {//������رռ��������������������ٶ�ʱ����  
	      timer.cancel();  
	     
	  }  

	**/


}
