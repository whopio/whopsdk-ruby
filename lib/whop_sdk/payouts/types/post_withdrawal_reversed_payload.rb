# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class PostWithdrawalReversedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Payouts::Types::PostWithdrawalReversedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Payouts::Types::PostWithdrawalReversedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Payouts::Types::PostWithdrawalReversedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
