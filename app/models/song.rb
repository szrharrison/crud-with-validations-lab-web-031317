class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: { scope: [:release_year, :artist_name] }
  validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.today.year }, if: :released
end
