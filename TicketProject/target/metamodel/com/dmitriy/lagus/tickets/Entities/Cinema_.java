package com.dmitriy.lagus.tickets.Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Cinema.class)
public abstract class Cinema_ {

	public static volatile SingularAttribute<Cinema, Integer> cinemaId;
	public static volatile ListAttribute<Cinema, Hall> halls;
	public static volatile SingularAttribute<Cinema, String> name;

}

