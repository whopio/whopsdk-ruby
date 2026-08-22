# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # The account's Whop Ads services and payment authorization agreement. While `pending_signature`, campaign
        # launch is blocked; sign by answering `requested_information` via `PATCH /verifications/{id}`.
        class UpdatePreferencesResponseAdsAgreement < Internal::Types::Model
          field :accepted_at, -> { String }, optional: false, nullable: true

          field :agreement_version, -> { String }, optional: false, nullable: true

          field :printed_name, -> { String }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsAgreementStatus }, optional: false, nullable: false
        end
      end
    end
  end
end
