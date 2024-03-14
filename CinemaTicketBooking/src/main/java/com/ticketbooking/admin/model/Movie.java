package com.ticketbooking.admin.model;

public class Movie {

	private int id;
	private String name;
	private String director;
	private String description;
	private String releasdate;
	private String casts;
	private String posterName;
	private String trailerLink;
	private String duration;
	private String categoryId;
	public Movie(int id, String name, String director, String description, String releasdate, String casts,
			String posterName, String trailerLink, String duration, String categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.director = director;
		this.description = description;
		this.releasdate = releasdate;
		this.casts = casts;
		this.posterName = posterName;
		this.trailerLink = trailerLink;
		this.duration = duration;
		this.categoryId = categoryId;
	}
	public Movie(String name, String director, String description, String releasdate, String casts, String posterName,
			String trailerLink, String duration, String categoryId) {
		super();
		this.name = name;
		this.director = director;
		this.description = description;
		this.releasdate = releasdate;
		this.casts = casts;
		this.posterName = posterName;
		this.trailerLink = trailerLink;
		this.duration = duration;
		this.categoryId = categoryId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getReleasdate() {
		return releasdate;
	}
	public void setReleasdate(String releasdate) {
		this.releasdate = releasdate;
	}
	public String getCasts() {
		return casts;
	}
	public void setCasts(String casts) {
		this.casts = casts;
	}
	public String getPosterName() {
		return posterName;
	}
	public void setPosterName(String posterName) {
		this.posterName = posterName;
	}
	public String getTrailerLink() {
		return trailerLink;
	}
	public void setTrailerLink(String trailerLink) {
		this.trailerLink = trailerLink;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	@Override
	public String toString() {
		return "Movie [id=" + id + ", name=" + name + ", director=" + director + ", description=" + description
				+ ", releasdate=" + releasdate + ", casts=" + casts + ", posterName=" + posterName + ", trailerLink="
				+ trailerLink + ", duration=" + duration + ", categoryId=" + categoryId + "]";
	}
	
	
}
