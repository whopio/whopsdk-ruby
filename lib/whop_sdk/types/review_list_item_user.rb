# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user account of the person who wrote this review.
    class ReviewListItemUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
