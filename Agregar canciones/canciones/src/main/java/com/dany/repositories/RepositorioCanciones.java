package com.dany.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dany.models.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {

}
