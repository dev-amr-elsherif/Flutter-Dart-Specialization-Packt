<div align="center">

  <h1>☁️ Phase 3: Data Persistence & Firebase Integration</h1>

  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=flutter,dart,firebase,sqlite&theme=dark" alt="Phase 3 Tech Stack"/>
  </a>

<br><br>

  <img src="phase3-data-firebase-roadmap.png" width="800" alt="Phase 3 Roadmap - Data Persistence"/>

<br><br>

  <p><i>The final and most advanced phase of the <b>"Flutter & Dart - Complete App Development"</b> Specialization by Packt. This module focuses on bridging the gap between volatile in-memory state and persistent, structured data using local databases (SQLite), REST APIs, and cloud architecture (Firebase).</i></p>

</div>

<br>
<hr>
<br>

# 📖 Phase Overview

This course transitions development from client-side UI construction to full-stack mobile engineering. The core focus is on data lifecycle management: fetching data from external servers, caching it locally for offline use, and synchronizing user actions with real-time cloud databases.

### 🎯 Core Engineering Objectives
- **RESTful API Integration:** Constructing HTTP requests to consume external data (Google Books API), parsing complex JSON payloads, and mapping them to Dart models.
- **Local Relational Databases (SQLite):** Designing database schemas, creating a Database Helper class, and executing CRUD operations (Create, Read, Update, Delete) for offline data persistence.
- **Cloud Database Integration (Firebase):** Configuring and connecting a Flutter app to Firebase Realtime Database using structured HTTP requests.
- **Advanced Error Handling:** Implementing robust `try-catch` blocks and null-safety principles to prevent app crashes during network failures or missing data.
- **Data Visualization:** Integrating external packages (like `BarChart`) to transform raw database metrics into interactive, visual UI components.
- **Complex UI Architectures:** Managing `GridViews`, advanced `BottomNavigationBar` setups, dynamic visual toggles (Favorite states), and asynchronous UI states (Loading spinners).

<br>
<hr>
<br>

# 🔥 Hands-On Projects

<div align="center">
  <table border="0" cellpadding="15">
    <tr>
      <td width="50%" valign="top">
        <h3>📚 Book Tracker App</h3>
        <p>A comprehensive library management app. Fetches live data from the <b>Google Books API</b>. Implements <b>SQLite</b> for local caching, allowing users to save books, manage a 'Favorites' list offline, and interact with complex grid/list UI combinations.</p>
      </td>
      <td width="50%" valign="top">
        <h3>💧 Water Intake Tracker</h3>
        <p>A health monitoring app synchronized with the cloud. Utilizes <b>Firebase Realtime Database</b> via HTTP for remote data storage. Features state management with <b>Provider</b> to instantly reflect DB changes on the UI, and visualizes weekly data using dynamic Bar Charts.</p>
      </td>
    </tr>
  </table>
</div>

<br>
<hr>
<br>

# 📚 Modules Covered

1. **APIs & SQLite Database (Book Tracker):**
   - Setting up `BottomNavigationBar` and multi-screen architecture.
   - Network requests to Google Books API endpoint.
   - Dart Control Flow, Exception handling, and Null Safety.
   - Creating an SQLite Database Helper class (Tables, Insert, ReadAll, Delete).
   - Dynamically toggling Favorite/Save states based on database checks.

2. **Firebase Realtime Database (Water Tracker):**
   - Firebase backend configuration.
   - POST/GET requests to Firebase using HTTP.
   - Integrating Provider with HTTP requests for UI synchronization.
   - Handling asynchronous database issues and ID mapping.
   - Data visualization: Creating and customizing BarGraphs based on daily summaries.

<br>
<hr>
<br>

<div align="center">

  <h3>🛠️ Technical Tools Used</h3>
  <img src="https://img.shields.io/badge/SQLite-000000?style=for-the-badge&logo=sqlite&logoColor=00F0FF" alt="SQLite" />
  <img src="https://img.shields.io/badge/Firebase_RTDB-000000?style=for-the-badge&logo=firebase&logoColor=FFCA28" alt="Firebase" />
  <img src="https://img.shields.io/badge/REST_APIs-000000?style=for-the-badge&logo=json&logoColor=7A5CFF" alt="REST API" />
  <img src="https://img.shields.io/badge/HTTP_Requests-000000?style=for-the-badge&logo=dart&logoColor=00F0FF" alt="HTTP" />

<br><br>
<hr width="50%">
<br>

  <h3>🗺️ Course Navigation</h3>
  
  <a href="../">
    <img src="https://img.shields.io/badge/🏠_Back_to_Main_Repo-181717?style=for-the-badge" alt="Main Repo" />
  </a>
  
  <br><br>

  <a href="../Course_02_Advanced_UI_State">
    <img src="https://img.shields.io/badge/⏪_Prev:_Advanced_UI_&_State-0052CC?style=for-the-badge" alt="Go to Phase 2" />
  </a>

</div>
