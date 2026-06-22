# Day 33 – Docker Compose

## Task 1: Install & Verify

* Verified Docker Compose installation.
* Verified Docker Compose version.

![Screenshot](screenshots/task1.png) 


---

## Task 2: First Compose File

* Created `compose-basics` directory.
* Created `docker-compose.yml`.
* Started Nginx container using Docker Compose.
![Screenshot](screenshots/task2.1.png)
* Accessed Nginx page in browser.
![Screenshot](screenshots/task2.2.png) 
* Stopped and removed the container. 

---

## Task 3: WordPress + MySQL Setup

### docker-compose.yml

* Created WordPress and MySQL services.
* Configured named volume for MySQL.
* Verified WordPress installation page.
* Completed WordPress setup.
* Verified data persistence after restart.
![Screenshot](screenshots/task3.png) 
![Screenshot](screenshots/task3.1.png) 
![Screenshot](screenshots/task3.4.png) 


---

## Task 4: Compose Commands

Practiced the following commands:

* Start services in detached mode
![Screenshot](screenshots/task4.1.png) 


* View running services
![Screenshot](screenshots/task4.2.png) 


* View logs of all services
![Screenshot](screenshots/task4.3.png)

 
* View logs of a specific service
![Screenshot](screenshots/task4.4.png) 


* Stop services without removing
![Screenshot](screenshots/task4.5.png) 

* Remove containers and networks
![Screenshot](screenshots/task4.6.png) 

* Rebuild images
![Screenshot](screenshots/task4.7.png) 


---

## Task 5: Environment Variables


* Added environment variables directly in `docker-compose.yml`.
* Created `.env` file.
![Screenshot](screenshots/task5.1.png)

* Referenced variables using `${VARIABLE_NAME}` syntax.
* Verified variables were loaded successfully.
![Screenshot](screenshots/task5.3.png)

* Website remained accessible after using `.env`.

---

## Outcome

Successfully deployed and managed multi-container applications using Docker Compose.

