# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Links
      module Types
        class ListLinksResponse < Internal::Types::Model
          field :base_referral_url, -> { String }, optional: false, nullable: false

          field :data, -> { Internal::Types::Array[Whop_sdk::Types::PartnerRewardLink] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Partners::Links::Types::ListLinksResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
