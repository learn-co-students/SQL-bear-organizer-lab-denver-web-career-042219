require "pry"


def selects_all_female_bears_return_name_and_age
  "SELECT name, age FROM bears WHERE gender = 'F'"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT name, age FROM bears WHERE alive = True ORDER BY age ASC"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears ORDER BY age DESC LIMIT 1"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears ORDER BY age ASC LIMIT 1"
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT color, COUNT(color) FROM bears GROUP BY color ORDER BY COUNT(color) DESC LIMIT 1"
  # return the color and the count of that color from bears based on the query.
  # First group all the colors and order then by the count of each color
  # the query then returns a list that is limited to 1
  # I am not sure what this is counting"
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT COUNT([name]) FROM bears WHERE temperament = 'goofy'"
end

def selects_bear_that_killed_Tim
  "SELECT * FROM bears WHERE name IS NULL"
end


# ├── Gemfile
# ├── README.md
# ├── bin
# │   ├── environment.rb # requires bundler and files
# │   ├── run.rb # instantiates the SQLRunner class in the below file
# │   └── sql_runner.rb # holds a class that handles executing your .sql files
# ├── lib
# │   ├── create.sql # where you create your schema
# │   └── insert.sql # where you insert your data
# │   └── seed.sql # data for in-memory database
# │   └── sql_queries.rb # where you write your sql queries
# └── spec # all the specs
#     ├── create_spec.rb # this tests your create.sql file
#     ├── insert_spec.rb # this tests your insert.sql file
#     ├── select_spec.rb # this tests the queries you write in this file
#     └── spec_helper.rb
