package com.bd.climed.model;

import java.sql.Date;
import java.sql.Time;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ConsultaDTO {

    private int IdCon;
    private String CRM;
    private int IdEsp;
    private int IdPac;
    private Date Data;
    private Time HoraInicCon;
    private Time HoraFimCon;
    private String Pagou;
    private int ValorPago;
    private String FormaPagamento;

}
