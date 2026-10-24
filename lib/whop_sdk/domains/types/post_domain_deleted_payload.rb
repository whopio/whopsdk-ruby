# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      class PostDomainDeletedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Domains::Types::PostDomainDeletedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Types::Domain }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Domains::Types::PostDomainDeletedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
