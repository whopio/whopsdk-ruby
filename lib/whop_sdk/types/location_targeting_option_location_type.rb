# frozen_string_literal: true

module Whop_sdk
  module Types
    module LocationTargetingOptionLocationType
      extend Whop_sdk::Internal::Types::Enum

      COUNTRY = "country"
      REGION = "region"
      CITY = "city"
      ZIP = "zip"
      NEIGHBORHOOD = "neighborhood"
      SUBCITY = "subcity"
      MEDIUM_GEO_AREA = "medium_geo_area"
      DISTRICT = "district"
      DMA = "dma"
    end
  end
end
