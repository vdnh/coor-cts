package org.hung.web;

import java.util.List;
import org.hung.dao.AdresseRepository;
import org.hung.entities.Adresse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author vdnh
 */
@RestController
@CrossOrigin("*")
public class AdresseRestService {
@Autowired
    private AdresseRepository adresseRepository;
    
    @RequestMapping(value = "/adresses", method = RequestMethod.GET)
    public List<Adresse> getAdresses(){
        return adresseRepository.findAll();
    }
    
    @RequestMapping(value = "/adresses/{id}", method = RequestMethod.GET)
    public Adresse getAdresse(@PathVariable Long id){
        return adresseRepository.findById(id).get();
    }
    
    @RequestMapping(value = "/adresses", method = RequestMethod.POST)
    public Adresse save(@RequestBody Adresse c){
        return adresseRepository.save(c);
    }
    
    @RequestMapping(value = "/adresses/{id}", method = RequestMethod.DELETE)
    public boolean supprimer(@PathVariable Long id){
        adresseRepository.deleteById(id);
        return true;
    }
    
    @RequestMapping(value = "/adresses", method = RequestMethod.DELETE)
    public boolean delete(@RequestParam(name = "id") Long id){
        adresseRepository.deleteById(id);
        return true;
    }
    
    @RequestMapping(value = "/adresses/{id}", method = RequestMethod.PUT)
    public Adresse updateAdresse(@PathVariable Long id, @RequestBody Adresse a){
        a.setId(id);
        return adresseRepository.save(a);
    }    
    
    @RequestMapping(value = "/chercherAdresses", method = RequestMethod.GET)
    public Page<Adresse> chercher(
        @RequestParam(name = "mc", defaultValue = "") String mc, 
        @RequestParam(name = "page", defaultValue = "0")int page, 
        @RequestParam(name = "size", defaultValue = "5")int size){
        return adresseRepository.chercher("%"+mc+"%", PageRequest.of(page, size));
    }    
}
