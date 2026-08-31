# frozen_string_literal: true

module Whop_sdk
  module ConfirmationTokens
    module Types
      class RetrieveConfirmationTokensRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
