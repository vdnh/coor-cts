package org.hung.dao;

import org.hung.entities.Adresse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 *
 * @author vdnh
 */
public interface AdresseRepository  extends JpaRepository<Adresse, Long>{
    @Query("select a from Adresse a where a.code_postal like :x")
    public Page<Adresse> chercher(@Param("x") String mc, Pageable pageable);
}
