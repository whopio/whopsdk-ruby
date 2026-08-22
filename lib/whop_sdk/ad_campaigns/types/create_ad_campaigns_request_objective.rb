# frozen_string_literal: true

module Whop_sdk
  module AdCampaigns
    module Types
      module CreateAdCampaignsRequestObjective
        extend Whop_sdk::Internal::Types::Enum

        AWARENESS = "awareness"
        TRAFFIC = "traffic"
        ENGAGEMENT = "engagement"
        LEADS = "leads"
        SALES = "sales"
      end
    end
  end
end
