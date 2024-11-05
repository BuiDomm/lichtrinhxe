package model.entity;

import model.entity.Employer;
import javax.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import java.math.BigDecimal;
import java.time.Instant;

@Entity
@Table(name = "Job_Posting")
public class JobPosting {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "job_posting_id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employer_id")
    private Employer employer;

    @Nationalized
    @Column(name = "job_title", nullable = false)
    private String jobTitle;

    @Nationalized
    @Lob
    @Column(name = "job_description")
    private String jobDescription;

    @Nationalized
    @Column(name = "job_category", length = 100)
    private String jobCategory;

    @Nationalized
    @Column(name = "location")
    private String location;

    @Column(name = "salary", precision = 18, scale = 2)
    private BigDecimal salary;

    @Nationalized
    @Column(name = "work_type", length = 50)
    private String workType;

    @Nationalized
    @Column(name = "experience_required")
    private String experienceRequired;

    @Nationalized
    @Column(name = "education_required")
    private String educationRequired;

    @Nationalized
    @Lob
    @Column(name = "skills_required")
    private String skillsRequired;

    @Nationalized
    @Lob
    @Column(name = "languages_required")
    private String languagesRequired;

    @ColumnDefault("getdate()")
    @Column(name = "posted_at")
    private Instant postedAt;

    @ColumnDefault("1")
    @Column(name = "is_active")
    private Boolean isActive;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public String getJobCategory() {
        return jobCategory;
    }

    public void setJobCategory(String jobCategory) {
        this.jobCategory = jobCategory;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }

    public String getWorkType() {
        return workType;
    }

    public void setWorkType(String workType) {
        this.workType = workType;
    }

    public String getExperienceRequired() {
        return experienceRequired;
    }

    public void setExperienceRequired(String experienceRequired) {
        this.experienceRequired = experienceRequired;
    }

    public String getEducationRequired() {
        return educationRequired;
    }

    public void setEducationRequired(String educationRequired) {
        this.educationRequired = educationRequired;
    }

    public String getSkillsRequired() {
        return skillsRequired;
    }

    public void setSkillsRequired(String skillsRequired) {
        this.skillsRequired = skillsRequired;
    }

    public String getLanguagesRequired() {
        return languagesRequired;
    }

    public void setLanguagesRequired(String languagesRequired) {
        this.languagesRequired = languagesRequired;
    }

    public Instant getPostedAt() {
        return postedAt;
    }

    public void setPostedAt(Instant postedAt) {
        this.postedAt = postedAt;
    }

    public Boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

}