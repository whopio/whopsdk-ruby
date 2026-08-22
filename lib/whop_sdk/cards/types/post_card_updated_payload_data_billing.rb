# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # The billing address.
      class PostCardUpdatedPayloadDataBilling < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: true

        field :country_code, -> { String }, optional: false, nullable: true

        field :line1, -> { String }, optional: false, nullable: true

        field :line2, -> { String }, optional: false, nullable: true

        field :postal_code, -> { String }, optional: false, nullable: true

        field :region, -> { String }, optional: false, nullable: true
      end
    end
  end
end
