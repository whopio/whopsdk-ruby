# frozen_string_literal: true

module Whop_sdk
  module Types
    # The customer who initiated this support conversation. Null if this is not a support chat.
    class SupportChannelListItemCustomerUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :username, -> { String }, optional: false, nullable: false
    end
  end
end
