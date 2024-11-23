package com.dany.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

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

    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable("idCancion") Long id, @ModelAttribute("cancion") Cancion cancion, Model modelo) {
        modelo.addAttribute("cancion", servicioCanciones.obtenerCancionPorId(id));
        return "editarCancion.jsp";
    }

    @PutMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(@Valid @ModelAttribute("cancion") Cancion cancion, BindingResult result, @PathVariable("idCancion") Long id) {
        if (result.hasErrors()) {
            return "editarCancion.jsp";
        }
        servicioCanciones.actualizarCancion(cancion);
        return "redirect:/canciones";
    }

    @DeleteMapping("/canciones/eliminar/{idCancion}")
    public String procesarEliminarCancion(@PathVariable("idCancion") Long id) {
        servicioCanciones.eliminarCancion(id);
        return "redirect:/canciones";
    }
}
