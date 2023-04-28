class Note < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 100}
  validates :body, presence: true, length: {minimum: 3, maximum: 1000}
  validates :user_id, presence: true
end
