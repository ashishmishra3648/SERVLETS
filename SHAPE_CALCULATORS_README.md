# Shape Area Calculators - ServletConfig Implementation

## ✅ All 6 Shape Calculators Created!

### Complete List of Shape Calculators:

| Shape | JSP File | Servlet | URL Pattern | Color Theme |
|-------|----------|---------|-------------|-------------|
| 🔵 Circle | `circle.jsp` | `AreaOfCircle.java` | `/area` | Purple |
| 🔺 Triangle | `triangle.jsp` | `AreaOfTriangle.java` | `/triangle` | Green |
| ⭕ Ellipse | `ellipse.jsp` | `AreaOfEllipse.java` | `/ellipse` | Pink-Yellow |
| 🌓 Semi-Circle | `semicircle.jsp` | `AreaOfSemiCircle.java` | `/semicircle` | Blue |
| 🔶 Trapezium | `trapezium.jsp` | `AreaOfTrapezium.java` | `/trapezium` | Pink-Red |
| ▱ Parallelogram | `parallelogram.jsp` | `AreaOfParallelogram.java` | `/parallelogram` | Peach |

---

## 📐 Formulas & ServletConfig Usage

### 1. **Circle Area Calculator**
- **Formula**: Area = π × r²
- **ServletConfig Parameter**: `pi = 3.14159`
- **Inputs**: Radius
- **Files**: `circle.jsp`, `AreaOfCircle.java`

### 2. **Triangle Area Calculator**
- **Formula**: Area = 0.5 × base × height
- **ServletConfig Parameter**: `constant = 0.5`
- **Inputs**: Base, Height
- **Files**: `triangle.jsp`, `AreaOfTriangle.java`

### 3. **Ellipse Area Calculator**
- **Formula**: Area = π × a × b
- **ServletConfig Parameter**: `pi = 3.14159`
- **Inputs**: Semi-Major Axis (a), Semi-Minor Axis (b)
- **Files**: `ellipse.jsp`, `AreaOfEllipse.java`

### 4. **Semi-Circle Area Calculator**
- **Formula**: Area = (π × r²) / 2
- **ServletConfig Parameter**: `pi = 3.14159`
- **Inputs**: Radius
- **Files**: `semicircle.jsp`, `AreaOfSemiCircle.java`

### 5. **Trapezium Area Calculator**
- **Formula**: Area = 0.5 × (a + b) × h
- **ServletConfig Parameter**: `constant = 0.5`
- **Inputs**: Parallel Side 1 (a), Parallel Side 2 (b), Height (h)
- **Files**: `trapezium.jsp`, `AreaOfTrapezium.java`

### 6. **Parallelogram Area Calculator**
- **Formula**: Area = base × height
- **ServletConfig Parameter**: None (follows ServletConfig pattern)
- **Inputs**: Base, Height
- **Files**: `parallelogram.jsp`, `AreaOfParallelogram.java`

---

## 🎨 Design Features

### Each Calculator Has:
✅ **Unique Color Theme** - Different gradient for each shape
✅ **Modern UI/UX** - Glassmorphism, smooth animations
✅ **Responsive Design** - Works on mobile, tablet, desktop
✅ **Emoji Icons** - Visual indicators for each shape
✅ **Info Boxes** - Explaining the formula and ServletConfig usage
✅ **Professional Result Pages** - Showing all calculation details

