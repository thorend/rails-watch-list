class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list_id, uniqueness: { scope: :movie_id, message: 'cannot add the same movie twice' }
  validates :comment, length: { minimum: 6, too_long: "#{count} characters is the maximum allowed" }
end
