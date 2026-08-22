# frozen_string_literal: true

module Whop_sdk
  module Types
    # Currency for this ledger activity.
    class LedgerActivityCurrency < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :precision, -> { String }, optional: false, nullable: false
    end
  end
end
