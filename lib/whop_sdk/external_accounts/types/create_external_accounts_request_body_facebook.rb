# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Types
      # Whop no longer creates Facebook pages, so this returns a `facebook_page_provisioning_retired` error.
      class CreateExternalAccountsRequestBodyFacebook < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
