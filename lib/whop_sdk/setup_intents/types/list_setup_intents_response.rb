# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class ListSetupIntentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::SetupIntent] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::SetupIntents::Types::ListSetupIntentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
