/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import model.entity.CVSection;

@Repository
public interface CVSectionRepository extends JpaRepository<CVSection, Integer> {

    // Phương thức tìm kiếm các phần CV dựa trên cvId (tên trường là cvId trong lớp CV)
    List<CVSection> findByCvCvId(int cvId);
}
