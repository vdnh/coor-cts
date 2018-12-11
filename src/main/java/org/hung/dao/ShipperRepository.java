package org.hung.dao;

import org.hung.entities.Shipper1;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author vdnh
 */
public interface ShipperRepository  extends JpaRepository<Shipper1, Long>{
    @Query("select s from Shipper1 s where s.nom like :x")
    public Page<Shipper1> chercher(@Param("x") String mc, Pageable pageable);    
}
