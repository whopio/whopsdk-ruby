# frozen_string_literal: true

module Whop_sdk
  module Livestreams
    module Types
      class ListLivestreamsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Livestream] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Livestreams::Types::ListLivestreamsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
