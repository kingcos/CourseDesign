package com.maimieng;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;

public class Main {

	private static Scanner in;

	public static void main(String[] args) throws Exception {
		Main d = new Main();
		in = new Scanner(System.in);
		System.out.println("输入 tracert 网址，例如 www.maimieng.com");
		String website = in.nextLine();
		System.out.println("正在 tracert 请等待");
		List<String> ips = d.tracert(website.trim());

		String httpUrl = "http://apis.baidu.com/apistore/iplookupservice/iplookup";
		System.out.println("跃点数\tIP\t\t地区\t\t\tISP");
		for (int i = 0; i < ips.size(); i++) {
			String ip = ips.get(i);
			String httpArg = "ip=" + ip;
			String jsonResult = request(httpUrl, httpArg);
			System.out.println(i + 1 + "\t" + ip + "\t" + d.readJson(jsonResult));

		}
		System.out.println("Tracert 完毕！Powered by http://maimieng.com");

	}

	public String readJson(String jsonResult) {
		InputStream jsonStream = new ByteArrayInputStream(jsonResult.getBytes());
		JsonReader reader = Json.createReader(jsonStream);

		JsonObject metaData = reader.readObject();
		String info = "";
		if (metaData.getInt("errNum") == 1) {
			info = "未知\t\t\t未知";
			return info;
		}
		JsonObject retData = metaData.getJsonObject("retData");

		info = retData.getString("country") + retData.getString("province") + "省" + retData.getString("city") + "市"
				+ retData.getString("district") + "区" + "\t" + retData.getString("carrier");

		if (info.startsWith("None")) {
			info = "未知\t\t\t未知";
		}

		return info;
	}

	public List<String> tracert(String ip) {
		List<String> ipList = new ArrayList<String>();
		try {
			ProcessBuilder pb = new ProcessBuilder("bat\\demo.bat");
			pb.environment().put("ip", ip);
			Process p = pb.start();

			BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String strRead;
			while ((strRead = br.readLine()) != null) {
				// System.out.println(strRead);
				ipList.add(strRead);
			}
		} catch (Exception e) {
			System.err.println(e);
		}
		return ipList;
	}

	public static String request(String httpUrl, String httpArg) {
		BufferedReader reader = null;
		String result = null;
		StringBuffer sbf = new StringBuffer();
		httpUrl = httpUrl + "?" + httpArg;

		try {
			URL url = new URL(httpUrl);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			// 填入apikey到HTTP header
			connection.setRequestProperty("apikey", "!!! 替换为自己的 API Key !!!");
			connection.connect();
			InputStream is = connection.getInputStream();
			reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
			String strRead = null;
			while ((strRead = reader.readLine()) != null) {
				sbf.append(strRead);
				sbf.append("\r\n");
			}
			reader.close();
			result = sbf.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}