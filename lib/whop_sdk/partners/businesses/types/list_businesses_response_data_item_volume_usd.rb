# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ListBusinessesResponseDataItemVolumeUsd < Internal::Types::Model
          field :attributed, -> { String }, optional: false, nullable: false

          field :awaiting_settlement, -> { String }, optional: false, nullable: false

          field :last30d, -> { String }, optional: false, nullable: false, api_name: "last_30d"

          field :settled, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
