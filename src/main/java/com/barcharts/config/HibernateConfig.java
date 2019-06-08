package com.barcharts.config;

import static org.hibernate.cfg.AvailableSettings.DIALECT;
import static org.hibernate.cfg.AvailableSettings.HBM2DDL_AUTO;
import static org.hibernate.cfg.AvailableSettings.SHOW_SQL;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.barcharts.dto.AddTag;
import com.barcharts.dto.Admin;
import com.barcharts.dto.Image;
import com.barcharts.dto.UserDetails;

@Configuration
@PropertySource("classpath:db.properties")
@EnableTransactionManagement
@ComponentScans(value = {@ComponentScan("com.barcharts.dao"),
		@ComponentScan("com.barcharts.service"),
		@ComponentScan("com.barcharts.dto")})
public class HibernateConfig {
	

    @Autowired
    private Environment env;
 
   
    @Bean
	   public DataSource getDataSource() {
	      BasicDataSource dataSource = new BasicDataSource();
	      dataSource.setDriverClassName(env.getProperty("db.driver"));
	      dataSource.setUrl(env.getProperty("db.url"));
	      dataSource.setUsername(env.getProperty("db.user"));
	      dataSource.setPassword(env.getProperty("db.password"));
	      return dataSource;
	   }
    
    
    
    @Bean
	   public LocalSessionFactoryBean getSessionFactory() {
	    
    	 LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
    	

	      Properties props = new Properties();
	      // Setting Hibernate properties
	      props.put(SHOW_SQL, env.getProperty("hibernate.show_sql"));
	      props.put(HBM2DDL_AUTO, env.getProperty("hibernate.hbm2ddl.auto"));
	      props.put(DIALECT,(env.getProperty("hibernate.dialect"))) ;
	  
	      factoryBean.setDataSource(getDataSource());
	      factoryBean.setHibernateProperties(props);
	      factoryBean.setAnnotatedClasses(Admin.class,AddTag.class,Image.class,UserDetails.class);
	      return factoryBean;
	   }

	   @Bean
	   public HibernateTransactionManager getTransactionManager() {
	      HibernateTransactionManager transactionManager = new HibernateTransactionManager();
	      transactionManager.setSessionFactory(getSessionFactory().getObject());
	      return transactionManager;
	   }
}
