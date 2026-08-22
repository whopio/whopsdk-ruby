# frozen_string_literal: true

module Whop_sdk
  module Experiences
    module Types
      class DetachExperiencesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
