# frozen_string_literal: true

module Whop_sdk
  module Types
    # The checkout session configuration associated with this setup intent. Null if no checkout session was used.
    class SetupIntentListItemCheckoutConfiguration < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
