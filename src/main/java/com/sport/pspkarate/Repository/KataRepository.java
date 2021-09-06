package com.sport.pspkarate.Repository;

import com.sport.pspkarate.Model.Kata;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface KataRepository extends JpaRepository<Kata,Long> {
}
