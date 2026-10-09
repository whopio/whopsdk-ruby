# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainIssue < Internal::Types::Model
      field :capability, -> { Whop_sdk::Types::DomainIssueCapability }, optional: false, nullable: false

      field :code, -> { Whop_sdk::Types::DomainIssueCode }, optional: false, nullable: false

      field :dns_records, -> { Internal::Types::Array[Whop_sdk::Types::DomainDNSRecord] }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
