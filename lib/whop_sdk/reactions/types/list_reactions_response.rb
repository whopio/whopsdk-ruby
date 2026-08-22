# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      # The connection type for Reaction.
      class ListReactionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ReactionListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
