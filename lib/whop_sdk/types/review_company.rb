# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company that this review was written for.
    class ReviewCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
