require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test


def test_books__getters
  initial_books = [
    {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jim",
        date: "12/03/3018"
      }
    },
    {
      title: "Lord of the Flies",
      rental_details: {
        student_name: "Dave",
        date: "20/03/2018"
      }
    },
    {
      title: "The Hobbit",
      rental_details: {
        student_name: "Steve",
        date: "12/04/3018"
      }
    }
  ]
  library = Library.new(initial_books)
  assert_equal("Lord of the Rings", library.all_books[0][:title])
  assert_equal("Jim", library.all_books[0][:rental_details][:student_name])
  assert_equal("12/03/3018", library.all_books[0][:rental_details][:date])
end




end
