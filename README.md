# README

Hospital Management App
A simple Ruby on Rails application with PostgreSQL for managing hospital workflows. The app includes two main portals: Receptionist and Doctor. The receptionist can register new patients and perform CRUD operations, while doctors can view the list of registered patients and a graph showing patient registrations per day.

Features
User Authentication: Single login page for receptionists and doctors.
Receptionist Dashboard: Allows patient registration and full CRUD operations.
Doctor Dashboard: Displays a list of patients and a graph of daily patient registrations.
Built With
Ruby on Rails - Backend framework
PostgreSQL - Database
Chartkick and Groupdate - For data visualization and grouping
Devise - User authentication
Getting Started
These instructions will help you set up the project on your local machine.

Prerequisites
Ruby (version 3.0+)
Rails (version 6.1+)
PostgreSQL
Bundler (gem install bundler)

Installation

Clone the repository
git clone https://github.com/harsh0728/Hospital-App.git
cd Hospital-app

Install Dependencies
bundle install
Set Up Database

Configure your PostgreSQL database credentials in config/database.yml.
Run the following commands:
rails db:create
rails db:migrate
rails db:seed

Run the Server:
rails server
Access the App Open http://localhost:3000 in your browser.

Usage
Login: Go to /users/sign_in and log in as a receptionist or doctor.
Receptionist:
After logging in, access the receptionist dashboard at /receptionist_dashboard to manage patients.
Doctor:
After logging in, access the doctor dashboard at /doctor_dashboard to view patients and the registration graph.
Routes Setup
Here are all the main routes used in this project for reference.

Route	HTTP Verb	Purpose
/users/sign_in	GET	Login page for all users
/users/sign_out	DELETE	Log out of the application
/receptionist_dashboard	GET	Receptionist dashboard
/doctor_dashboard	GET	Doctor dashboard with patient list and graph
/patients	GET	List all patients (Receptionist only)
/patients/:id	GET	View details of a specific patient
/patients/new	GET	Form to create a new patient (Receptionist only)
/patients	POST	Create a new patient
/patients/:id/edit	GET	Form to edit an existing patient
/patients/:id	PATCH/PUT	Update patient details
/patients/:id	DELETE	Delete a patient
Code Structure
Models:
User - Handles user authentication (via Devise)
Patient - Stores patient information
Controllers:
DashboardsController - Contains receptionist and doctor actions
PatientsController - Handles CRUD operations for patients
Views:
views/dashboards/ - Contains views for the receptionist and doctor dashboards
views/patients/ - Contains views for creating, updating, and showing patients
Gems Used
Devise - For user authentication
Chartkick - For charting patient registration trends
Groupdate - For grouping patient data by day
Troubleshooting
Chart not loading: Ensure chartkick and groupdate are included in your Gemfile and installed via bundle install.
Database setup issues: Make sure PostgreSQL is running and credentials are correct in config/database.yml.
Future Improvements
Add roles for users and customize views accordingly.
Implement AJAX for better responsiveness in patient management.
Extend doctor permissions for more in-depth patient interactions.


Let me know if you need more customization on this README!
