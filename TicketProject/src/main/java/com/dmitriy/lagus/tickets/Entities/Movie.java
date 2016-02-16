package com.dmitriy.lagus.tickets.Entities;

/**
 * Created by User on 12.10.2015.
 */
import javax.persistence.*;
import java.util.Date;

@Entity
@Table (name = "movies")
public class Movie {

    public Movie() {}

    public Movie(String producer, String description, double rating, String movie_name ) {
        this.description = description;
        this.name = movie_name;
        this.producer = producer;
        this.rating = rating;
        this.amountOfVotes = 0;
    }

    @Column (name="movie_id")
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int movieId;

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column (name="rating")
    private double rating;
    @Column (name="producer")
    private String producer;
    @Column (name = "description")
    private String description;

    public int getAmountOfVotes() {
        return amountOfVotes;
    }

    public void setAmountOfVotes(int amountOfVotes) {
        this.amountOfVotes = amountOfVotes;
    }

    @Column(name="vote_count")
    private int amountOfVotes;

    public void addVote() {
        this.amountOfVotes++;
    }

    public String getName() {
        return name;
    }

    public void setName(String movie_name) {
        this.name = movie_name;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Transient
    private String status;

    @Transient
    private Date releaseDate;

    @Column (name="movie_name")
    private String name;
    public int getMovieId() {
        return this.movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId=movieId;
    }
}
