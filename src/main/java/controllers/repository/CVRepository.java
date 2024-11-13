/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.repository;

import java.util.Optional;
import model.entity.CV;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CVRepository extends JpaRepository<CV, Integer> {
    
    
}