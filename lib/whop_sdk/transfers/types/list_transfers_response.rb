# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListTransfersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Transfers::Types::ListTransfersResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Transfers::Types::ListTransfersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
