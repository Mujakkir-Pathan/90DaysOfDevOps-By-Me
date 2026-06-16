# Day 30 – Dockerfile Challenge

## Task 1: Your First Dockerfile

**Screenshot:**
![image](screenshots/task1.1.png")

**Screenshot:**
![image](screenshots/task1.3.png")


---

## Task 2: Dockerfile Instructions


**Screenshot:**
![image](screenshots/task2.png")

---

## Task 3: CMD vs ENTRYPOINT

### Notes

#### CMD

* Provides a default command for the container.
* Can be overridden when starting the container.
* Used when users may need to run different commands.

#### ENTRYPOINT

* Defines the main executable for the container.
* Additional arguments are appended to it.
* Used when the container should always perform a specific task.

### Verification

**Screenshot:**
![image](screenshots/task3.1.png")

**Screenshot:** 
![image](screenshots/task3.2.png")
![image](screenshots/task3.3.png")

---

## Task 4: Build a Simple Web App Image

**Screenshot:**
![image](screenshots/task4.png")

**Screenshot:** 
![image](screenshots/task4.2.png")

---

## Task 5: .dockerignore

**Screenshot:** 
![image](screenshots/task5.png")

---

## Task 6: Build Optimization

### Observation

During rebuild, Docker reused previously built layers and displayed:

```text
Using cache
```

### Notes

Docker uses layer caching to speed up builds.

Each Dockerfile instruction creates a layer.

If a layer has not changed, Docker reuses the cached layer instead of rebuilding it.

Layer order matters because when a layer changes, all subsequent layers must be rebuilt.

Frequently changing instructions should be placed near the bottom of the Dockerfile to maximize cache reuse and improve build speed.

### Verification

**Screenshot:** Rebuild output showing cached layers
![image](screenshots/task5.png")


---

# Key Learnings

* Built custom Docker images using Dockerfiles.
* Used Dockerfile instructions such as FROM, RUN, COPY, WORKDIR, EXPOSE, CMD, and ENTRYPOINT.
* Understood the difference between CMD and ENTRYPOINT.
* Created and deployed a simple static website using Nginx.
* Used .dockerignore to optimize build context.
* Learned Docker layer caching and build optimization techniques.

# Conclusion

Successfully completed all Dockerfile challenge tasks and gained hands-on experience with image creation, container execution, web application deployment, build optimization, and Docker best practices.

