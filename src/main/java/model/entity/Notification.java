package model.entity;

import model.entity.Employer;
import javax.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import java.time.Instant;

@Entity
public class Notification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "notification_id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipient_job_seeker_id")
    private JobSeeker recipientJobSeeker;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipient_employer_id")
    private Employer recipientEmployer;

    @Nationalized
    @Lob
    @Column(name = "content")
    private String content;

    @Nationalized
    @Column(name = "link_url")
    private String linkUrl;

    @Nationalized
    @ColumnDefault("'unread'")
    @Column(name = "status", length = 20)
    private String status;

    @ColumnDefault("getdate()")
    @Column(name = "created_at")
    private Instant createdAt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public JobSeeker getRecipientJobSeeker() {
        return recipientJobSeeker;
    }

    public void setRecipientJobSeeker(JobSeeker recipientJobSeeker) {
        this.recipientJobSeeker = recipientJobSeeker;
    }

    public Employer getRecipientEmployer() {
        return recipientEmployer;
    }

    public void setRecipientEmployer(Employer recipientEmployer) {
        this.recipientEmployer = recipientEmployer;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Instant getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Instant createdAt) {
        this.createdAt = createdAt;
    }

}