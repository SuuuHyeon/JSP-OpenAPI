package api;

import java.util.*;

import org.json.*;


public class ParsingApi {

	public static List<News> parseJson(String responseBody) throws JSONException {
        List<News> dataList = new ArrayList<>();

        JSONObject jsonObj = new JSONObject(responseBody);
        JSONArray jsonArray = jsonObj.getJSONArray("items");

        for(int i = 0; i < jsonArray.length(); i++){
            JSONObject item = jsonArray.getJSONObject(i);
            String title = item.getString("title");
            String originallink = item.getString("originallink");
            String link = item.getString("link");
            String description = item.getString("description");
            String pubDate = item.getString("pubDate");

            dataList.add(new News(title, originallink, link, description, pubDate));
        }

        return dataList;
    }

}
