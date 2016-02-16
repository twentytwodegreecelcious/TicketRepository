package com.dmitriy.lagus.tickets.Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Seat.class)
public abstract class Seat_ {

	public static volatile SingularAttribute<Seat, Hall> hall;
	public static volatile SingularAttribute<Seat, Integer> rawNumber;
	public static volatile SingularAttribute<Seat, Boolean> isBusy;
	public static volatile SingularAttribute<Seat, Integer> seatId;
	public static volatile SingularAttribute<Seat, Integer> seatNumber;

}

