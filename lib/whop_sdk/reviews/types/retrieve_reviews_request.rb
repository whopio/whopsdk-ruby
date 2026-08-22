# frozen_string_literal: true

module Whop_sdk
  module Reviews
    module Types
      class RetrieveReviewsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
