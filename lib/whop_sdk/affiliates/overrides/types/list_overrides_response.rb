# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Overrides
      module Types
        # The connection type for AffiliateOverride.
        class ListOverridesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Affiliates::Overrides::Types::ListOverridesResponseDataItem] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
