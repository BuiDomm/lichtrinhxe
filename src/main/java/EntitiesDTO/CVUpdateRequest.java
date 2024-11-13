/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EntitiesDTO;

import java.util.List;
import model.entity.CVSection;

/**
 *
 * @author ASUS
 */
public class CVUpdateRequest {
    private int jobSeekerId;
    private int cvId;
    private List<CVSection> cVSections;

    public int getJobSeekerId() {
        return jobSeekerId;
    }

    public void setJobSeekerId(int jobSeekerId) {
        this.jobSeekerId = jobSeekerId;
    }

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public List<CVSection> getcVSections() {
        return cVSections;
    }

    public void setcVSections(List<CVSection> cVSections) {
        this.cVSections = cVSections;
    }
    
    


}
