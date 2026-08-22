# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class CreateTransfersResponseClaimLinkSource < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
