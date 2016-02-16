package com.dmitriy.lagus.tickets.Entities;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Movie.class)
public abstract class Movie_ {

	public static volatile SingularAttribute<Movie, Integer> movieId;
	public static volatile SingularAttribute<Movie, String> description;
	public static volatile SingularAttribute<Movie, String> name;
	public static volatile SingularAttribute<Movie, String> producer;
	public static volatile SingularAttribute<Movie, Integer> amountOfVotes;
	public static volatile SingularAttribute<Movie, Double> rating;

}

