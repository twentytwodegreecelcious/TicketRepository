package com.dmitriy.lagus.tickets.Entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(MovieRating.class)
public abstract class MovieRating_ {

	public static volatile SingularAttribute<MovieRating, Integer> movieId;
	public static volatile SingularAttribute<MovieRating, Integer> vote;
	public static volatile SingularAttribute<MovieRating, Integer> userId;
	public static volatile SingularAttribute<MovieRating, Movie> movie;
	public static volatile SingularAttribute<MovieRating, Date> modificationDate;
	public static volatile SingularAttribute<MovieRating, User> user;

}

