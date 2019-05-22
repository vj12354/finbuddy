Project finance buddy:

- Engine
- WebUI


Technologies used: 
 - Spring frameworks: roo, boot, data, mvc
 - Thymeleaf UI, HTML, Bootstrap
 - JPA Hibernet, MySQL & H2 database
 - Java 8, Maven
 
 How to run: 
- Requires SERVER_ENV environment variable to run, so you would need to set it first. For Example: `export SERVER_ENV=dev`
- Run the main class in IDE or via Maven: mvn bootRun
 
- To run using MySQL set `export SERVER_ENV=localdev`
- And supply database details in application-localdev.properties

Note: the schema / tables will be automatically created by the application, while startup.
