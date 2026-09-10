# frozen_string_literal: true

module Whop_sdk
  module Types
    class Domain < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :app_id, -> { String }, optional: false, nullable: false

      field :certificate_status, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :dns_records, -> { Internal::Types::Array[Whop_sdk::Types::DomainDNSRecord] }, optional: false, nullable: false

      field :dns_status, -> { Whop_sdk::Types::DomainDNSStatus }, optional: false, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :hostname_status, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :issues, -> { Internal::Types::Array[Whop_sdk::Types::DomainIssue] }, optional: false, nullable: false

      field :last_checked_at, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::DomainStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :verification_expires_at, -> { String }, optional: false, nullable: true

      field :verified_at, -> { String }, optional: false, nullable: true
    end
  end
end
