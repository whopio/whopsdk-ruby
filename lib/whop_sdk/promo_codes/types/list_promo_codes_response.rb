# frozen_string_literal: true

module Whop_sdk
  module PromoCodes
    module Types
      class ListPromoCodesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::PromoCodeListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::PromoCodes::Types::ListPromoCodesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
