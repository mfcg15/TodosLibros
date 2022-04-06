package com.example.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>
{
	List<Book> findAll();
	
    List<Book> findByDescriptionContaining(String search);
    
    Long countByTitleContaining(String search);
    
    Long deleteByTitleStartingWith(String search);
    
    void deleteById(Long id);
    
}
