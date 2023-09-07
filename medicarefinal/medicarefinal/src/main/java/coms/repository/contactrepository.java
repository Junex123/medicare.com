package coms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import coms.model.Contactus;


@Repository
public interface contactrepository extends JpaRepository<Contactus,Integer> {
}
