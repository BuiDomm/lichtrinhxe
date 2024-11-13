/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EntitiesDTO;

import java.util.List;

/**
 *
 * @author ASUS
 */
public class CVResponse {

    private int cvId;
    private int jobSeekerId;
    private List<CVSectionResponse> sections;

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public int getJobSeekerId() {
        return jobSeekerId;
    }

    public void setJobSeekerId(int jobSeekerId) {
        this.jobSeekerId = jobSeekerId;
    }

    public List<CVSectionResponse> getSections() {
        return sections;
    }

    public void setSections(List<CVSectionResponse> sections) {
        this.sections = sections;
    }
    

}