### Color Schemes:
- **Circle**: Purple (#667eea → #764ba2)
- **Triangle**: Green (#11998e → #38ef7d)
- **Ellipse**: Pink-Yellow (#fa709a → #fee140)
- **Semi-Circle**: Blue (#4facfe → #00f2fe)
- **Trapezium**: Pink-Red (#f093fb → #f5576c)
- **Parallelogram**: Peach (#ffecd2 → #fcb69f)

---

## ⚙️ web.xml Configuration

All servlets are configured with proper init parameters:

```xml
<!-- Example: Triangle Servlet -->
<servlet>
  <servlet-name>TriangleServlet</servlet-name>
  <servlet-class>servletsdemo.AreaOfTriangle</servlet-class>
  <init-param>
    <param-name>constant</param-name>
    <param-value>0.5</param-value>
  </init-param>
</servlet>

<servlet-mapping>
  <servlet-name>TriangleServlet</servlet-name>
  <url-pattern>/triangle</url-pattern>
</servlet-mapping>
```

All 6 servlets follow this pattern!

---

## 🚀 How to Run

### In Eclipse:
1. **Stop Tomcat** if running
2. **Clean the Server**: Right-click Tomcat → Clean
3. **Right-click** on `servletsdemo` project
4. Select **Run As** → **Run on Server**
5. Choose **Apache Tomcat v10.1**
6. Click **Finish**

### Access URLs:
- **Main Menu**: `http://localhost:8080/servletsdemo/`
- **Circle**: `http://localhost:8080/servletsdemo/circle.jsp`
- **Triangle**: `http://localhost:8080/servletsdemo/triangle.jsp`
- **Ellipse**: `http://localhost:8080/servletsdemo/ellipse.jsp`
- **Semi-Circle**: `http://localhost:8080/servletsdemo/semicircle.jsp`
- **Trapezium**: `http://localhost:8080/servletsdemo/trapezium.jsp`
- **Parallelogram**: `http://localhost:8080/servletsdemo/parallelogram.jsp`

---

## 🎯 ServletConfig Implementation Details

### How It Works:

1. **web.xml** defines init parameters for each servlet
2. **JSP forms** submit data to their respective servlets
3. **Servlets** use `getServletConfig().getInitParameter()` to retrieve values
4. Calculations are performed using retrieved parameters
5. **Beautiful result pages** display all details

### Code Example:
```java
ServletConfig config = getServletConfig();
String piParam = config.getInitParameter("pi");
double pi = (piParam != null) ? Double.parseDouble(piParam) : Math.PI;
```

### Why ServletConfig?
- ✅ Externalized configuration
- ✅ Easy to modify values without code changes
- ✅ Servlet-specific parameters
- ✅ Demonstrates proper servlet lifecycle

---

## 📊 Build Status
✅ **Maven build successful** (Exit code: 0)
✅ All 6 JSP files created
✅ All 6 Java servlets created
✅ web.xml properly configured
✅ index.jsp updated with all links
✅ Ready to deploy!

---

## 📝 Files Created

### JSP Files (in `src/main/webapp/`):
1. `circle.jsp`
2. `triangle.jsp`
3. `ellipse.jsp`
4. `semicircle.jsp`
5. `trapezium.jsp`
6. `parallelogram.jsp`

### Java Servlets (in `src/main/java/servletsdemo/`):
1. `AreaOfCircle.java`
2. `AreaOfTriangle.java`
3. `AreaOfEllipse.java`
4. `AreaOfSemiCircle.java`
5. `AreaOfTrapezium.java`
6. `AreaOfParallelogram.java`

### Configuration:
- Updated `web.xml` with 6 servlet configurations

---

## 🎉 Features Summary

- **6 Complete Shape Calculators**
- **Modern, Premium UI Design**
- **Each with Unique Color Theme**
- **ServletConfig Implementation**
- **Responsive & Mobile-Friendly**
- **Professional Result Pages**
- **Info Boxes Explaining Concepts**
- **Smooth Animations & Transitions**
- **Emoji Icons for Visual Appeal**
- **Clean, Organized Code**

---

## 💡 Notes

1. All calculators follow the same design pattern for consistency
2. Each has a unique gradient color scheme for easy identification
3. ServletConfig is used to demonstrate configuration management
4. Result pages show detailed calculation breakdown
5. Easy to add more shapes by following the same pattern

---

**Ready to Deploy!** 🚀

All shape calculators are fully functional and ready to be tested on your Tomcat server!
