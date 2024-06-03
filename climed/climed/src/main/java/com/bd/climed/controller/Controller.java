package com.bd.climed.controller;

import com.bd.climed.model.ConsultaDTO;
import org.springframework.web.bind.annotation.*;

@RestController
public class Controller {

    @GetMapping("/consultas")
    public String getAllConsultas(){
        return "um dia vai retornar todas as consultas marcadas!";
    }

    @GetMapping("/consultas/{IdCon}")
    public String getConsulta(@PathVariable String IdCon){
        return "um dia vai retornar a consulta: "+IdCon;
    }

    @PostMapping("/consultas/cadastrar")
    public ConsultaDTO setConsulta(@RequestBody ConsultaDTO consulta){
        return consulta;
    }
}
