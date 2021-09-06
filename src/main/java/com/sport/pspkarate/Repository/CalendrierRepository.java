package com.sport.pspkarate.Repository;

import com.sport.pspkarate.Model.Calendrier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CalendrierRepository extends JpaRepository<Calendrier,Long> {
}
