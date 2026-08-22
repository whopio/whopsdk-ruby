# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product the lead expressed interest in. Null if the lead is not associated with a specific product.
    class LeadListItemProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
