package com.sport.pspkarate.Controller;

import com.sport.pspkarate.Model.Sportif;
import com.sport.pspkarate.Service.SportifService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@CrossOrigin
public class SportifController {

    @Autowired //pour appeler service
    private SportifService sportifService;

    @PostMapping("/sportifs")
    public Sportif createSportif(@RequestBody Sportif sportif) {
        return sportifService.saveSportif(sportif);
    }

    @GetMapping("/sportif/{id}")
    public Sportif getSportif(@PathVariable("id") final Long id) {
        Optional<Sportif> sportif =sportifService.getSportif(id);
        if (sportif.isPresent()){
        return sportif.get();
        }else{
            return null;
        }//@PathVariable(--pour recupéré une variable qui se trouve dans un end_point//
    }

    @DeleteMapping("/sportif/{id}")
    ResponseEntity<Sportif> deleteSportif(@PathVariable(value="id") long id){
        Optional<Sportif> sportif = sportifService.getSportif(id);
        if(sportif.isEmpty())
            return ResponseEntity.notFound().build();
        //ResponseEntity pour renvoyer un code erreur

        sportifService.delete(id);
        return ResponseEntity.accepted().build();
    }
}
 // fetch : renvoi