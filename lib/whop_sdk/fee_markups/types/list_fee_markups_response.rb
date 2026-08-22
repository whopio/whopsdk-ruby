# frozen_string_literal: true

module Whop_sdk
  module FeeMarkups
    module Types
      # The connection type for FeeMarkup.
      class ListFeeMarkupsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::FeeMarkupListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
