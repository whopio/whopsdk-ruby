# frozen_string_literal: true

module Whop_sdk
  module Types
    class Domain < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :amount_due, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :app_id, -> { String }, optional: false, nullable: true

      field :auto_renew, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: true

      field :dns_records, -> { Internal::Types::Array[Whop_sdk::Types::DomainDNSRecord] }, optional: false, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: true

      field :issues, -> { Internal::Types::Array[Whop_sdk::Types::DomainIssue] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false

      field :mode, -> { Whop_sdk::Types::DomainMode }, optional: false, nullable: true

      field :payment_method_id, -> { String }, optional: false, nullable: true

      field :public_record, -> { Whop_sdk::Types::DomainPublicRecord }, optional: false, nullable: true

      field :purchase_url, -> { String }, optional: false, nullable: true

      field :registration_quote, -> { Whop_sdk::Types::DomainRegistrationQuote }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DomainStatus }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: true

      field :verification_expires_at, -> { String }, optional: false, nullable: true
    end
  end
end
