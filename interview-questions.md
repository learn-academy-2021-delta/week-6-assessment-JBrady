# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

  Your answer: You should be able to simply create a new column in the database for the foreign key. I think you can just call it "foreign key", unless theres a convention that I'm forgetting. I assume this would be in the cohort model.

  Researched answer: You can add a foreign key column after you've created the application, but you have to migrate the database in order for the column to be recognized. The name of the key column would have to be the same name as another column in the table that your referencing.



2. Which RESTful routes must always be passed params? Why?

  Your answer: At the moment, I can't seem to remember what RESTful routes are or do.

  Researched answer: RESTful routes are how an app routes traffic and allows the user to navigate through the app. They also allow for interactions with databases. Any route that is requesting or sending data would need to be passed params for the app to know what data needs to be sent or received.



3. Name three rails generator commands. What is created by each?

  Your answer: Again, I'm at a loss. I'll have to research these answers and refresh my memory.

  Researched answer: Apparently there are 16 generators available in rails. These can be listed out with the command
  ```
  rails generate -h
  ```
  A few of the most commonly used are
  ```
  rails generate migration
  rails generate controller
  rails generate model
  ```
  'rails generate migration' is used to create and migrate the database
  'rails generate controller' is used to create the controller via command line
  'rails generate model' is used to create the model via the command line


4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

method="GET"    /students    
The controller method would be "Index" and would request all the items in the students database      

method="POST"   /students  
The controller method would be "Create" and would add new items to the students database, or update/modify data in the database.

method="GET"    /students/new
The controller method would be "New" which shows a static page with a form that allows you to enter data into the students database.

method="GET"    /students/2  
The controller method would be "Show" which requests one item of data (in this case, it's requesting item 2)

method="GET"    /students/2/edit  
The controller method would be "Edit" and would a static page with a form that would allow you to modify item 2.  

method="PATCH"  /students/2    
The controller method would be "Update" and would modify item 2 in the database.  

method="DELETE" /students/2    
The controller method would be "Destroy" and would remove item 2 from the database.  



5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

- As a user, I want to be able to add a new task to the list.
- As a user, I want to be able to edit any tasks on the list.
- As a user, I want to be able to add a title to my list.
- As a user, I want to be able to edit the title of my list.
- As a user, I want to be able to delete tasks from my list.
- As a user, I want to be able to reorder the tasks on my list.
- As a user, I want to be able to toggle reminders for my items.
- As a user, I want to be able to set a due date and time for my list items.
- As a user, I want to be able to add more than one list.
- As a user, I want to be able to change the color scheme of my lists.