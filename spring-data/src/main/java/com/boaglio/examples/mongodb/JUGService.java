package com.boaglio.examples.mongodb;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JUGService {

	@Autowired
	private RegionRepository repository;

	@PostConstruct
	public void init() {
		
		System.out.println("-------- MongoDB JUG List from REGION 4 (Spring Data) ------------");
		Region region = repository.findByRegion("Sudeste");

		System.out.println("region = " + region);

		System.out.println("-------- List<JUG> ------------");
		region.getJugs().stream().forEach(System.out::println);
	}
}
