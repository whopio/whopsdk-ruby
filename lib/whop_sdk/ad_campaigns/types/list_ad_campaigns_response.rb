# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      class ListAdCampaignsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AdCampaign] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AdCampaigns::Types::ListAdCampaignsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
