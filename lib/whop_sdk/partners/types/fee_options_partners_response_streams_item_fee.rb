# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      # The merchant fee behind this stream, or null when the business is charged nothing on it.
      class FeeOptionsPartnersResponseStreamsItemFee < Internal::Types::Model
        field :minimum_percentage, -> { Integer }, optional: false, nullable: false

        field :percentage, -> { Integer }, optional: false, nullable: false

        field :reference_region, -> { String }, optional: false, nullable: true

        field :regions, -> { Internal::Types::Array[Whop_sdk::Partners::Types::FeeOptionsPartnersResponseStreamsItemFeeRegionsItem] }, optional: false, nullable: false
      end
    end
  end
end
