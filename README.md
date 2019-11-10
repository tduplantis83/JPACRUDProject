## JPA CRUD Project

### Third week homework for Skill Distillery
Course Began: 9/9/19

Assigned: 11/8/19

Completed: 11/9/19


### Overview
A Spring Boot MVC full CRUD web application. This utilizes a simple, one-table mySQL database I created, which is populated with data on electric cars. Navigating the site allows the user to view all electric vehicles at once, search by vehicle ID, search by Make, or create a new vehicle to add to the database. The user is also free to Update and Delete records as they'd like.



### Technologies/Topics Used
mySQL
mySQL Workbench
Java
JPA
Spring
Eclipse with Spring Tool Suite
Gradle
JUnit 5 test driven development
ORM - Object Relational Mapping
JSTL
HTML
CSS
AWS



### Entity Class Structure
I created one entity to align with the table in my electric vehicle database, which consisted of ten attributes. This ElectricVehicle was annotated as a Spring Entity and included variables for each table attribute; where the attribute name differed from the entity name, a Column annotation was added. The class also consisted of get and set methods for each attribute, along with a no-arg constructor, hash code, equals, and toString methods.
