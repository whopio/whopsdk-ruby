# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      # Provisions a Whop-managed TikTok account for the account. Requires the account's `logo`; configure it with
      # [Update Account](/api-reference/beta/accounts/update-account). The account is returned before TikTok has created
      # it — its `id` is usable right away, and the rest of the profile fills in once provisioning finishes.
      class CreateExternalAccountsRequestBodyTiktok < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
