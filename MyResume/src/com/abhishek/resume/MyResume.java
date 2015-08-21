package com.abhishek.resume;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.logging.Logger;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abhishek.Utiles.Constants;
import com.abhishek.resume.jdo.PMF;
import com.abhishek.resume.jdo.PageLoadUserJDO;
import com.abhishek.resume.jdo.UserInfoJDO;

/**
 * @author ABHIshek
 * 
 */

@Controller
public class MyResume {
	
	private Logger logger =Logger.getLogger(MyResume.class.getName());
			
			

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showResume(HttpServletRequest req, HttpServletResponse res) throws IOException {
		return "resume";
	}
	

	@RequestMapping(value = "/try", method = RequestMethod.GET)
	public String y(HttpServletRequest req, HttpServletResponse res) throws IOException {
		return "try";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpServletResponse res) throws IOException {
		req.getSession().invalidate();
		return "login";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String showlogin(HttpServletRequest req, HttpServletResponse res) throws IOException {
		if(req.getSession().getAttribute("UserLoggedIn") != null) {
			return "admin";
		} else {
			return "login";
		}
		
	}
	
	@RequestMapping(value = "/admin_myresume", method = RequestMethod.POST)
	public String showAdmin(@RequestBody HashMap<String, Object> lData, HttpServletRequest req, HttpServletResponse res) throws IOException {
		System.out.println("username- "+lData.get("username"));
		System.out.println("password- "+lData.get("password"));
		if(lData.get("username").equals("resume@abhi.com") && lData.get("password").equals("1.Venkatishwar")) {
			HttpSession lSession = req.getSession(true);
			lSession.setAttribute("UserLoggedIn", "admin");
			return "admin";
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "/sendMail", method = RequestMethod.POST)
	public void sendMail(@RequestBody HashMap<String, Object> body, HttpServletRequest req, HttpServletResponse res) throws IOException {
		String msgbody 			= Constants.getEmailContentToMe(body.get("name").toString(), body.get("msg").toString(), body.get("email").toString());
		String lReturnMsgbody 	= Constants.getEmailContent(body.get("name").toString(), body.get("msg").toString());
		
		Properties prop = new Properties();
        Session session =Session.getDefaultInstance(prop, null);
        try {
        	
       /**	
        * @To Me
        * First Mail
        */
	        Message msg = new MimeMessage(session);
	        msg.setFrom(new InternetAddress("abhishekkumar.chandra@a-cti.com", "Abhishek"));
	        msg.addRecipient(Message.RecipientType.TO, new InternetAddress ("abhishek.4133@gmail.com"));
	        msg.setSubject("Contacted Retail");
	          
            Multipart mp = new MimeMultipart();
	        MimeBodyPart htmlbody = new MimeBodyPart();
	        htmlbody.setContent(msgbody,"text/html");
	        mp.addBodyPart(htmlbody);
	        msg.setContent(mp);
            Transport.send(msg);
        
        /**
         *  @To Sender
         * 	Second Mail
         */
            Message lMsgReturn = new MimeMessage(session);
            lMsgReturn.setFrom(new InternetAddress("abhishekkumar.chandra@a-cti.com", "Abhishek"));
            lMsgReturn.addRecipient(Message.RecipientType.TO, new InternetAddress ((String) body.get("email")));
            lMsgReturn.setSubject("Contact Response");
            
            Multipart mp2 = new MimeMultipart();
            MimeBodyPart lHtmlbody2 = new MimeBodyPart();
            lHtmlbody2.setContent(lReturnMsgbody,"text/html");
            mp2.addBodyPart(lHtmlbody2);
            lMsgReturn.setContent(mp2);
            Transport.send(lMsgReturn);
            insertEntry(body);   
         } catch(Exception e){
        	e.printStackTrace(); 
         }
		
		res.getWriter().println(body.get("email"));
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertEntry(HashMap<String, Object> pData) throws IOException {
		
		UserInfoJDO lUser = new UserInfoJDO();
		String UniqueId = DigestUtils.md5Hex(pData.get("email").toString().toLowerCase());
		
		lUser.setId(UniqueId);
		lUser.setName((String) pData.get("name"));
		lUser.setEmail((String) pData.get("email"));
		lUser.setMsg((String) pData.get("msg"));
		lUser.setDate(new SimpleDateFormat("dd/MM/yyyy HH:mm",Locale.ENGLISH).format(new Date()));
		
		PersistenceManager PM = PMF.get().getPersistenceManager();
		PM.makePersistent(lUser);
		PM.close();
	}
	
	
	@RequestMapping(value = "/getList", method = RequestMethod.GET)
	public @ResponseBody List<UserInfoJDO> getAllEntry() throws IOException {
		List<UserInfoJDO> lListOfUser= null;
		PersistenceManager PM = PMF.get().getPersistenceManager();
		try {
			Query lQuery = PM.newQuery(UserInfoJDO.class);
			lListOfUser = (List<UserInfoJDO>) lQuery.execute();
			for (int i = 0; i < lListOfUser.size(); i++) {
				System.out.println(lListOfUser.get(i));
			}
			return lListOfUser;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			PM.close();
		}
		return null;
	}
	
	@RequestMapping(value="/updateDbOnPageLoad", method = RequestMethod.POST)
	public @ResponseBody String updateDbOnLoad(@RequestBody HashMap<String, Object> pData) {
		String lIp = (String) pData.get("ip");
		PersistenceManager PM = PMF.get().getPersistenceManager();
		try{
			PageLoadUserJDO lUser = new PageLoadUserJDO();
			String UniqueId = DigestUtils.md5Hex(lIp);
			
			lUser.setId(UniqueId);
			lUser.setId(lIp);
			if(pData.containsKey("latitude") && pData.get("latitude") != null)
				lUser.setLatitude(pData.get("latitude").toString());
			if(pData.containsKey("longitude") && pData.get("longitude") != null)
				lUser.setLongitude(pData.get("longitude").toString());
			lUser.setDate(new SimpleDateFormat("dd/MM/yyyy HH:mm",Locale.ENGLISH).format(new Date()));
			PM.makePersistent(lUser);
		} catch(Exception e) {
			e.printStackTrace();
			return "false";
		} finally {
			PM.close();
		}
		return "true";
	}
	
	
}
