# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class RetrieveTransfersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
