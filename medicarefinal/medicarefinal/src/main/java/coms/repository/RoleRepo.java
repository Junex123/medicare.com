package coms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import coms.model.Role;


@Repository
public interface RoleRepo extends JpaRepository<Role, Long>{

}
