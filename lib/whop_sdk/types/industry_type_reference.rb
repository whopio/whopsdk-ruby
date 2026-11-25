# frozen_string_literal: true

module Whop_sdk
  module Types
    class IndustryTypeReference < Internal::Types::Model
      field :business_type, -> { Whop_sdk::Types::BusinessTypeReference }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
