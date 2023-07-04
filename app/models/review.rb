# frozen_string_literal: true

class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have a content.
  # A review must have a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  validates :rating, inclusion: { in: (1..5) }
end
