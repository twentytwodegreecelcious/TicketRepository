package com.dmitriy.lagus.tickets.Entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by User on 12.10.2015.
 */
@Entity
@Table(name="hall")
public class Hall {

    public int getHallID() {
        return hallId;
    }

    public void setHallID(int hallID) {
        this.hallId = hallID;
    }



    @Column (name="hall_id")
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int hallId;

    @OneToMany (mappedBy = "hall")
    private List<Seat> seats;

    @ManyToOne
    @JoinColumn(name = "cinema_id")
    private Cinema cinema;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Transient
    private String name;

    public Hall() {}


}
