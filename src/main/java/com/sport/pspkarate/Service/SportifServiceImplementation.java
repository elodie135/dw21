package com.sport.pspkarate.Service;

import com.sport.pspkarate.Model.Sportif;
import com.sport.pspkarate.Repository.SportifRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class SportifServiceImplementation implements SportifService{

    @Autowired
    private SportifRepository sportifRepository;


    @Override
    public Sportif saveSportif(Sportif sportif) {
        return sportifRepository.save(sportif);
    }

    @Override
    public Optional<Sportif> getSportif(Long id) {
        return sportifRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
       Optional<Sportif> optionnalSportif = this.getSportif(id);
        optionnalSportif.ifPresent(sportif -> sportifRepository.delete(sportif));
    }
}
