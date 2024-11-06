package com.dany.controladores;

import java.util.HashMap;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControladorPeliculas {

    private static HashMap<String, String> listaPeliculas = new HashMap<String, String>();

    public ControladorPeliculas() {
        listaPeliculas.put("Winnie the Pooh", "Don Hall");
        listaPeliculas.put("El zorro y el sabueso", "Ted Berman");
        listaPeliculas.put("Tarzán", "Kevin Lima");
        listaPeliculas.put("Mulán", "Barry Cook");
        listaPeliculas.put("Oliver", "Kevin Lima");
        listaPeliculas.put("Big Hero 6", "Don Hall");
    }

    @GetMapping("/peliculas")
    public String obtenerTodasLasPeliculas() {
        return "Listado de películas: " + listaPeliculas.toString();
    }

    @GetMapping("/peliculas/{nombre}")
    public String obtenerPeliculaPorNombre(@PathVariable String nombre) {
        String director = listaPeliculas.get(nombre);
        if (director != null) {
            return "Película: " + nombre + ", Director: " + director;
        } else {
            return "La película no se encuentra en nuestra lista";
        }
    }

    @GetMapping("/peliculas/director/{nombre}")
    public String obtenerPeliculasPorDirector(@PathVariable String nombre) {
        return switch (nombre) {
            case "Don Hall" ->
                "Director: Don Hall, Películas: Winnie the Pooh, Big Hero 6";
            case "Ted Berman" ->
                "Director: Ted Berman, Películas: El zorro y el sabueso";
            case "Kevin Lima" ->
                "Director: Kevin Lima, Películas: Tarzán, Oliver";
            case "Barry Cook" ->
                "Director: Barry Cook, Películas: Mulán";
            default ->
                "No contamos con películas de ese director en nuestra lista";
        };
    }
}
