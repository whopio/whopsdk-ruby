# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        # Optional second method charged if the primary fails. Any pairing is allowed (two cards, card+balance,
        # balance+card); omit it to run on a single method. Must differ from the primary.
        class UpdatePreferencesRequestAdsPaymentMethodsBackup < Internal::Types::Model
          field :id, -> { String }, optional: true, nullable: false

          field :type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethodsBackupType }, optional: false, nullable: false
        end
      end
    end
  end
end
