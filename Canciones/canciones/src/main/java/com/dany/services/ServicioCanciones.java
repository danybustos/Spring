package com.dany.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dany.models.Cancion;
import com.dany.repositories.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private RepositorioCanciones repositorioCanciones;

    public List<Cancion> obtenerTodasLasCanciones() {
        return (List<Cancion>) repositorioCanciones.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorioCanciones.findById(id).orElse(null);
    }
}
