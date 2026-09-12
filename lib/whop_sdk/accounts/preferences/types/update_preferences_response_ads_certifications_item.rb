# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesResponseAdsCertificationsItem < Internal::Types::Model
          field :approved_countries, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :business_name, -> { String }, optional: false, nullable: true

          field :business_type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsCertificationsItemBusinessType }, optional: false, nullable: true

          field :certification_type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsCertificationsItemCertificationType }, optional: false, nullable: false

          field :countries, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :denial_reason, -> { String }, optional: false, nullable: true

          field :request_id, -> { String }, optional: false, nullable: true

          field :status, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseAdsCertificationsItemStatus }, optional: false, nullable: false

          field :url, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
