# 🎓 Complete Student Management System - SCHOOL Project

## 📋 Project Overview

A full-featured web-based Student Management System with complete CRUD operations and sorting functionality.

---

## ✨ Features

### ✅ Complete CRUD Operations
- **Create** - Add new students
- **Read** - View all students with sorting options
- **Update** - Edit existing student information
- **Delete** - Remove students from the system

### 🔄 Sorting Capabilities
- **Sort by Name** - Alphabetical order (A-Z)
- **Sort by Age** - Numerical order (youngest to oldest)

### 🎨 Modern UI/UX
- Beautiful gradient designs
- Responsive layout
- Smooth animations and transitions
- Intuitive navigation
- Confirmation dialogs for destructive actions

---

## 📁 Project Structure

```
SCHOOL/
├── src/main/java/StudentManagement/
│   ├── entity/
│   │   └── Student.java              # Student model class
│   ├── service/
│   │   └── StudentService.java       # Database operations
│   └── driver/
│       ├── StudentDriver.java        # Register servlet
│       ├── DisplayAll.java           # Display/List servlet
│       ├── EditStudent.java          # Edit servlet
│       ├── UpdateStudent.java        # Update servlet
│       └── DeleteStudent.java        # Delete servlet
└── src/main/webapp/
    ├── index.jsp                     # Landing page
    ├── register.jsp                  # Add student form
    ├── Display.jsp                   # Student list page
    └── update.jsp                    # Edit student form
```

---

## 🗄️ Database Schema

### Table: `student`

```sql
CREATE TABLE student (
    id INTEGER PRIMARY KEY,
    age INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL
);
```

### Database Configuration
- **Database:** PostgreSQL
- **Database Name:** `school`
- **Host:** `localhost:5432`
- **Username:** `postgres`
- **Password:** `123`

---

## 🚀 How to Run

### Method 1: Direct Access (Recommended)

1. **Start the server:**
   - Right-click on **SCHOOL project** → `Run As` → `Run on Server`

2. **Access the application:**
   - Open browser: `http://localhost:8080/SCHOOL/`
   - This will show the landing page with two main options

### Method 2: Direct URL Access

Access any page directly:

```
http://localhost:8080/SCHOOL/              → Landing page
http://localhost:8080/SCHOOL/register.jsp  → Add student
http://localhost:8080/SCHOOL/getall        → View all students
```

---

## 🔗 URL Mappings

| URL | Servlet | Method | Description |
|-----|---------|--------|-------------|
| `/register` | StudentDriver | POST | Add new student |
| `/getall` | DisplayAll | GET | Display all students |
| `/getall?sortBy=name` | DisplayAll | GET | Display sorted by name |
| `/getall?sortBy=age` | DisplayAll | GET | Display sorted by age |
| `/edit?id={id}` | EditStudent | GET | Load student for editing |
| `/update` | UpdateStudent | POST | Update student data |
| `/delete?id={id}` | DeleteStudent | GET | Delete student |

---

## 📝 User Workflow

### 1️⃣ Adding a Student
1. Click "Add New Student" on landing page
2. Fill in: Student ID, Name, Age
3. Click "Add Student"
4. Redirected to student list showing new entry

### 2️⃣ Viewing Students
1. Click "View All Students" on landing page
2. See complete list with all students
3. Use sort buttons to organize data:
   - **Show All** - Default order
   - **Sort by Name** - Alphabetical
   - **Sort by Age** - Numerical

### 3️⃣ Editing a Student
1. On student list, click "Edit" button for desired student
2. Update form appears with pre-filled data
3. Modify Name and/or Age (ID is read-only)
4. Click "Update Student"
5. Redirected to updated student list

### 4️⃣ Deleting a Student
1. On student list, click "Delete" button
2. Confirm deletion in popup dialog
3. Student removed and list refreshes

---

## 🎨 UI Features

### Color Scheme
- **Primary Gradient:** Purple to Violet (#667eea → #764ba2)
- **Success Gradient:** Teal to Green (#11998e → #38ef7d)
- **Warning Gradient:** Pink to Red (#f093fb → #f5576c)
- **Add Button:** Pink to Yellow (#fa709a → #fee140)
- **Delete Button:** Orange to Yellow (#fc4a1a → #f7b733)

### Interactive Elements
- ✅ Hover effects on all buttons
- ✅ Smooth transitions
- ✅ Responsive table rows
- ✅ Confirmation dialogs
- ✅ Form validation
- ✅ Mobile-responsive design

---

## 🔧 Technical Details

### Technologies Used
- **Backend:** Java Servlets (Jakarta EE)
- **Frontend:** JSP, HTML5, CSS3
- **Database:** PostgreSQL
- **Server:** Apache Tomcat
- **Architecture:** MVC Pattern

### Key Classes

#### Student.java
```java
- int id
- int age
- String name
+ getters/setters
+ constructor
```

#### StudentService.java
```java
+ save(Student) : int
+ getall() : List<Student>
+ getAllSortedByName() : List<Student>
+ getAllSortedByAge() : List<Student>
+ update(Student) : int
+ delete(int) : int
+ getById(int) : Student
```

---

## 🐛 Troubleshooting

### Database Connection Issues
**Problem:** Cannot connect to database

**Solution:**
1. Ensure PostgreSQL is running
2. Verify database `school` exists
3. Check credentials in `StudentService.java`
4. Confirm table `student` is created

### Servlet Not Found (404)
**Problem:** URL returns 404 error

**Solution:**
1. Check `@WebServlet` annotations
2. Clean and rebuild project
3. Restart server
4. Verify project is deployed

### Data Not Displaying
**Problem:** Blank table or no data

**Solution:**
1. Add some students first
2. Check database has data: `SELECT * FROM student;`
3. Verify servlet is forwarding to JSP correctly

---

## 📊 Sample Data

To test the application, insert sample data:

```sql
INSERT INTO student (id, age, name) VALUES
(1, 20, 'Alice Johnson'),
(2, 22, 'Bob Smith'),
(3, 19, 'Charlie Brown'),
(4, 21, 'Diana Prince'),
(5, 23, 'Eve Wilson');
```

---

## 🎯 Testing Checklist

- [ ] Add a new student
- [ ] View all students
- [ ] Sort by name (A-Z)
- [ ] Sort by age (ascending)
- [ ] Edit a student's information
- [ ] Delete a student
- [ ] Verify database updates
- [ ] Test on mobile/tablet view
- [ ] Check all buttons work
- [ ] Verify delete confirmation

---

## 📈 Future Enhancements (Optional)

- 🔍 Search functionality
- 📄 Pagination for large datasets
- 📧 Email field
- 📱 Phone number field
- 🎓 Grade/Class information
- 📊 Export to CSV/PDF
- 🔐 User authentication
- 📸 Student photos

---

## 📞 Quick Reference

### Start Application
```
Right-click SCHOOL project → Run As → Run on Server
```

### Access Application
```
http://localhost:8080/SCHOOL/
```

### View All Students
```
http://localhost:8080/SCHOOL/getall
```

---

## ✅ Status

**Project Status:** ✅ Complete and Fully Functional

**Last Updated:** December 22, 2025

**Features Implemented:**
- ✅ Add Student
- ✅ View All Students
- ✅ Edit Student
- ✅ Delete Student
- ✅ Sort by Name
- ✅ Sort by Age
- ✅ Modern UI/UX
- ✅ Responsive Design

---

**Enjoy managing your students! 🎓**
