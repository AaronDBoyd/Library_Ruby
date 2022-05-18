require('rspec')
require('pg')
require('author')
require('book')
require('patron')
require('pry')
require('./test_db_access.rb')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM books *;")
    DB.exec("DELETE FROM authors *;")
    DB.exec("DELETE FROM patrons *;")
    DB.exec("DELETE FROM authors_books *;")
    DB.exec("DELETE FROM books_patrons *;")
  end
end