# frozen_string_literal: true

module Whop_sdk
  module Types
    # A consolidated identity or business profile synced from verification provider data.
    class IdentityProfileListItem < Internal::Types::Model
      field :business_address, -> { Whop_sdk::Types::IdentityProfileListItemBusinessAddress }, optional: false, nullable: true

      field :business_name, -> { String }, optional: false, nullable: true

      field :business_structure, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :first_name, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: true

      field :linked_companies, -> { Internal::Types::Array[Whop_sdk::Types::IdentityProfileListItemLinkedCompaniesItem] }, optional: false, nullable: false

      field :payout_status, -> { Whop_sdk::Types::PayoutAccountCalculatedStatuses }, optional: false, nullable: false

      field :payouts_enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :personal_address, -> { Whop_sdk::Types::IdentityProfileListItemPersonalAddress }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true

      field :profile_type, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::IdentityProfileStatuses }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verifications, -> { Internal::Types::Array[Whop_sdk::Types::IdentityProfileListItemVerificationsItem] }, optional: false, nullable: false
    end
  end
end
