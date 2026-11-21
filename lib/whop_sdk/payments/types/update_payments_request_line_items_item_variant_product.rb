# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # The product the line belongs to. It is found by `external_identifier` and created hidden when the account has
      # none, so it never shows in the store.
      class UpdatePaymentsRequestLineItemsItemVariantProduct < Internal::Types::Model
        field :external_identifier, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false
      end
    end
  end
end
