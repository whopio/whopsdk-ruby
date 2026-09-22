# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # The account's shipping policy document. Sent with physical-goods dispute evidence. PDF only. Pass a JSON object
      # containing an `id` from [Create File](/api-reference/files/create-file), or `null` to remove it.
      class UpdateAccountsRequestShippingPolicy < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
