# frozen_string_literal: true

module Whop_sdk
  module Types
    class PartnerReferralRequest < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: true

      field :code, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :max_redemptions, -> { Integer }, optional: false, nullable: true

      field :partner, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :request_type, -> { Whop_sdk::Types::PartnerReferralRequestRequestType }, optional: false, nullable: false

      field :rewards, -> { Internal::Types::Array[Whop_sdk::Types::PartnerReferralReward] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::PartnerReferralRequestStatus }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true
    end
  end
end
