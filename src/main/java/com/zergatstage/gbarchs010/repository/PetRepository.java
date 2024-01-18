package com.zergatstage.gbarchs010.repository;

import com.zergatstage.gbarchs010.model.Pet;
import org.springframework.data.repository.CrudRepository;

public interface PetRepository extends CrudRepository<Pet, Integer> {
}
