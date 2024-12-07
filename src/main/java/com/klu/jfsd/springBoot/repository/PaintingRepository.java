package com.klu.jfsd.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.springBoot.model.Painting;

@Repository
public interface PaintingRepository extends JpaRepository<Painting, Long>{

}