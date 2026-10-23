# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class IssueInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
