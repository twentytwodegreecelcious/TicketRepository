package com.dmitriy.lagus.tickets.Entities;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Objects;

/**
 * Created by User on 16.11.2015.
 */

@Entity
@IdClass(Ticket.Key.class)
@Table(name = "ticket")
public class Ticket {

    public Ticket() {}

    @Id
    @Column(name = "seat_id")
    Integer seatId;
    @Id
    @Column(name = "session_id")
    Integer sessionId;

    @MapsId("seatId")
    @ManyToOne
    @JoinColumn(name = "seat_id")
    private Seat seat;

    @MapsId("sessionId")
    @ManyToOne
    @JoinColumn(name = "session_id")
    private Session session;

    public Seat getSeat() {
        return seat;
    }


    public void setSeat(Seat seat) {
        this.seat = seat;
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public Integer getSeatId() {
        return seatId;
    }

    public void setSeatId(Integer seatId) {
        this.seatId = seatId;
    }

    public Integer getSessionId() {
        return sessionId;
    }

    public void setSessionId(Integer sessionId) {
        this.sessionId = sessionId;
    }

    public static class Key implements Serializable {
        Integer seatId;
        Integer sessionId;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Key key = (Key) o;
            return Objects.equals(seatId, key.seatId) &&
                    Objects.equals(sessionId, key.sessionId);
        }

        @Override
        public int hashCode() {
            return Objects.hash(seatId, sessionId);
        }
    }

}
