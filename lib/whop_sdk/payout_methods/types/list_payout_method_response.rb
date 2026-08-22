# frozen_string_literal: true

module Whop_sdk
  module PayoutMethods
    module Types
      # The connection type for PayoutToken.
      class ListPayoutMethodResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PayoutMethodListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
