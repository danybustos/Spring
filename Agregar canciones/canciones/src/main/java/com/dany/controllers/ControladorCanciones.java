package com.dany.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dany.models.Cancion;
import com.dany.services.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {

    @Autowired
    private ServicioCanciones servicioCanciones;

    @GetMapping("/canciones")
    public String desplegarCanciones(Model modelo) {
        modelo.addAttribute("canciones", servicioCanciones.obtenerTodasLasCanciones());
        return "canciones.jsp";
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long id, Model modelo) {
        Cancion cancion = servicioCanciones.obtenerCancionPorId(id);
        modelo.addAttribute("cancion", cancion);
        return "detalleCancion.jsp";
    }

    @GetMapping("/canciones/formulario/agregar/{idCancion}")
    public String formularioAgregarCancion(@PathVariable("idCancion") Long id, Model modelo) {
        modelo.addAttribute("cancion", new Cancion());
        return "agregarCancion.jsp";
    }

    @PostMapping("canciones/procesa/agregar")
    public String procesarAgregarCancion(@Valid @ModelAttribute("cancion") Cancion cancion, BindingResult result) {
        if (result.hasErrors()) {
            return "agregarCancion.jsp";
        }
        servicioCanciones.agregarCancion(cancion);
        return "redirect:/canciones";
    }
}
