package com.sport.pspkarate.Repository;

import com.sport.pspkarate.Model.Club;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface ClubRepository extends JpaRepository<Club,Long> {
}
