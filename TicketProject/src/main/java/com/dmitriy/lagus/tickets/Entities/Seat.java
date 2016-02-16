package com.dmitriy.lagus.tickets.Entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Created by User on 20.11.2015.
 */
@Entity
@Table (name= "seat")
public class Seat {
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    @Column(name="sit_id")
    private int seatId;
/*
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    @Column (name="visitor_id")
    private int visitorId;
*/
    @Column (name="raw_number")
    private int rawNumber;
    @Column (name = "sit_number")
    private int seatNumber;
    @Column (name = "is_busy")
    private boolean isBusy;

    @ManyToOne
    private Hall hall;

    public boolean isBusy() {
        return isBusy;
    }

    public void setIsBusy(boolean isBusy) {
        this.isBusy = isBusy;
    }

    public int getRawNumber() {
        return rawNumber;
    }

    public void setRawNumber(int rawNumber) {
        this.rawNumber = rawNumber;
    }

    public int getSeatId() {
        return seatId;
    }

    public void setSeatId(int seatId) {
        this.seatId = seatId;
    }

    public int getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(int seatNumber) {
        this.seatNumber = seatNumber;
    }

    public Seat () {}
}
