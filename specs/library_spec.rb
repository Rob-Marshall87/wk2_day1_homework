require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test
  def test_get_book
    book = Library.new("The Hobbit", { "Rob", 03/07/17})
    assert_equal(("The Hobbit", { "Rob", 03/07/17}), book)
  end
end
