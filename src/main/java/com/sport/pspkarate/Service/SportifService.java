package com.sport.pspkarate.Service;

import com.sport.pspkarate.Model.Sportif;
import org.springframework.stereotype.Service;

import java.util.Optional;


public interface SportifService {
    Sportif saveSportif(Sportif sportif);
    Optional<Sportif> getSportif(Long id);
    void delete(Long id);
}

