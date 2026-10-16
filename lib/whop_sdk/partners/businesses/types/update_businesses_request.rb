# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class UpdateBusinessesRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :annual_processing_usd, -> { String }, optional: true, nullable: false

          field :withdraw_projections, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
