require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test


def test_books__getters
  innitial_books = [
    {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jim"
        date "12/03/3018"
      }
    },
    {
      title: "Lord of the Rings",
      rental_details: {}
    },
    {
      title: "Lord of the Rings",
      rental_details: {
      }
    }
  ]
  library = Library.new(innitial_books)
  assert_equal("Lord of the Rings", library.all_books[0][:title])
end










end
