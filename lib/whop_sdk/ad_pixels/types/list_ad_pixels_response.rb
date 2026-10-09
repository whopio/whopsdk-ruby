# frozen_string_literal: true

module Whop_sdk
  module AdPixels
    module Types
      class ListAdPixelsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AdPixel] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AdPixels::Types::ListAdPixelsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
