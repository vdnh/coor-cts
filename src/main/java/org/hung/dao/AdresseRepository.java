package org.hung.dao;

import java.util.List;
import org.hung.entities.Adresse;
//import org.hung.entities.Contact;
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
    public Page<Adresse> chercherCodePostal(@Param("x") String mc, Pageable pageable);
    
    @Query("select a from Adresse a where a.id_shipper like :x")
    public List<Adresse> adressesDeShipper(@Param("x") Long id_shipper);
    
//    @Query("select c from Contact c where c.id_transporter like :x")
//    public List<Contact> contactsDeTransporter(Long id_shipper);
//    
//    @Query("select c from Contact c where c.id_manager like :x")
//    public List<Contact> contactsDeManager(Long id_shipper);
}
