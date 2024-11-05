GO
CREATE DATABASE IlkopJob;
GO
USE IlkopJob;
GO

-- Tạo bảng Job_seeker (Ứng viên)	
CREATE TABLE Job_Seeker
(
    job_seeker_id    INT IDENTITY (1,1) PRIMARY KEY,
    full_name        NVARCHAR(255),
    email            NVARCHAR(255) UNIQUE NOT NULL,
    password         NVARCHAR(255)        NOT NULL,
    phone            NVARCHAR(15),
    profile_picture  NVARCHAR(255),
    bio              NVARCHAR(MAX),
    address          NVARCHAR(255),
    date_of_birth    DATE,
    gender           NVARCHAR(10),
    experience_years INT,
    education        NVARCHAR(255),
    skills           NVARCHAR(MAX),
    languages        NVARCHAR(MAX),
    linkedin_profile NVARCHAR(255),
    portfolio        NVARCHAR(255),
    created_at       DATETIME DEFAULT GETDATE()
);
GO

-- Tạo bảng Employer (Nhà tuyển dụng)	
CREATE TABLE Employer
(
    employer_id         INT IDENTITY (1,1) PRIMARY KEY,
    company_name        NVARCHAR(255),
    email               NVARCHAR(255) UNIQUE NOT NULL,
    password            NVARCHAR(255)        NOT NULL,
    phone               NVARCHAR(15),
    company_logo        NVARCHAR(255),
    company_description NVARCHAR(MAX),
    address             NVARCHAR(255),
    website             NVARCHAR(255),
    industry            NVARCHAR(100),
    employee_size       INT,
    founded_year        INT,
    created_at          DATETIME DEFAULT GETDATE()
);
GO

-- Tạo bảng Job_Posting (Tin tuyển dụng)	
CREATE TABLE Job_Posting
(
    job_posting_id      INT IDENTITY (1,1) PRIMARY KEY,
    employer_id         INT FOREIGN KEY REFERENCES Employer (employer_id),
    job_title           NVARCHAR(255) NOT NULL,
    job_description     NVARCHAR(MAX),
    job_category        NVARCHAR(100),
    location            NVARCHAR(255),
    salary              DECIMAL(18, 2),
    work_type           NVARCHAR(50),
    experience_required NVARCHAR(255),
    education_required  NVARCHAR(255),
    skills_required     NVARCHAR(MAX),
    languages_required  NVARCHAR(MAX),
    posted_at           DATETIME DEFAULT GETDATE(),
    is_active           BIT      DEFAULT 1
);
GO

-- Tạo bảng Application (Đơn ứng tuyển)	
CREATE TABLE Application
(
    application_id INT IDENTITY (1,1) PRIMARY KEY,
    job_seeker_id  INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),
    job_posting_id INT FOREIGN KEY REFERENCES Job_Posting (job_posting_id),
    cover_letter   NVARCHAR(MAX),
    resume         NVARCHAR(255),
    applied_at     DATETIME                                                           DEFAULT GETDATE(),
    status         NVARCHAR(20) CHECK (status IN ('pending', 'accepted', 'rejected')) DEFAULT 'pending' -- Trạng thái đơn ứng tuyển
);
GO

-- Tạo bảng Saved_Jobs (Danh sách công việc đã lưu)	
CREATE TABLE Saved_Jobs
(
    saved_job_id   INT IDENTITY (1,1) PRIMARY KEY,
    job_seeker_id  INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),
    job_posting_id INT FOREIGN KEY REFERENCES Job_Posting (job_posting_id),
    saved_at       DATETIME DEFAULT GETDATE()
);
GO

-- Tạo bảng Notification (Thông báo)	
CREATE TABLE Notification
(
    notification_id         INT IDENTITY (1,1) PRIMARY KEY,
    recipient_job_seeker_id INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),
    recipient_employer_id   INT FOREIGN KEY REFERENCES Employer (employer_id),
    content                 NVARCHAR(MAX),
    link_url                NVARCHAR(255),
    status                  NVARCHAR(20) CHECK (status IN ('unread', 'read')) DEFAULT 'unread',
    created_at              DATETIME                                          DEFAULT GETDATE()
);
GO

-- Tạo bảng Message (Tin nhắn)	
CREATE TABLE Message
(
    message_id              INT IDENTITY (1,1) PRIMARY KEY,
    sender_job_seeker_id    INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),
    sender_employer_id      INT FOREIGN KEY REFERENCES Employer (employer_id),
    recipient_job_seeker_id INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),-- ID người nhận (Ứng viên)
    recipient_employer_id   INT FOREIGN KEY REFERENCES Employer (employer_id),
    message_content         NVARCHAR(MAX),
    sent_at                 DATETIME DEFAULT GETDATE(),
    is_read                 BIT      DEFAULT 0
);
GO

-- Tạo bảng Notification_Settings (Cài đặt thông báo)	
CREATE TABLE Notification_Settings
(
    notification_setting_id INT IDENTITY (1,1) PRIMARY KEY,
    job_seeker_id           INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id),
    employer_id             INT FOREIGN KEY REFERENCES Employer (employer_id),
    email_notifications     BIT DEFAULT 1,
    sms_notifications       BIT DEFAULT 0,
    push_notifications      BIT DEFAULT 1
);
GO
-- Tạo bảng WorkHistory (Lịch sử làm việc)	
CREATE TABLE Work_History
(
    work_history_id INT IDENTITY (1,1) PRIMARY KEY,
    job_seeker_id   INT FOREIGN KEY REFERENCES Job_seeker (job_seeker_id), -- ID của ứng viên (Khóa ngoại, liên kết với bảng Job_seeker)
    job_title       NVARCHAR(255) NOT NULL,
    company_name    NVARCHAR(255) NOT NULL,
    start_date      DATETIME      NOT NULL,
    end_date        DATETIME,
    job_description NVARCHAR(MAX),
    created_at      DATETIME DEFAULT GETDATE()
);
GO	