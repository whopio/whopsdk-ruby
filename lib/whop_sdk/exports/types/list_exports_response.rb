# frozen_string_literal: true

module Whop_sdk
  module Exports
    module Types
      class ListExportsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Export] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Exports::Types::ListExportsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
