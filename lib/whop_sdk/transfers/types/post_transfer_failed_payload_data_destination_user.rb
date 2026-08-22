# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class PostTransferFailedPayloadDataDestinationUser < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false
      end
    end
  end
end
