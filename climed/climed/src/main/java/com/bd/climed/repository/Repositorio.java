package com.bd.climed.repository;

import com.bd.climed.model.ConsultaDTO;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Repositorio extends CrudRepository<ConsultaDTO, Integer> {


}
