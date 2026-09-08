# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class PostPaymentCreatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Payments::Types::PostPaymentCreatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Types::Payment }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Payments::Types::PostPaymentCreatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
