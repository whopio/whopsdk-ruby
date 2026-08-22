# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class PostTransferCompletedPayloadDataDestinationCompany < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :route, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
