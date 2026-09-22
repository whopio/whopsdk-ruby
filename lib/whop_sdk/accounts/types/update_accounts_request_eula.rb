# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # The account's end-user license agreement document. PDF only. Pass a JSON object containing an `id` from [Create
      # File](/api-reference/files/create-file), or `null` to remove it.
      class UpdateAccountsRequestEula < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
