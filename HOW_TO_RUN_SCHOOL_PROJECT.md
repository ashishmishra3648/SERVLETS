# How to Run the SCHOOL Project and See the Output

## 📋 Step-by-Step Instructions

### Method 1: Run the JSP File Directly (Recommended)

1. **Right-click on:** `Display.jsp`
   - **Location:** `c:\Users\LENOVO\eclipse-workspace\SCHOOL\src\main\webapp\Display.jsp`
   
2. **Select:** `Run As` → `Run on Server`

3. **However**, this will show an error because `Display.jsp` needs data from the servlet!

---

### Method 2: Access via Servlet URL (CORRECT METHOD) ✅

Since `Display.jsp` expects data from the servlet, you need to access it through the servlet:

1. **First, start your server:**
   - Right-click on the **SCHOOL project**
   - Select `Run As` → `Run on Server`
   - OR right-click on any JSP/Servlet and select `Run on Server`

2. **Then, open your browser and navigate to:**
   ```
   http://localhost:8080/SCHOOL/getall
   ```

3. **This URL will:**
   - Call the `DisplayAll` servlet (mapped to `/getall`)
   - The servlet will fetch student data from the database
   - Forward the data to `Display.jsp`
   - Display the beautiful UI with sort buttons

---

## 🎯 Understanding the Flow

```
Browser Request
    ↓
http://localhost:8080/SCHOOL/getall
    ↓
DisplayAll.java Servlet (@WebServlet("/getall"))
    ↓
Fetches data from database via StudentService
    ↓
Sets data as request attribute
    ↓
Forwards to Display.jsp
    ↓
Display.jsp renders the HTML with buttons and table
    ↓
User sees the output in browser
```

---

## 🔧 Files Involved

### 1. **DisplayAll.java** (Servlet - Backend)
- **Path:** `src/main/java/StudentManagement/driver/DisplayAll.java`
- **URL Mapping:** `/getall`
- **Purpose:** Fetches data and forwards to JSP

### 2. **Display.jsp** (View - Frontend)
- **Path:** `src/main/webapp/Display.jsp`
- **Purpose:** Displays the UI with buttons and table
- **Note:** Cannot run directly, needs data from servlet

---

## 🌐 URLs to Access

After starting the server, use these URLs:

| URL | Description |
|-----|-------------|
| `http://localhost:8080/SCHOOL/getall` | Show all students (unsorted) |
| `http://localhost:8080/SCHOOL/getall?sortBy=name` | Students sorted by name |
| `http://localhost:8080/SCHOOL/getall?sortBy=age` | Students sorted by age |

---

## ✅ Quick Start

**Easiest way to run:**

1. In Eclipse, right-click on **`Display.jsp`**
2. Select `Run As` → `Run on Server`
3. When the browser opens, **manually change the URL** to:
   ```
   http://localhost:8080/SCHOOL/getall
   ```
4. Press Enter
5. You should see the Student Management System page with the three buttons!

---

## 🐛 Troubleshooting

**If you see a blank page or error:**
- Make sure your PostgreSQL database is running
- Check that the `school` database exists
- Verify the `student` table has data
- Check the database credentials in `StudentService.java`

**If the servlet is not found:**
- Make sure the project is deployed to the server
- Clean and rebuild the project
- Restart the server

---

## 📸 What You Should See

When you access `http://localhost:8080/SCHOOL/getall`, you should see:

1. **Heading:** "Student Management System"
2. **Three green buttons:**
   - Show All
   - Sort by Name
   - Sort by Age
3. **A table** with columns: ID, AGE, NAME
4. **Student data** populated from your database

Click the buttons to see the sorting in action!

---

**Created:** December 22, 2025
**Status:** ✅ Ready to Run
