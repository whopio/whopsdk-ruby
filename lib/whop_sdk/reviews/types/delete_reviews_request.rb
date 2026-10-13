# frozen_string_literal: true

module Whop_sdk
  module Reviews
    module Types
      class DeleteReviewsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
