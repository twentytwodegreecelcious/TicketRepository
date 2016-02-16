package com.dmitriy.lagus.tickets.Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Hall.class)
public abstract class Hall_ {

	public static volatile SingularAttribute<Hall, Integer> hallId;
	public static volatile SingularAttribute<Hall, Cinema> cinema;
	public static volatile ListAttribute<Hall, Seat> seats;

}

