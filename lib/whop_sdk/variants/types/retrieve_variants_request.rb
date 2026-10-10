# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class RetrieveVariantsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :presentment_currency, -> { String }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :presentment_country, -> { String }, optional: true, nullable: false
      end
    end
  end
end
