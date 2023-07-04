# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    # We need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end
