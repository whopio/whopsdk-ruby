# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListTransfersRequest < Internal::Types::Model
        field :origin_id, -> { String }, optional: true, nullable: false

        field :destination_id, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Transfers::Types::ListTransfersRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Transfers::Types::ListTransfersRequestDirection }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
