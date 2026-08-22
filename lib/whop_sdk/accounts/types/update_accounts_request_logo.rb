# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Account logo, used as the profile picture when creating a Whop-managed Facebook page. Image files up to 5 MB.
      # Pass a JSON object containing an `id` from [Create File](/api-reference/files/create-file).
      class UpdateAccountsRequestLogo < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
