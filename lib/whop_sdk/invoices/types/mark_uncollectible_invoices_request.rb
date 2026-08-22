# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class MarkUncollectibleInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
