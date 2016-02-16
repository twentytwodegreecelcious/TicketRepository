package com.dmitriy.lagus.tickets.Entities;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * Created by User on 04.02.2016.
 */

@Entity
@IdClass(MovieRating.Key.class)
@Table(name="movierating")
public class MovieRating {

    public MovieRating() {}

    public MovieRating(int userId, int movieId, int rating) {
        this.userId = userId;
        this.movieId = movieId;
        this.vote = rating;
        //this.modificationDate ;                                                   /// WAAAAAAAAAAAAAAAAAAAAAAAAAAT
    }

    @Column(name="modification_date")
    private Date modificationDate;

    public Date getModificationDate() {
        return modificationDate;
    }

    public void setModificationDate(Date modificationDate) {
        this.modificationDate = modificationDate;
    }

    @Column(name="vote")
    private int vote;

    public int getVote() {
        return vote;
    }

    public void setVote(int vote) {
        this.vote = vote;
    }

    @MapsId("userId")
    @ManyToOne
    @JoinColumn(name="user_id")
    private User user;

    @MapsId("movieId")
    @ManyToOne
    @JoinColumn(name="movie_id")
    private Movie movie;

    @Id
    @Column(name="user_id")
    Integer userId;

    @Id
    @Column(name="movie_id")
    Integer movieId;

    public Movie getMovie() {
        return movie;
    }

    public User getUser() {
        return this.user;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public static class Key implements Serializable {
        Integer userId;
        Integer movieId;

        public Key() {}

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Key key = (Key) o;
            return Objects.equals(userId, key.userId) &&
                    Objects.equals(movieId, key.movieId);
        }

        @Override
        public int hashCode() {
            return Objects.hash(userId, movieId);
        }
    }
}
