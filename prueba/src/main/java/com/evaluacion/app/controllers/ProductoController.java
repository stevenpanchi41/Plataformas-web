package com.evaluacion.app.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.evaluacion.app.model.Producto;

@Controller
public class ProductoController {

    @GetMapping("/ver-producto")
    public String verProducto(Model model) {

        Producto producto = new Producto(
                1,
                "iPhone 15 Pro Max",
                "Celulares",
                10,
                1599.99
        );
        Producto producto2 = new Producto(
                1,
                "iPhone 13 Pro Max",
                "Celulares",
                10,
                1599.99
        );

        model.addAttribute("item", producto);
        

        return "detalleProducto";
    }
}