# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class GeneratePdfInvoicesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :include_descriptions, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
