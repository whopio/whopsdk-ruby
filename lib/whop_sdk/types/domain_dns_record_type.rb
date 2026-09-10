# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainDNSRecordType
      extend Whop_sdk::Internal::Types::Enum

      TXT = "TXT"
      CNAME = "CNAME"
      A = "A"
      AAAA = "AAAA"
    end
  end
end
