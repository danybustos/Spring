package com.dany.models;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;

@Entity
@Table(name = "artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private String apellido;
    private String biografia;
    private LocalDateTime fecha_creacion;
    private LocalDateTime fecha_actualizacion;

    @OneToMany(mappedBy = "artista")
    private List<Cancion> lista_canciones;

    public Artista(Long id, String nombre, String apellido, String biografia, LocalDateTime fecha_creacion,
            LocalDateTime fecha_actualizacion, List<Cancion> lista_canciones) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.biografia = biografia;
        this.fecha_creacion = fecha_creacion;
        this.fecha_actualizacion = fecha_actualizacion;
        this.lista_canciones = lista_canciones;
    }

    public Artista() {
        this.id = 0l;
        this.nombre = "";
        this.apellido = "";
        this.biografia = "";
        this.fecha_creacion = LocalDateTime.now();
        this.fecha_actualizacion = LocalDateTime.now();
        this.lista_canciones = new ArrayList<>();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public LocalDateTime getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(LocalDateTime fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public LocalDateTime getFecha_actualizacion() {
        return fecha_actualizacion;
    }

    public void setFecha_actualizacion(LocalDateTime fecha_actualizacion) {
        this.fecha_actualizacion = fecha_actualizacion;
    }

    public List<Cancion> getLista_canciones() {
        return lista_canciones;
    }

    public void setLista_canciones(List<Cancion> lista_canciones) {
        this.lista_canciones = lista_canciones;
    }

    @PrePersist
    private void onCreate() {
        this.fecha_creacion = LocalDateTime.now();
        this.fecha_actualizacion = LocalDateTime.now();
    }

    @PreUpdate
    private void onUpdate() {
        this.fecha_actualizacion = LocalDateTime.now();
    }
}
