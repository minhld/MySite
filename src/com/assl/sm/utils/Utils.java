package com.assl.sm.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@SuppressWarnings({ "deprecation" })
public class Utils {
	private static ConfigObject configObject;

	public static ConfigObject getConfigObject() {
		return configObject;
	}

	public static void setConfigObject(ConfigObject configObject) {
		Utils.configObject = configObject;
	}

	/**
	 * convert a full path URL to short URL supported by Google Shorten API
	 * 
	 * @param originalUrlPath
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings({})
	public static String shortenUrl(String originalUrlPath) throws Exception {
		String url = originalUrlPath.toLowerCase();

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
			JSONObject jsonRes = new JSONObject(builder.toString());
			return (String) jsonRes.get("id");

		} catch (Exception e) {
			throw e;
		} finally {
			// force closing connection
			if (httpClient != null) {
				httpClient.getConnectionManager().shutdown();
			}
		}
	}

	public static String getDateByLocale(String lang, Date dateTime) {
		Locale locale = new Locale(lang);
		DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT, locale);
		return df.format(dateTime);
	}

	/**
	 * read file from URL in binary data
	 * 
	 * @param fileUrl
	 * @return
	 * @throws IOException
	 */
	public static byte[] readUrlFile(String fileUrl) throws IOException {
		URL url = new URL(fileUrl);
		InputStream urlIs = url.openStream();
		ByteArrayOutputStream output = null;

		byte[] buffer = new byte[1024];
		int bytesRead;
		try {
			output = new ByteArrayOutputStream();
			while ((bytesRead = urlIs.read(buffer)) != -1) {
				output.write(buffer, 0, bytesRead);
			}
			return output.toByteArray();
		} catch (IOException e) {
			throw e;
		} finally {
			if (urlIs != null)
				urlIs.close();
			if (output != null)
				output.close();
		}
	}

	/**
	 * read file in binary data from local path
	 * 
	 * @param filePath
	 * @return
	 * @throws Exception
	 */
	public static byte[] readFile(String filePath) throws Exception {
		InputStream is = null;
		ByteArrayOutputStream output = null;
		try {
			is = new FileInputStream(filePath);
			byte[] buffer = new byte[1024];
			int bytesRead;
			output = new ByteArrayOutputStream();
			while ((bytesRead = is.read(buffer)) != -1) {
				output.write(buffer, 0, bytesRead);
			}

			return output.toByteArray();
		} catch (Exception e) {
			throw e;
		} finally {
			if (is != null)
				is.close();
			if (output != null)
				output.close();
		}
	}

	/**
	 * delete a whole directory or one single file
	 * 
	 * @param file
	 * @throws IOException
	 */
	public static void delete(File file) throws IOException {
		if (file.isDirectory()) {
			if (file.list().length == 0) {
				file.delete();
			} else {
				String files[] = file.list();
				for (String temp : files) {
					File fileDelete = new File(file, temp);
					delete(fileDelete);
				}

				if (file.list().length == 0) {
					file.delete();
				}
			}
		} else {
			file.delete();
		}
	}

	/**
	 * copy a file from source path to destination
	 * 
	 * @param sourceFile
	 * @param destPath
	 * @throws IOException
	 */
	public static void copyFile(String sourcePath, String destPath) throws IOException {
		Path source = Paths.get(sourcePath);
		Path dest = Paths.get(destPath);
		Files.copy(source, dest, StandardCopyOption.REPLACE_EXISTING);
	}

	/**
	 * copy a file from source path to destination path
	 * 
	 * @param sourceFile
	 * @param destFile
	 * @throws IOException
	 */
	public static void copyFile(File sourceFile, File destFile) throws IOException {
		Path source = Paths.get(sourceFile.getAbsolutePath());
		Path dest = Paths.get(destFile.getAbsolutePath());
		Files.copy(source, dest, StandardCopyOption.REPLACE_EXISTING);
	}

