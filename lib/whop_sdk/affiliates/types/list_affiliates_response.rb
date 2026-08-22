# frozen_string_literal: true

module Whop_sdk
  module Affiliates
    module Types
      # The connection type for Affiliate.
      class ListAffiliatesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AffiliateListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
