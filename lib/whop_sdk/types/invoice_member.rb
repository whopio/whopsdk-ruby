# frozen_string_literal: true

module Whop_sdk
  module Types
    # The member that the invoice was created for. Null when the invoice is addressed to an email address with no member
    # record behind it.
    class InvoiceMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
