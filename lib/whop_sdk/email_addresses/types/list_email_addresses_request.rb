# frozen_string_literal: true

module Whop_sdk
  module EmailAddresses
    module Types
      class ListEmailAddressesRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::EmailAddresses::Types::ListEmailAddressesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::EmailAddresses::Types::ListEmailAddressesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
