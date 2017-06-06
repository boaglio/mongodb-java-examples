package com.boaglio.examples.mongodb;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface RegionRepository  extends MongoRepository<Region, String> {

	public Region findByRegion(String region);
	
}