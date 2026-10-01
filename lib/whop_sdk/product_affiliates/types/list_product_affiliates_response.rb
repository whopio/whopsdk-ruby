# frozen_string_literal: true

module Whop_sdk
  module ProductAffiliates
    module Types
      class ListProductAffiliatesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ProductAffiliate] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::ProductAffiliates::Types::ListProductAffiliatesResponsePageInfo }, optional: false, nullable: false

        field :total_count, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
