require 'test_helper'

class NotesHelperTest < ActionView::TestCase
  include NotesHelper

  test "word_count should return correct count" do
    text = "Hello, this is a simple note. It has multiple lines and some repeated words words."
    assert_equal 15, word_count(text)

    text = "One word"
    count = word_count(text)
    assert_equal 2, count

    text = ""
    assert_equal 0, word_count(text)
  end
end

