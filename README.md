# Cloud Resume Challenge 🌩️

This repository contains the code and infrastructure for my implementation of the **Cloud Resume Challenge** — a hands-on cloud project designed by Forrest Brazeal to showcase cloud skills in action.

### 🔗 Live Site  
🌐 [crc.awsportfolio.jayfrench.cloud](https://crc.awsportfolio.jayfrench.cloud)

---

## 🧱 What This Project Demonstrates

This project showcases a full-stack cloud deployment using **AWS**, **Terraform**, and **GitHub Actions**, with a frontend static resume site hosted via S3 and delivered through CloudFront.

---

## 🚀 Architecture Overview

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

## 🛠️ Project Structure

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

## 🔐 Security Considerations

- **IAM users** for Terraform and GitHub Actions follow **least privilege** principle.
- **S3 bucket** is private, accessible only through CloudFront.
- **HTTPS enforced** across the site using ACM-managed TLS certificate.

---

## ✅ Skills Demonstrated

- AWS: S3, CloudFront, IAM, Route 53, ACM
- DevOps: GitHub Actions for CI/CD
- Terraform: Declarative infrastructure provisioning
- Git: Version control and collaboration
- Security: Least privilege access control and HTTPS enforcement
- Domain Management: Custom subdomain routing via Route 53

---

## 📅 Future Enhancements

- Add a live visitor counter using DynamoDB + Lambda + API Gateway
- Integrate backend logging and metrics (e.g., CloudWatch dashboards)
- Refactor to Terraform modules for reusable architecture

---

## 🙏 Acknowledgments

Inspired by the [Cloud Resume Challenge](https://cloudresumechallenge.dev/) by Forrest Brazeal.

