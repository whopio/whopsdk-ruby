# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainPublicRecord < Internal::Types::Model
      field :dnssec, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: true

      field :name_servers, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :registered_at, -> { String }, optional: false, nullable: true

      field :registrant, -> { Whop_sdk::Types::DomainRegistrant }, optional: false, nullable: true

      field :registrar, -> { Whop_sdk::Types::DomainRegistrar }, optional: false, nullable: true

      field :statuses, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: true
    end
  end
end
