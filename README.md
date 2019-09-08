# loginmodule
used technologies: Java Jsp, Servlet, jdbc with mysql database
This is login module in which username and password are 
verified from database and grant access to right user for 
specific pages of the app. session is maintained by HttpSession
and after logout, page is redirected to login page. cache are
cleared using ==> response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
Database Name: "info" 
Table name: "users" 
column names: "uname" and "upass".


