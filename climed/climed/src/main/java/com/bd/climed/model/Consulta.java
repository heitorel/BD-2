package com.bd.climed.model;

import java.sql.Date;
import java.sql.Time;
import jakarta.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="consulta")
public class Consulta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idCon")
    private int IdCon;
    @Column(name = "crm")
    private String CRM;
    @Column(name = "IdEsp")
    private int IdEsp;
    @Column(name = "IdPac")
    private int IdPac;
    @Column(name = "Data")
    private Date Data;
    @Column(name = "HoraInicCon")
    private Time HoraInicCon;
    @Column(name = "HoraFimCon")
    private Time HoraFimCon;
    @Column(name = "pagou")
    private String Pagou;
    @Column(name = "ValorPago")
    private int ValorPago;
    @Column(name = "FormaPagamento")
    private String FormaPagamento;

}
