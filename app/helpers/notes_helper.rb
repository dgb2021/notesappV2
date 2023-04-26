module NotesHelper
  def word_count(text)
    words = text.downcase.gsub(/\n/, ' ').split(/[^a-z0-9-]+/i)
    words.reject(&:empty?).size
  end
end

# (/[^a-z0-9-]+/i) regex for any chars that are letters, digits and hyphens