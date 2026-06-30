# Day 39 – CI/CD Concepts

## Objective

Understand the fundamentals of CI/CD before writing pipelines.

---

# CI vs CD vs Continuous Deployment

## Continuous Integration (CI)

Continuous Integration is the practice of frequently integrating code changes into a shared repository. Whenever a developer pushes code, the application is automatically built and tested to detect bugs and integration issues early.

**Example:**
A developer pushes code to GitHub. The CI pipeline automatically builds the application and runs tests. If the tests fail, the developer fixes them before continuing.

---

## Continuous Delivery (CD)

Continuous Delivery is the practice of automatically preparing an application for release after it passes all build and test stages. The application is always ready to be deployed, but a human approves the final deployment to production.

**Example:**
A developer pushes code, the application is built, tested, and deployed to a staging environment. After QA approval, a team member manually deploys it to production.

---

## Continuous Deployment

Continuous Deployment is the practice of automatically deploying code to the production environment after it successfully passes the build and test stages. No manual approval is required.

**Example:**
A developer pushes code to GitHub. The pipeline builds the application, runs tests, and automatically deploys it to production when all tests pass.

---

# Pipeline Anatomy

## Trigger

An event that starts the CI/CD pipeline.

**Example:** A developer pushes code to GitHub.

---

## Stage

A logical phase in a CI/CD pipeline that contains one or more related jobs.

**Examples:** Test, Build, Deploy.

---

## Job

A unit of work inside a stage that performs a specific task.

**Examples:** Run Tests, Build Docker Image, Deploy Application.

---

## Step

A single action or command inside a job. Multiple steps execute in sequence to complete a job.

---

## Runner

A machine that executes the jobs in a CI/CD pipeline. It can be a GitHub-hosted runner, self-hosted server, or cloud virtual machine.

---

## Artifact

An output file produced by a job that can be used in later stages of the pipeline without rebuilding the application.

**Example:** A Docker image or `app.jar` file created during the build stage.

---

# Pipeline Diagram

[Daigram](screenshot/pipeline.png)

---

# Open Source Workflow Exploration

**Workflow Name:** Run app

### Trigger

- `workflow_dispatch` (Manual trigger from GitHub Actions)

### Jobs

- 1 Job: `deploy`

### What it does

- Checks out the repository code.
- Installs Docker on a self-hosted runner.
- Runs a command to verify Docker is available.

---

# Key Learnings

- CI helps detect bugs early by automatically building and testing code.
- Continuous Delivery requires manual approval before production deployment, whereas Continuous Deployment deploys automatically.
- A CI/CD pipeline consists of Trigger, Stages, Jobs, Steps, Runner, and Artifacts working together to automate software delivery.
