package api;

public class News {
	private String title;
	private String originallink;
	private String link;
	private String description;
	private String pubDate;

	public News(String title, String originallink, String link, String description, String pubDate) {
        this.title = title;
        this.originallink = originallink;
        this.link = link;
        this.description = description;
        this.pubDate = pubDate;
    }
	
	public String getTitle() {
        return title;
    }
	public String getOrgLink() {
        return originallink;
    }
	public String getLink() {
        return link;
    }
	public String getDescription() {
        return description;
    }
	public String getPubDate() {
        return pubDate;
    }
}
