# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # The connection type for SetupIntent.
      class ListSetupIntentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SetupIntentListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
