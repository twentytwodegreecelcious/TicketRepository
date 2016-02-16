package com.dmitriy.lagus.tickets.Entities;

import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

/**
 * Created by User on 16.10.2015.
 */

@Entity
@Table(name = "cinema")
public class Cinema {
    public Cinema () {}

    @Id
    @Column(name="cinema_id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int cinemaId;

    @OneToMany(mappedBy = "cinema")
    private List<Hall> halls;

    public String getName() {
        return name;
    }

    public void setName(String cinema_name) {
        this.name = cinema_name;
    }

    public int getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(int cinema_id) {
        this.cinemaId = cinema_id;
    }

    @Column (name="cinema_name")
    private String name;
}
