package com.store.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@ComponentScan("com.store.*")
@EntityScan( basePackages = {"com.store.*"})
@EnableJpaRepositories(basePackages = {"com.store.*"})
@EnableSwagger2
@SpringBootApplication
public class StoreStarterApplication 
{
	public static void main(String[] args) 
	{
		SpringApplication.run(StoreStarterApplication.class, args);
	}
}
