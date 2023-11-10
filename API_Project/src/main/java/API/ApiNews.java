package API;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ApiNews {

//	public static String main(String[] args) throws JSONException {
//		getNews("인하공전");
//		return ;
//		
//	}

	public static JSONArray getNews(String query) throws JSONException {
		String clientId = "te5hILAi19PNKR4Dmq2_"; // 애플리케이션 클라이언트 아이디
		String clientSecret = "m8JTyaHQgT"; // 애플리케이션 클라이언트 시크릿

		String text = null;
		try {
			text = URLEncoder.encode(query, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("검색어 인코딩 실패", e);
		}

		int total = 1000;

		String apiURL = "https://openapi.naver.com/v1/search/news.json?query=" + text; // JSON 결과
//        String apiURL = "https://openapi.naver.com/v1/search/news.xml?query="+ text; // XML 결과

		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		String responseBody = get(apiURL, requestHeaders);

		System.out.println(responseBody);

		JSONObject jObject = new JSONObject(responseBody);
		// 배열을 가져옵니다.
		JSONArray jArray = jObject.getJSONArray("items");

		for (int i = 0; i < jArray.length(); i++) {
			JSONObject obj = jArray.getJSONObject(i);
			String title = removeHtmlTags(obj.getString("title"));
			String originalLink = obj.getString("originallink");
			String link = obj.getString("link");
			String description = removeHtmlTags(obj.getString("description"));
			description.replaceAll("<[^>]*>", "");
			String pubDate = obj.getString("pubDate");
			System.out.println("title(" + i + "): " + title);
			System.out.println("originalLink(" + i + "): " + originalLink);
			System.out.println("link(" + i + "): " + link);
			System.out.println("description(" + i + "): " + description);
			System.out.println("pubDate(" + i + "): " + pubDate);
			System.out.println();
		}
		return jArray;
	}

	private static String removeHtmlTags(String text) {
		return text.replaceAll("<[^>]*>", "");
	}

	private static String get(String apiUrl, Map<String, String> requestHeaders) {
		HttpURLConnection con = connect(apiUrl);
		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				return readBody(con.getInputStream());
			} else { // 오류 발생
				return readBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	private static HttpURLConnection connect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}

	private static String readBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder responseBody = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null) {
				responseBody.append(line);
			}

			return responseBody.toString();
		} catch (IOException e) {
			throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
		}
	}

}
