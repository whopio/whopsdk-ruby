# frozen_string_literal: true

module Whop_sdk
  module Types
    # Starts provisioning a Whop-managed TikTok account. Set the account's `logo` with [Update
    # Account](/api-reference/accounts/update-account) before you call this endpoint. Whop returns an `id` you can use
    # immediately. The rest of the profile appears after provisioning.
    class CreateTiktokExternalAccount < Internal::Types::Model
      field :account_id, -> { String }, optional: true, nullable: false
    end
  end
end
