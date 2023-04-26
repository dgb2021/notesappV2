module NotesStatisticsHelper
  def word_count_statistics(text)
    text.downcase.scan(/[\w']+/).each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }.sort_by { |word, count| [-count, word] }
  end
end
