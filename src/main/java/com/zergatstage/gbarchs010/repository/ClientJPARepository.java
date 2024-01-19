package com.zergatstage.gbarchs010.repository;

import com.zergatstage.gbarchs010.model.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ClientJPARepository extends JpaRepository<Client, Integer> {

}
