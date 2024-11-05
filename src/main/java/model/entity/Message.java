package model.entity;

import model.entity.Employer;
import javax.persistence.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Nationalized;

import java.time.Instant;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "message_id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sender_job_seeker_id")
    private JobSeeker senderJobSeeker;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sender_employer_id")
    private Employer senderEmployer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipient_job_seeker_id")
    private JobSeeker recipientJobSeeker;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipient_employer_id")
    private Employer recipientEmployer;

    @Nationalized
    @Lob
    @Column(name = "message_content")
    private String messageContent;

    @ColumnDefault("getdate()")
    @Column(name = "sent_at")
    private Instant sentAt;

    @ColumnDefault("0")
    @Column(name = "is_read")
    private Boolean isRead;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public JobSeeker getSenderJobSeeker() {
        return senderJobSeeker;
    }

    public void setSenderJobSeeker(JobSeeker senderJobSeeker) {
        this.senderJobSeeker = senderJobSeeker;
    }

    public Employer getSenderEmployer() {
        return senderEmployer;
    }

    public void setSenderEmployer(Employer senderEmployer) {
        this.senderEmployer = senderEmployer;
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

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public Instant getSentAt() {
        return sentAt;
    }

    public void setSentAt(Instant sentAt) {
        this.sentAt = sentAt;
    }

    public Boolean getIsRead() {
        return isRead;
    }

    public void setIsRead(Boolean isRead) {
        this.isRead = isRead;
    }

}