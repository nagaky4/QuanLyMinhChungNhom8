package com.quypt.pack.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.quypt.pack.model.MinhChung;

public interface MinhChungRepository extends JpaRepository<MinhChung, String> {

}
