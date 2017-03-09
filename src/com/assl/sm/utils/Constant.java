package com.assl.sm.utils;

import java.text.SimpleDateFormat;

public class Constant {
	public static final String EMPTY = "";
	public static final String SINGE_SPACE = " ";
	public static final String COMMA = ",";
	public static final String UNDERSCORE = "_";
	public static final String PERCENT = "%";
	public static final String APOSTROPHY = "'";
	public static final String REPLACE_MARK = "%s";
	public static final String SEMICOLON = ";";
	public static final String VERTICAL_BAR = "\\|";
	public static final String COLON = ":";
	public static final String DOT = ".";
	public static final String UTF_8 = "UTF-8";
	public static final String LINEBREAK = "\r\n";
	public static final String OPEN_CURLY_BRACKET = "{";
	public static final String CLOSE_CURLY_BRACKET = "}";
	public static final SimpleDateFormat STD_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

	public static final String PROTOCOL_DEFAULT = "http";
	public static final String PROTOCOL_SECURED_HTTP = "https";
	public static final String PROTOCOL_DEFAULT_PATH = "http://";

	public static final String ROOT_PATH = "./";
	public static final String PATH_SPLITTER = "/";
	public static final String NEW_LINE = System.getProperty("line.separator");

	public static class main {
		public static final String RESPONSE_CONTENTTYPE = "text/x-json;charset=UTF-8";
		public static final String RESPONSE_CT_XML = "text/xml;charset=utf-8";
		public static final String RESPONSE_HEADER_CACHECONTROL = "Cache-Control";
		public static final String RESPONSE_PRAGMA_CACHECONTROL = "Pragma";
		public static final String RESPONSE_HEADER_NOCACHE = "no-cache";
		public static final String INDEX = "index";
		public static final String BLOGS = "blogs";
		public static final String POST = "post";
		public static final String RESULT = "result";
		public static final String SERVICE = "service";

		public static final String PARAM_URL = "url";

		public static final String RESPONSE_STATUS = "status";
		public static final String RESPONSE_STATUS_OK = "ok";
		public static final String RESPONSE_STATUS_FAILED = "failed";
		public static final String RESPONSE_MESSAGE = "message";
		public static final String RESPONSE_EXCEPTION = "exception";

		public static final String RESPONSE_ONLINE = "on";
		public static final String RESPONSE_OFFLINE = "off";

		public static final int RESPONSE_CODE_OK = 0;
		public static final int RESPONSE_CODE_BAD_CRED = 1;

		public static final int HTTP_RESP_OK = 200;
		public static final int HTTP_RESP_FAILED = 404;

		public static final String URL_GOOGLE_SHORTEN_API = "https://www.googleapis.com/urlshortener/v1/url";
		public static final String REQ_CONTENT_TYPE = "Content-type";
		public static final String REQ_CONTENT_TYPE_JSON = "application/json";
	}

}