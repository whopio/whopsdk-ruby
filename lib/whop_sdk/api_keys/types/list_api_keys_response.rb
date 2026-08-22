# frozen_string_literal: true

module Whop_sdk
  module APIKeys
    module Types
      class ListAPIKeysResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::APIKey] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::APIKeys::Types::ListAPIKeysResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
