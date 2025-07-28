# Cloud Resume Challenge 🌩️

This repository contains the code and infrastructure for my implementation of the **Cloud Resume Challenge** — a hands-on cloud project designed by Forrest Brazeal to showcase cloud skills in action.

<<<<<<< HEAD
### 🔗 Live Site  
=======
### Live Site  
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589
🌐 [crc.awsportfolio.jayfrench.cloud](https://crc.awsportfolio.jayfrench.cloud)

---

<<<<<<< HEAD
## 🧱 What This Project Demonstrates
=======
## What This Project Demonstrates
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

This project showcases a full-stack cloud deployment using **AWS**, **Terraform**, and **GitHub Actions**, with a frontend static resume site hosted via S3 and delivered through CloudFront.

---

<<<<<<< HEAD
## 🚀 Architecture Overview
=======
## Architecture Overview
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

- **Frontend**  
  - HTML/CSS/JS resume hosted in an S3 bucket
  - Secured using S3 bucket policies and CloudFront Origin Access Control (OAC)
  - HTTPS enabled via ACM + CloudFront

- **Infrastructure as Code (IaC)**  
  - All AWS resources provisioned using **Terraform**
  - Separate `terraform/` directory with reusable, modular configuration

- **CI/CD Pipeline**  
  - GitHub Actions automatically:
    - Syncs the `/site` folder to S3 on `main` branch push
    - Invalidates the CloudFront cache for immediate updates

---

<<<<<<< HEAD
## 🛠️ Project Structure
=======
## Project Structure
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

```

.
├── .github/
│   └── workflows/
│       └── deploy.yml        # GitHub Actions workflow for CI/CD
├── site/                     # Static frontend (HTML, CSS, JS)
│   ├── index.html
│   └── ...
├── terraform/                # Infrastructure as Code
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── README.md

```

---

<<<<<<< HEAD
## 🔐 Security Considerations
=======
## Security Considerations
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

- **IAM users** for Terraform and GitHub Actions follow **least privilege** principle.
- **S3 bucket** is private, accessible only through CloudFront.
- **HTTPS enforced** across the site using ACM-managed TLS certificate.

---

<<<<<<< HEAD
## ✅ Skills Demonstrated
=======
## Skills Demonstrated
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

- AWS: S3, CloudFront, IAM, Route 53, ACM
- DevOps: GitHub Actions for CI/CD
- Terraform: Declarative infrastructure provisioning
- Git: Version control and collaboration
- Security: Least privilege access control and HTTPS enforcement
- Domain Management: Custom subdomain routing via Route 53

---

<<<<<<< HEAD
## 📅 Future Enhancements
=======
## Future Enhancements
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589

- Add a live visitor counter using DynamoDB + Lambda + API Gateway
- Integrate backend logging and metrics (e.g., CloudWatch dashboards)
- Refactor to Terraform modules for reusable architecture

---

<<<<<<< HEAD
## 🙏 Acknowledgments

Inspired by the [Cloud Resume Challenge](https://cloudresumechallenge.dev/) by Forrest Brazeal.

=======
## Acknowledgments

Inspired by the [Cloud Resume Challenge](https://cloudresumechallenge.dev/) by Forrest Brazeal.
Thank you to all of those who may have advised on this project, and those who have advised on my career as a whole.
>>>>>>> d3cb431b79787554ebe5f6b16b91a8f3bc69e589
