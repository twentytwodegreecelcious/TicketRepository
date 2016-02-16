package com.dmitriy.lagus.tickets.Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Ticket.class)
public abstract class Ticket_ {

	public static volatile SingularAttribute<Ticket, Session> session;
	public static volatile SingularAttribute<Ticket, Seat> seat;
	public static volatile SingularAttribute<Ticket, Integer> sessionId;
	public static volatile SingularAttribute<Ticket, Integer> seatId;

}

