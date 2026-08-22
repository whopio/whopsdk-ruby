# frozen_string_literal: true

module Whop_sdk
  module FeeMarkups
    module Types
      class CreateFeeMarkupsRequest < Internal::Types::Model
        field :company_id, -> { String }, optional: false, nullable: false

        field :fee_type, -> { Whop_sdk::Types::FeeMarkupTypes }, optional: false, nullable: false

        field :fixed_fee_usd, -> { Integer }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :notes, -> { String }, optional: true, nullable: false

        field :percentage_fee, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
