# Servlets Demo - Student Management System

A Java Servlet-based web application for managing student records with PostgreSQL database integration. This project demonstrates CRUD (Create, Read, Update, Delete) operations using Jakarta Servlets and JDBC.

## 📋 Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Database Setup](#database-setup)
- [Installation & Setup](#installation--setup)
- [Running the Application](#running-the-application)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Screenshots](#screenshots)
- [Troubleshooting](#troubleshooting)

## ✨ Features

- **Student Registration**: Add new student records with ID, Name, and Age
- **Update Student**: Modify existing student's age
- **Delete Student**: Remove student records from the database
- **PostgreSQL Integration**: Persistent data storage using PostgreSQL database
- **Form Validation**: Client-side validation with required fields
- **Responsive UI**: Clean and simple JSP-based user interface

## 🛠️ Technologies Used

- **Java**: JDK 21
- **Jakarta Servlet API**: 5.0.0
- **Apache Tomcat**: 10.1.49
- **PostgreSQL**: 42.6.0 (JDBC Driver)
- **Maven**: 3.9.11 (Build Tool)
- **JSP**: JavaServer Pages for frontend
- **JDBC**: Database connectivity

## 📁 Project Structure

```
servletsdemo/
├── src/
│   ├── main/
│   │   ├── java/servletsdemo/
│   │   │   ├── Register.java       # Servlet for student registration
│   │   │   ├── Update.java         # Servlet for updating student age
│   │   │   ├── Delete.java         # Servlet for deleting students
│   │   │   ├── Service.java        # Database service layer (CRUD operations)
│   │   │   ├── Student.java        # Student model/POJO class
│   │   │   ├── Login.java          # Login servlet (placeholder)
│   │   │   └── MyServlet.java      # Generic servlet (placeholder)
│   │   └── webapp/
│   │       ├── Register.jsp        # Student registration form
│   │       ├── Update.jsp          # Student update form
│   │       ├── Delete.jsp          # Student delete form
│   │       ├── index.jsp           # Home page
│   │       └── WEB-INF/
│   │           └── web.xml         # Deployment descriptor
├── pom.xml                         # Maven configuration
├── database_setup.sql              # Database schema script
└── README.md                       # Project documentation
```

## 📦 Prerequisites

Before running this application, ensure you have the following installed:

1. **Java Development Kit (JDK)**: Version 21 or higher
   ```bash
   java -version
   ```

2. **Apache Maven**: Version 3.6 or higher
   ```bash
   mvn -version
   ```

3. **Apache Tomcat**: Version 10.1.x
   - Download from: https://tomcat.apache.org/download-10.cgi

4. **PostgreSQL**: Version 12 or higher
   - Download from: https://www.postgresql.org/download/

5. **IDE** (Optional but recommended):
   - Eclipse IDE for Enterprise Java and Web Developers
   - IntelliJ IDEA Ultimate
   - VS Code with Java extensions

## 🗄️ Database Setup

### Step 1: Create Database

Open PostgreSQL command line (psql) or pgAdmin and run:

```sql
CREATE DATABASE school;
```

### Step 2: Create Table

Connect to the `school` database and execute the provided SQL script:

```sql
-- Run the database_setup.sql file or execute:
CREATE TABLE student1 (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL
);
```

### Step 3: Verify Database Connection

Update the database credentials in `Service.java` if needed:

```java
private static String url = "jdbc:postgresql://localhost:5432/school";
private static String user = "postgres";
private static String password = "123";  // Change to your PostgreSQL password
```

## 🚀 Installation & Setup

### Option 1: Using Eclipse IDE

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ashishmishra3648/SERVLETS.git
   cd SERVLETS/servletsdemo
   ```

2. **Import into Eclipse**:
   - File → Import → Maven → Existing Maven Projects
   - Browse to the `servletsdemo` folder
   - Click Finish

3. **Configure Tomcat Server**:
   - Window → Preferences → Server → Runtime Environments
   - Add Apache Tomcat 10.1
   - Point to your Tomcat installation directory

4. **Build the project**:
   - Right-click on project → Maven → Update Project
   - Right-click on project → Run As → Maven build
   - Goals: `clean install`

### Option 2: Using Command Line

1. **Clone and navigate**:
   ```bash
   git clone https://github.com/ashishmishra3648/SERVLETS.git
   cd SERVLETS/servletsdemo
   ```

2. **Build with Maven**:
   ```bash
   mvn clean compile
   mvn package
   ```

3. **Deploy WAR file**:
   - Copy `target/servletsdemo.war` to Tomcat's `webapps` folder
   - Start Tomcat server

## ▶️ Running the Application

### Using Eclipse:

1. Right-click on the project
2. Select **Run As** → **Run on Server**
3. Choose Apache Tomcat 10.1
4. Click **Finish**

The application will start on: `http://localhost:8080/servletsdemo/`

### Using Command Line:

1. Start Tomcat:
   ```bash
   # Windows
   cd C:\path\to\tomcat\bin
   startup.bat

   # Linux/Mac
   cd /path/to/tomcat/bin
   ./startup.sh
   ```

2. Access the application:
   - Open browser and navigate to: `http://localhost:8080/servletsdemo/`

## 📖 Usage

### Register a New Student

1. Navigate to: `http://localhost:8080/servletsdemo/Register.jsp`
2. Fill in the form:
   - **ID**: Enter a unique integer ID
   - **Name**: Enter student's name
   - **Age**: Enter student's age
3. Click **REGISTER**
4. Success/Failure message will be displayed

### Update Student Age

1. Navigate to: `http://localhost:8080/servletsdemo/Update.jsp`
2. Enter:
   - **ID**: Student ID to update
   - **Age**: New age value
3. Click **UPDATE**

### Delete a Student

1. Navigate to: `http://localhost:8080/servletsdemo/Delete.jsp`
2. Enter the **ID** of the student to delete
3. Click **DELETE**

## 🔌 API Endpoints

| Method | Endpoint | Description | Parameters |
|--------|----------|-------------|------------|
| POST | `/register` | Register new student | id, name, age |
| POST | `/update` | Update student age | id, age |
| POST | `/delete` | Delete student | id |

## 📸 Screenshots

### Student Registration Form
```
┌─────────────────────────────────┐
│  Student Registration Form      │
├─────────────────────────────────┤
│  ID:   [_____________]          │
│  Name: [_____________]          │
│  Age:  [_____________]          │
│                                 │
│  [    REGISTER    ]             │
└─────────────────────────────────┘
```

## 🐛 Troubleshooting

### Common Issues:

1. **Port 8080 already in use**
   - Solution: Change Tomcat port in `server.xml` or stop the process using port 8080

2. **Database connection failed**
   - Verify PostgreSQL is running
   - Check database credentials in `Service.java`
   - Ensure `school` database exists

3. **ClassNotFoundException: org.postgresql.Driver**
   - Run `mvn clean install` to download dependencies
   - Verify `postgresql` dependency in `pom.xml`

4. **404 Error - Page not found**
   - Ensure Tomcat is running
   - Check the context path: `/servletsdemo/`
   - Verify deployment in Tomcat's webapps folder

5. **Compilation errors**
   - Ensure JDK 21 is configured
   - Run `mvn clean compile`
   - Check Maven dependencies are downloaded

## 📝 Database Schema

```sql
Table: student1
┌────────┬──────────────┬──────────┐
│ Column │ Type         │ Nullable │
├────────┼──────────────┼──────────┤
│ id     │ INTEGER      │ NOT NULL │
│ name   │ VARCHAR(100) │ NOT NULL │
│ age    │ INTEGER      │ NOT NULL │
└────────┴──────────────┴──────────┘
Primary Key: id
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is open source and available for educational purposes.

## 👤 Author

**Ashish Mishra**
- GitHub: [@ashishmishra3648](https://github.com/ashishmishra3648)
- Repository: [SERVLETS](https://github.com/ashishmishra3648/SERVLETS)

## 🙏 Acknowledgments

- Jakarta EE community for servlet specifications
- PostgreSQL team for the excellent database system
- Apache Tomcat team for the servlet container

---

**Note**: This is a learning project demonstrating basic servlet and JDBC concepts. For production applications, consider using frameworks like Spring Boot with JPA/Hibernate for better security, validation, and maintainability.
