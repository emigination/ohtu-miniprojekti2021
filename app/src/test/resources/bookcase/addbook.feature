Feature: As a user I want to be able to add a book to the application
  which has a title, author and unique isbn

    Scenario Outline: Book can be added when all necessary information is filled in
      Given application has opened
      When  choose "Book" from droplist
      When  add item button is clicked
      When  form is filled with "Title" as name and "Author" as author and "6767676766" as isbn
      When  create item is clicked
      Then  error label has text "New Book added"
    
    Scenario Outline: Book cant be added when ISBN is not unique
      Given application has opened
      When  choose "Book" from droplist
      When  add item button is clicked
      When  form is filled with "Title" as name and "Author" as author and "6767676766" as isbn
      When  create item is clicked
      When  form is filled with "Title" as name and "Author" as author and "6767676766" as isbn
      When  create item is clicked
      Then  error label has text "Something went wrong while adding new Book"

    Scenario Outline: Book cant be added when ISBN is too short
      Given application has opened
      When  choose "Book" from droplist
      When  add item button is clicked
      When  form is filled with "Title" as name and "Author" as author and "3" as isbn
      When  create item is clicked
      Then  error label has text "Something went wrong while adding new Book"