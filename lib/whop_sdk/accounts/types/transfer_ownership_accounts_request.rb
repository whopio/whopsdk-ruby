# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class TransferOwnershipAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :as_partner, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :identifier, -> { String }, optional: false, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
