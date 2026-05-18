package com.evaluacion.app.controllers.rest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.evaluacion.app.model.Producto;

@RestController
@RequestMapping("/api/v1")
public class ProductoRestController {

    @GetMapping("/productos")
    public List<Producto> obtenerProductos() {

        List<Producto> lista = new ArrayList<>();

        lista.add(new Producto(1, "iPhone 15", "Celulares", 10, 1200.50));
        lista.add(new Producto(2, "iPhone 14 Pro", "Celulares", 8, 1100.75));
        lista.add(new Producto(3, "iPhone 13", "Celulares", 15, 950.00));
        lista.add(new Producto(4, "iPhone 12", "Celulares", 20, 800.99));

        return lista;
    }
}