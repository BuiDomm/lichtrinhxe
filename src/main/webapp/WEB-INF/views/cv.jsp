<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CV Builder</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                margin: 0;
                padding: 20px;
            }
            .container {
                max-width: 800px;
                margin: auto;
                padding: 20px;
                background: #fff;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h1, h2 {
                color: #333;
            }
            input, textarea, button {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border-radius: 4px;
                border: 1px solid #ddd;
            }
            button {
                cursor: pointer;
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
                border: none;
            }
            button:hover {
                background-color: #45a049;
            }
            .section {
                margin-top: 20px;
            }
            .add-btn, .remove-btn {
                width: auto;
                margin-top: 5px;
                font-size: 14px;
            }
            .remove-btn {
                background-color: #f44336;
            }
            .cv-preview {
                margin-top: 30px;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 5px;
                background-color: #fafafa;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h1>CV Builder</h1>

            <!-- Personal Information -->
            <label for="name">Full Name</label>
            <input type="text" id="name" placeholder="Enter your name">

            <label for="title">Job Title</label>
            <input type="text" id="title" placeholder="Enter your job title">

            <label for="email">Email</label>
            <input type="email" id="email" placeholder="Enter your email">

            <label for="phone">Phone</label>
            <input type="tel" id="phone" placeholder="Enter your phone number">

            <label for="summary">Professional Summary</label>
            <textarea id="summary" rows="4" placeholder="Write a brief summary about yourself"></textarea>

            <!-- Work Experience Section -->
            <div class="section" id="experience-section">
                <h2>Work Experience</h2>
                <button type="button" class="add-btn" onclick="addExperience()">+ Add Experience</button>
            </div>

            <!-- Skills Section -->
            <div class="section" id="skills-section">
                <h2>Skills</h2>
                <button type="button" class="add-btn" onclick="addSkill()">+ Add Skill</button>
            </div>

            <button onclick="generateCV()">View CV</button>
            <button onclick="downloadCV()">Download CV as PDF</button>

            <div class="cv-preview" id="cv-preview">
                <!-- CV Preview will be shown here -->
            </div>
        </div>

        <!-- Importing html2pdf library for PDF download functionality -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
        <script>
                function addExperience() {
                    const expSection = document.getElementById("experience-section");
                    const div = document.createElement("div");
                    div.classList.add("experience-item");
                    div.innerHTML = `
                    <input type="text" placeholder="Job Title">
                    <input type="text" placeholder="Company Name">
                    <textarea rows="3" placeholder="Description of responsibilities and achievements"></textarea>
                    <button type="button" class="remove-btn" onclick="removeItem(this)">Remove</button>
                `;
                    expSection.appendChild(div);
                }

                function addSkill() {
                    const skillSection = document.getElementById("skills-section");
                    const div = document.createElement("div");
                    div.classList.add("skill-item");
                    div.innerHTML = `
                    <input type="text" placeholder="Skill">
                    <button type="button" class="remove-btn" onclick="removeItem(this)">Remove</button>
                `;
                    skillSection.appendChild(div);
                }

                function removeItem(button) {
                    button.parentElement.remove();
                }

                function generateCV() {
                    const name = document.getElementById("name").value;
                    const title = document.getElementById("title").value;
                    const email = document.getElementById("email").value;
                    const phone = document.getElementById("phone").value;
                    const summary = document.getElementById("summary").value;

                    const experiences = Array.from(document.querySelectorAll(".experience-item")).map(exp => {
                        return {
                            jobTitle: exp.children[0].value,
                            company: exp.children[1].value,
                            description: exp.children[2].value
                        };
                    });

                    const skills = Array.from(document.querySelectorAll(".skill-item input")).map(skill => skill.value);

                    let cvContent = `
                    <h2>${name}</h2>
                    <p><strong>${title}</strong></p>
                    <p>Email: ${email}</p>
                    <p>Phone: ${phone}</p>
                    <h3>Professional Summary</h3>
                    <p>${summary}</p>
                    <h3>Work Experience</h3>
                `;

                    experiences.forEach(exp => {
                        cvContent += `
                        <p><strong>${exp.jobTitle}</strong> at ${exp.company}</p>
                        <p>${exp.description}</p>
                    `;
                    });

                    cvContent += "<h3>Skills</h3><ul>";
                    skills.forEach(skill => cvContent += `<li>${skill}</li>`);
                    cvContent += "</ul>";

                    document.getElementById("cv-preview").innerHTML = cvContent;
                }

                function downloadCV() {
                    const cvPreview = document.getElementById("cv-preview");
                    html2pdf(cvPreview);
                }
        </script>

    </body>
</html>
