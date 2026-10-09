# frozen_string_literal: true

module Whop_sdk
  module Types
    class Domain < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :availability, -> { Whop_sdk::Types::DomainAvailability }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :domain, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: true

      field :issues, -> { Internal::Types::Array[Whop_sdk::Types::DomainIssue] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :owned_by, -> { Whop_sdk::Types::DomainOwner }, optional: false, nullable: true

      field :public_record, -> { Whop_sdk::Types::DomainPublicRecord }, optional: false, nullable: true

      field :registration, -> { Whop_sdk::Types::DomainRegistration }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DomainStatus }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: true

      field :verification, -> { Whop_sdk::Types::DomainVerification }, optional: false, nullable: true

      field :website, -> { Whop_sdk::Types::DomainWebsite }, optional: false, nullable: true
    end
  end
end
