package com.dmitriy.lagus.tickets.Entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Session.class)
public abstract class Session_ {

	public static volatile SingularAttribute<Session, Integer> sessionId;
	public static volatile SingularAttribute<Session, Movie> movie;
	public static volatile SingularAttribute<Session, Date> endTime;
	public static volatile SingularAttribute<Session, Date> begTime;

}

