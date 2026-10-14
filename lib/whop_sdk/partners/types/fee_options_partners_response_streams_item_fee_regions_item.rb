# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class FeeOptionsPartnersResponseStreamsItemFeeRegionsItem < Internal::Types::Model
        field :minimum_percentage, -> { Integer }, optional: false, nullable: false

        field :percentage, -> { Integer }, optional: false, nullable: false

        field :region, -> { String }, optional: false, nullable: false
      end
    end
  end
end
