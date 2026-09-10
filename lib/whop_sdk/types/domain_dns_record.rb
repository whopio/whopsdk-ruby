# frozen_string_literal: true

module Whop_sdk
  module Types
    class DomainDNSRecord < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::DomainDNSRecordType }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
