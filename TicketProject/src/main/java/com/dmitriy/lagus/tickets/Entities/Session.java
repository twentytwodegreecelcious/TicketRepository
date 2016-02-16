package com.dmitriy.lagus.tickets.Entities;

/**
 * Created by User on 12.10.2015.
 */

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.sql.Time;
import java.util.Date;

@Entity
@Table(name = "session")
public class Session {

    public Date getBegTime() {
        return begTime;
    }

    public void setBegTime(Date begDate) {
        this.begTime = begDate;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getSessionId() {
        return sessionId;
    }

    public void setSessionId(int sessionId) {
        this.sessionId = sessionId;
    }

    @Column(name="beg_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date begTime;
    @Column (name="end_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endTime;
    @Id
    @Column (name="session_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int sessionId;

    @ManyToOne
    @JoinColumn(name="movie_id")
    private Movie movie;

    public Session() {}



}
