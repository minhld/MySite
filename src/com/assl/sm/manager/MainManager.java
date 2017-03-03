package com.assl.sm.manager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.assl.sm.data.ServiceDAO;
import com.assl.sm.utils.Constant;
import com.assl.sm.utils.Utils;

@SuppressWarnings({"deprecation"})
public class MainManager {
	
	private ServiceDAO serviceDAO;
	public void setServiceDAO(ServiceDAO serviceDAO) {
		this.serviceDAO = serviceDAO;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultHandler(HttpServletRequest req, 
						HttpServletResponse resp, Model model){
		return Constant.main.INDEX;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String inputHandler(HttpServletRequest req, 
						HttpServletResponse resp, Model model){
		return Constant.main.INDEX;
	}
	
	@RequestMapping(value = "/service/{serviceId}", method = RequestMethod.GET)
	public void serviceHandler(HttpServletRequest req, HttpServletResponse resp,
					@PathVariable("serviceId") String serviceId, Model model)
															throws IOException {
		resp.setContentType(Constant.main.RESPONSE_CONTENTTYPE);
		resp.setHeader(Constant.main.RESPONSE_HEADER_CACHECONTROL, Constant.main.RESPONSE_HEADER_NOCACHE);
		JSONObject jsonObj = new JSONObject();
		
		try {
			Service foundService = serviceDAO.getService(serviceId);
			if (foundService != null) {
				jsonObj.append("status", "okay");
				jsonObj.append("sjp", foundService.getServiceUrl());
			} else {
				jsonObj.append("status", "no service found");				
			}
		} catch (Exception e) {
			jsonObj.append("status", "exp " + e.getMessage());
		}
		
		resp.getWriter().write(jsonObj.toString());
	}
	
	@RequestMapping("/readXml")
	public void readXmlHandler(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String url = (String) req.getParameter(Constant.main.PARAM_URL);
		// set the output header
		resp.setContentType(Constant.main.RESPONSE_CT_XML);
		resp.setHeader(Constant.main.RESPONSE_HEADER_CACHECONTROL, Constant.main.RESPONSE_HEADER_NOCACHE);
		// read the xml file from URL
		URL urlObj = new URL(url);
		URLConnection conn = urlObj.openConnection();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		// prepare output and print out each line
		PrintWriter w = resp.getWriter();
		String line = Constant.EMPTY;
		while ((line = br.readLine()) != null) {
			w.write(line + Constant.LINEBREAK);
		}
		w.flush();
	}

	@RequestMapping("/readHtml")
	public void readHtmlHandler(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String url = (String) req.getParameter(Constant.main.PARAM_URL);
		// set the output header
		resp.setContentType("text/html");
		resp.setHeader(Constant.main.RESPONSE_HEADER_CACHECONTROL, Constant.main.RESPONSE_HEADER_NOCACHE);
		// read the xml file from URL
		URL urlObj = new URL(url);
		URLConnection conn = urlObj.openConnection();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
		// prepare output and print out each line
		PrintWriter w = resp.getWriter();
		String line = Constant.EMPTY;
		StringBuffer contents = new StringBuffer();
		while ((line = br.readLine()) != null) {
			w.write(line + Constant.LINEBREAK);
			contents.append(line + Constant.LINEBREAK);
		}
		w.flush();
	}
	
	@SuppressWarnings({ "resource" })
	@RequestMapping("/shortenUrl")
	public void submitPostHandler(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String retJsonData = Constant.EMPTY;
		String url = (String) req.getParameter(Constant.main.PARAM_URL);
		// add protocol & name & port if url protocol was not defined
		url = url.toLowerCase();
		if (!url.startsWith(Constant.PROTOCOL_DEFAULT)) {
			url = Utils.getLocalAddress(req) + url;
		}

		List<NameValuePair> valuePairs = new ArrayList<NameValuePair>();
		NameValuePair valPair = new BasicNameValuePair("longUrl", url);
		valuePairs.add(valPair);

		HttpClient httpClient = null;

		try {
			httpClient = new DefaultHttpClient();
			HttpPost httpPost = new HttpPost(Constant.main.URL_GOOGLE_SHORTEN_API);
			httpPost.setEntity(new org.apache.http.entity.StringEntity("{\"longUrl\": \"" + url + "\"}"));
			httpPost.setHeader(Constant.main.REQ_CONTENT_TYPE, Constant.main.REQ_CONTENT_TYPE_JSON);
			HttpResponse response = httpClient.execute(httpPost);

			BufferedReader reader = new BufferedReader(
					new InputStreamReader(response.getEntity().getContent(), Constant.UTF_8));
			StringBuilder builder = new StringBuilder();
			for (String line = null; (line = reader.readLine()) != null;) {
				builder.append(line).append(Constant.LINEBREAK);
			}
			retJsonData = builder.toString();
			resp.getWriter().write(retJsonData);

		} catch (Exception e) {
			throw e;
		} finally {
			// force closing connection
			httpClient.getConnectionManager().shutdown();
		}
	}
	
}
