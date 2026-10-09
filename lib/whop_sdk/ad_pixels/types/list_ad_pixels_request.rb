# frozen_string_literal: true

module Whop_sdk
  module AdPixels
    module Types
      class ListAdPixelsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AdPixels::Types::ListAdPixelsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AdPixels::Types::ListAdPixelsRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
