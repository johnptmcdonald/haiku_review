You can view the working app at https://haikureview.herokuapp.com/

Haiku Review is a cross between Twitter and Rotten Tomatoes, whereby users write reviews for movies in the form of Haiku (five syllables in the first line, seven in the second, and five in the third).

Haiku are validated through a dictionary look-up. If that fails, word is validated with a simple Regex syllable counter. 

Main technologies and gems used:

- User signup/login is manually coded, with Bcrypt gem
- Rotten Tomatoes API (with HTTParty gem)
- Figaro gem (for secure configuration - hiding of Rotten Tomatoes API key)
- Bootstrap-Sass gem
- Will-paginate gem
- Sqlite3 in development, PostgreSQL in production
- Rspec, Guard, Capybara, Selenium for testing

