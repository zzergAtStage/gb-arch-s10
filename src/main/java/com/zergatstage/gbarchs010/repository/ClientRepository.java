package com.zergatstage.gbarchs010.repository;

import com.zergatstage.gbarchs010.model.Client;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface ClientRepository extends CrudRepository<Client, Integer> {
    Page<Client> findAll(Pageable pageable);
}
