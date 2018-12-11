/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.hung.dao;

import org.hung.entities.Transporter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author admin
 */
public interface TransporterRepository extends JpaRepository<Transporter, Long>{
    @Query("select t from Transporter t where t.nom like :x")
    public Page<Transporter> chercher(@Param("x") String mc, Pageable pageable);
}

