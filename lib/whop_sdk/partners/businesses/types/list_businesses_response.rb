# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ListBusinessesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Partners::Businesses::Types::ListBusinessesResponseDataItem] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
