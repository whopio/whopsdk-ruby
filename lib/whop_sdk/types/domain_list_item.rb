# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainListItem < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :app_id, -> { String }, optional: false, nullable: true

      field :certificate_status, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :dns_records, -> { Internal::Types::Array[Whop_sdk::Types::DomainDNSRecord] }, optional: false, nullable: false

      field :dns_status, -> { Whop_sdk::Types::DomainListItemDNSStatus }, optional: false, nullable: true

      field :domain, -> { String }, optional: false, nullable: false

      field :hostname_status, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: true

      field :issues, -> { Internal::Types::Array[Whop_sdk::Types::DomainIssue] }, optional: false, nullable: false

      field :last_checked_at, -> { String }, optional: false, nullable: true

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :registrar_quote, -> { Whop_sdk::Types::DomainRegistrarQuote }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DomainListItemStatus }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: true

      field :verification_expires_at, -> { String }, optional: false, nullable: true

      field :verified_at, -> { String }, optional: false, nullable: true
    end
  end
end
