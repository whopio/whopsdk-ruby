# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainTransfer < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: true

      field :destination, -> { Whop_sdk::Types::DomainTransferDestination }, optional: false, nullable: false

      field :state, -> { Whop_sdk::Types::DomainTransferState }, optional: false, nullable: false
    end
  end
end
