# frozen_string_literal: true

module Whop_sdk
  module Types
    # The plan that this invoice charges for.
    class InvoiceListItemCurrentPlan < Internal::Types::Model
      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :formatted_price, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
