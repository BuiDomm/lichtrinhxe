/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.entity;

/**
 *
 * @author ASUS
 */
import java.time.LocalDateTime;
import javax.persistence.*;

@Entity
@Table(name = "CV_Section")
public class CVSection {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "section_id")
    private int sectionId;

    @ManyToOne
    @JoinColumn(name = "cv_id", nullable = false)
    private CV cv; // Quan hệ với bảng CV

    @Column(name = "section_type")
    private String sectionType;

    @Column(name = "section_content", columnDefinition = "nvarchar(max)")
    private String sectionContent;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }

    public CV getCv() {
        return cv;
    }

    public void setCv(CV cv) {
        this.cv = cv;
    }

    public String getSectionType() {
        return sectionType;
    }

    public void setSectionType(String sectionType) {
        this.sectionType = sectionType;
    }

    public String getSectionContent() {
        return sectionContent;
    }

    public void setSectionContent(String sectionContent) {
        this.sectionContent = sectionContent;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

}
