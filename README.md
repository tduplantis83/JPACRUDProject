## JPA CRUD Project

### Third week homework for Skill Distillery
Course Began: 9/9/19

Assigned: 11/8/19

Completed: 11/9/19


### Overview
A Spring Boot MVC full CRUD web application. This utilizes a simple, two-table mySQL database I created; one table is populated with data on electric cars, while the other is populated with data on electric car charging stations. The two tables have no relationship.

 Navigating the site allows the user to view all electric vehicles at once, search by vehicle ID, search by Make, or create a new vehicle to add to the database. The user is also free to Update and Delete records as they'd like.

 The user may also search for charging stations by city or state abbreviation. They also have the ability to create a new charging station, along with updating or deleting any station they'd like. Due to the size of this table, users are NOT permitted to view all charging stations at once.



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
I created an entity to align with the Electric_Vehicle table in my electric vehicle database, which consisted of ten attributes. This ElectricVehicle was annotated as a Spring Entity and included variables for each table attribute; where the attribute name differed from the entity name, a Column annotation was added. The class also consisted of get and set methods for each attribute, along with a no-arg constructor, hash code, equals, and toString methods.

I also created a second entity to coincide with the Electric_Vehicle_Charging_Stations table in my database. This table contained nine attributes. The ChargingStation entity was also appropriately annotated for Spring MVC, and included variables for each of it's table's attributes. Finally, this entity also included getters and setters, a no-arg constructor, hash code, equals, and toString methods.
