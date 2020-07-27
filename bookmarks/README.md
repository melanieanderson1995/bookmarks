# Bookmark Manager #
* User stories
  * As a user, so I can see the bookmarks I've made, I want to be able to display a list of bookmarks
  * As a user, so I can store bookmarks to find later, I want to be able to add a new bookmark to the list of bookmarks
* Domain model:
  * ![User Story 1 Domain Model Diagram](/bookmarks/screenshots/user_story_1_domain_model.jpg?raw=true "User story 1 domain model diagram")

## Database Setup
1. Connect to psql
2. Create the database using the psql command "CREATE DATABASE bookmark_manager;"
3. Connect to the database using the psql command "\c bookmark_manager;"
4. Run the query we have saved in the file "01_create_bookmarks_table.sql"
5. Create testing database "CREATE DATABASE "bookmark_manager_test;"
6. Create bookmarks table "CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60))"
