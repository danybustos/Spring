package com.dany.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dany.models.Artista;

@Repository
public interface RepositorioArtistas extends CrudRepository<Artista, Long> {

    List<Artista> findAll();
}
