package com.dmitriy.lagus.tickets.Entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, String> lastName;
	public static volatile SingularAttribute<User, String> username;
	public static volatile SingularAttribute<User, Date> registered;
	public static volatile SingularAttribute<User, Integer> userId;
	public static volatile SingularAttribute<User, Boolean> loggedIn;
	public static volatile SingularAttribute<User, String> firstName;
	public static volatile SingularAttribute<User, String> password;

}

