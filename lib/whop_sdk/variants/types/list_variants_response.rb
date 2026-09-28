# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class ListVariantsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::VariantListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Variants::Types::ListVariantsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
