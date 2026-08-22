# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # The user who initiated the transfer, such as the team member who sent a manual payout. Null if the creator is
      # unavailable.
      class PostTransferFailedPayloadDataCreatedByUser < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: false, nullable: false
      end
    end
  end
end
