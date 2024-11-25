package com.dany.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dany.models.Artista;
import com.dany.services.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicioArtistas;

    @GetMapping("/artistas")
    public String desplegarArtistas(Model modelo) {
        modelo.addAttribute("artistas", servicioArtistas.obtenerTodosLosArtistas());
        return "artistas.jsp";
    }

    @GetMapping("/artistas/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable("idArtista") Long id, Model modelo) {
        Artista artista = servicioArtistas.obtenerArtistaPorId(id);
        modelo.addAttribute("artista", artista);
        return "detalleArtista.jsp";
    }

    @GetMapping("/artistas/formulario/agregar/{idArtista}")
    public String formularioAgregarArtista(@PathVariable("idArtista") Long id, Model modelo) {
        modelo.addAttribute("artista", new Artista());
        return "agregarArtista.jsp";
    }

    @PostMapping("artistas/procesa/agregar")
    public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista, BindingResult result) {
        if (result.hasErrors()) {
            return "agregarArtista.jsp";
        }
        servicioArtistas.agregarArtista(artista);
        return "redirect:/artistas";
    }
}
