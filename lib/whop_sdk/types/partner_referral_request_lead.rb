# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerReferralRequestLead < Internal::Types::Model
      field :business_type, -> { String }, optional: false, nullable: true

      field :country, -> { String }, optional: false, nullable: true

      field :industry_type, -> { Whop_sdk::Types::IndustryTypeReference }, optional: false, nullable: true

      field :migrating_from, -> { String }, optional: false, nullable: true

      field :owner, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :owner_email, -> { String }, optional: false, nullable: true

      field :owner_phone, -> { String }, optional: false, nullable: true

      field :revenue_band, -> { String }, optional: false, nullable: true

      field :signed_up_at, -> { String }, optional: false, nullable: false

      field :website, -> { String }, optional: false, nullable: true
    end
  end
end
