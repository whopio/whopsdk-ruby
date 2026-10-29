# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      # Provisions a Whop-managed Facebook page for the account. Requires the account's `banner_image`, `logo`, and
      # `description`; configure them with [Update Account](/api-reference/beta/accounts/update-account). The account is
      # returned before Facebook has created the page — its `id` is usable right away, and the rest of the profile fills
      # in once provisioning finishes.
      class CreateExternalAccountsRequestBodyFacebook < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