	/**
	 * copy a trunk of data and save to another file
	 * 
	 * @param data
	 * @param filePath
	 * @throws Exception
	 */
	public static void copyFile(byte[] data, String filePath) throws Exception {
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(filePath);
			fos.write(data);
			fos.flush();
		} catch (Exception e) {
			throw e;
		} finally {
			if (fos != null)
				fos.close();
		}
	}

	public static String bytes2String(byte[] bytes) {
		StringBuffer stringBuffer = new StringBuffer();
		for (int i = 0; i < bytes.length; i++) {
			stringBuffer.append((char) bytes[i]);
		}
		return stringBuffer.toString();
	}

	public static String getTimestamp() {
		long range = 9999999L;
		Random r = new Random();
		long random = (long) (r.nextDouble() * range); // prevent generating
														// timestamp in loop
		return (System.currentTimeMillis() + random) + "";
	}

	// join array to string
	public static String combineStr(String[] s, String glue) {
		int k = s.length;
		if (k == 0)
			return null;
		StringBuilder out = new StringBuilder();
		out.append(s[0]);
		for (int x = 1; x < k; ++x)
			if (s[x] != null && !s[x].equalsIgnoreCase(Constant.EMPTY))
				out.append(glue).append(s[x]);
		return out.toString();
	}

	public static String getRandomUUID() {
		return UUID.randomUUID().toString();
	}

	/**
	 * read a file from File object and return its binary stream data
	 * 
	 * @param is
	 * @return
	 */
	public static byte[] getByteFromFile(File file) throws Exception {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		byte[] buff = new byte[1024];
		FileInputStream fis = null;

		fis = new FileInputStream(file);
		int nRead = 0;
		while ((nRead = fis.read(buff)) != -1) {
			bos.write(buff, 0, nRead);
		}

		fis.close();
		bos.close();

		return bos.toByteArray();

	}

	/**
	 * read a file on hard-disk and return its binary stream data
	 * 
	 * @param is
	 * @return
	 */
	public static byte[] getByteFromFile(String file) throws Exception {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		byte[] buff = new byte[1024];
		FileInputStream fis = null;

		fis = new FileInputStream(file);
		int nRead = 0;
		while ((nRead = fis.read(buff)) != -1) {
			bos.write(buff, 0, nRead);
		}

		fis.close();
		bos.close();

		return bos.toByteArray();
	}

	/**
	 * read an input stream and return its binary stream data
	 * 
	 * @param is
	 * @return
	 */
	public static byte[] getByteFromInputStream(InputStream is) {
		DataInputStream dis = null;
		// System.out.println(Runtime.getRuntime().freeMemory());
		try {
			byte[] byteData = new byte[is.available()]; // should refer function
														// readFile
			dis = new DataInputStream(is);
			// dis.readFully(byteData);
			dis.read(byteData);
			return byteData;
		} catch (Exception e) {
			return new byte[0];
		} finally {
			try {
				dis.close();
			} catch (Exception e) {
			}
		}
	}

	public static String unzipFile(InputStream zipInput, String outputFolder) throws IOException {
		byte[] buffer = new byte[1024];

		try {
			File folder = new File(outputFolder);
			if (!folder.exists()) {
				folder.mkdir();
			}

			ZipInputStream zis = new ZipInputStream(zipInput);
			ZipEntry ze = zis.getNextEntry();
			String outputFile = Constant.EMPTY;
			while (ze != null) {
				// only process file - skip folder
				if (ze.isDirectory()) {
					ze = zis.getNextEntry();
					continue;
				}
				String fileName = ze.getName();
				outputFile = outputFolder + File.separator + fileName;
				File newFile = new File(outputFile);
				new File(newFile.getParent()).mkdirs();
				FileOutputStream fos = new FileOutputStream(newFile);

				int len;
				while ((len = zis.read(buffer)) > 0) {
					fos.write(buffer, 0, len);
				}
				fos.close();
				ze = zis.getNextEntry();
			}
			zis.closeEntry();
			zis.close();

			return outputFolder;
		} catch (IOException e) {
			throw e;
		}
	}

	/**
	 * unzip a ZIP, EPUB file to a specified folder
	 * 
	 * @param zipFilePath
	 * @param outputFolder
	 * @return
	 * @throws XPubException
	 */
	public static String unzipFile(String zipFilePath, String outputFolder) throws IOException {
		byte[] buffer = new byte[1024];

		try {
			File folder = new File(outputFolder);
			if (!folder.exists()) {
				folder.mkdir();
			}

			File zipFile = new File(zipFilePath);
			ZipInputStream zis = new ZipInputStream(new FileInputStream(zipFile));
			ZipEntry ze = zis.getNextEntry();
			String outputFile = Constant.EMPTY;
			while (ze != null) {
				// only process file - skip folder
				if (ze.isDirectory()) {
					ze = zis.getNextEntry();
					continue;
				}
				String fileName = ze.getName();
				outputFile = outputFolder + File.separator + fileName;
				File newFile = new File(outputFile);
				new File(newFile.getParent()).mkdirs();
				FileOutputStream fos = new FileOutputStream(newFile);

				int len;
				while ((len = zis.read(buffer)) > 0) {
					fos.write(buffer, 0, len);
				}
				fos.close();
				ze = zis.getNextEntry();
			}
			zis.closeEntry();
			zis.close();

			String zipFileNameNoExt = zipFile.getName();
			int extOffs = zipFileNameNoExt.lastIndexOf(Constant.DOT);
			zipFileNameNoExt = zipFile.getName().substring(0, extOffs);

			return outputFolder;
		} catch (IOException e) {
			throw e;
		}
	}

	

	public static boolean sendEmail(String toEmail, String receiverName) {
		final String username = "campusnetwork11@gmail.com";
		final String password = "campussuccess";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("campusnetwork11@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
			message.setSubject("Account Activation");
			message.setText("Dear " + receiverName + ",\n\n"
//					+ "To Activate your account, please click on the below link\n" + Constant.SYSTEM_LINK + "/activate/"
					+ toEmail + ".out\n\n" + "If you encounter any problems, please let us know.\n\n" + "Sincerely,\n"
					+ "Campus Network Team");

			Transport.send(message);
			return true;
		} catch (MessagingException e) {
			return false;
		}
	}

	public static String toUpperCase(String text) {
		return text.toUpperCase();
	}

	/**
	 * check if an object is not a null<br>
	 * - if object is type of String, then also check if object has value
	 * 
	 * @param obj
	 * @return boolean
	 */
	public static boolean isNotEmpty(Object obj) {
		if (obj == null)
			return false;
		if (obj instanceof String) {
			return !((String) obj).equals(Constant.EMPTY);
		}
		return true;
	}

	/**
	 * get current server address
	 * 
	 * @param request
	 * @return
	 */
	public static String getLocalAddress(HttpServletRequest request) {
		return Constant.PROTOCOL_DEFAULT_PATH + request.getLocalName() + Constant.COLON + request.getLocalPort();
	}

	public static String getCurrentDatetime() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		return dateFormat.format(date);
	}

	public static String convertNumber(int num) {
		if (num < 1000) {
			return Integer.toString(num);
		} else if (num >= 1000 && num < 1000000) {
			if (num % 1000 == 0) {
				return num / 1000 + "K";
			} else {
				return Math.round(num * 10 / 1000) / 10 + "K";
			}
		} else if (num >= 1000000 && num < 1000000000) {
			if (num % 1000000 == 0) {
				return num / 1000000 + "M";
			} else {
				return Math.round(num * 10 / 1000000) / 10 + "M";
			}
		} else {
			if (num % 1000000000 == 0) {
				return num / 1000000000 + "B";
			} else {
				return Math.round(num * 10 / 1000000000) / 10 + "B";
			}
		}
	}

	/**
	 * remove all break-line characters out from the input string
	 * 
	 * @param input
	 * @return
	 */
	public static String removeBreakLine(String input) {
		return input.replaceAll("\n", Constant.SINGE_SPACE);
	}

}
