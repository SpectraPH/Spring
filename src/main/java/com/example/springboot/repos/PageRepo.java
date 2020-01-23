package com.example.springboot.repos;

import com.example.springboot.domain.Page;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface PageRepo extends CrudRepository<Page, Long> {
    @Override
    Optional<Page> findById(Long aLong);
    Iterable<Page> findAllByOrderByIdDesc();
}
