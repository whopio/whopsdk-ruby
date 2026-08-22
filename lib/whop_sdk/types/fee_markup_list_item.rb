# frozen_string_literal: true

module Whop_sdk
  module Types
    # A fee markup configuration that defines additional charges applied to transactions for a platform's connected
    # accounts.
    class FeeMarkupListItem < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :fee_type, -> { Whop_sdk::Types::FeeMarkupTypes }, optional: false, nullable: false

      field :fixed_fee_usd, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :notes, -> { String }, optional: false, nullable: true

      field :percentage_fee, -> { Integer }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
