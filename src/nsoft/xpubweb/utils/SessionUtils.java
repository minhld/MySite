package nsoft.xpubweb.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * this class contains general data which was loaded once and use
 * for many times after that without having to retrieve again from
 * database. here below is the list
 * 	- category list
 * 	- language list
 * 	- info of logged user
 * 	- statistic info of logged user
 * 
 * @author minhld
 *
 */
public class SessionUtils {
		
	/**
	 * register logged user & its statistic info to session variables
	 * 
	 * @param req
	 * @param loginUser
	 */
	public static void setLoginUser(HttpServletRequest req, Object object){
		// save login user information
		req.getSession().setAttribute("", object);
	}
	
	
	
	/**
	 * get logged user info from session variable
	 * 
	 * @param req
	 * @return
	 */
	public static Object getLoginUser(HttpServletRequest req){
		if (req==null){
			return null;
		}
		
		return req.getSession().getAttribute("");
	}
	
	
	/**
	 * this function will be called when user selects to log-out
	 * @param req
	 */
	public static void setLogout(HttpServletRequest req){
		req.getSession().removeAttribute("");
	}

}
