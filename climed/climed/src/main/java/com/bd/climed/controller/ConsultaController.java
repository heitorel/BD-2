package com.bd.climed.controller;

import com.bd.climed.model.Consulta;
import com.bd.climed.service.ConsultaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/consultas")
public class ConsultaController {

    @Autowired
    private ConsultaService consultaService;

    @GetMapping
    public List<Consulta> getAllConsultas() {
        return consultaService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Consulta> getConsultaById(@PathVariable int id) {
        Optional<Consulta> consulta = consultaService.findById(id);
        return consulta.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public Consulta createConsulta(@RequestBody Consulta consulta) {
        return consultaService.save(consulta);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Consulta> updateConsulta(@PathVariable int id, @RequestBody Consulta consultaDetails) {
        Optional<Consulta> optionalConsulta = consultaService.findById(id);
        if (optionalConsulta.isPresent()) {
            Consulta consulta = optionalConsulta.get();
            consulta.setCRM(consultaDetails.getCRM());
            consulta.setIdEsp(consultaDetails.getIdEsp());
            consulta.setIdPac(consultaDetails.getIdPac());
            consulta.setData(consultaDetails.getData());
            consulta.setHoraInicCon(consultaDetails.getHoraInicCon());
            consulta.setHoraFimCon(consultaDetails.getHoraFimCon());
            consulta.setPagou(consultaDetails.getPagou());
            consulta.setValorPago(consultaDetails.getValorPago());
            consulta.setFormaPagamento(consultaDetails.getFormaPagamento());
            return ResponseEntity.ok(consultaService.save(consulta));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteConsulta(@PathVariable int id) {
        consultaService.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}

