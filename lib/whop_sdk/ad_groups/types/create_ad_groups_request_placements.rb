# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      # `automatic` to let the ad platform choose placements, or the list of platforms and positions to target. Omit a
      # platform's positions to target all of them.
      #
      # Valid positions per platform:
      #
      # - `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`, `profile_feed`, `notification`, `story`,
      # `instream_video`, `facebook_reels`, `facebook_reels_overlay`, `biz_disco_feed`
      # - `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`, `profile_feed`, `profile_reels`,
      # `ig_search`
      # - `messenger`: `story`
      # - `audience_network`: `classic`, `rewarded_video`
      # - `threads`: `threads_stream`
      # - `whatsapp`: `status`
      class CreateAdGroupsRequestPlacements < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Whop_sdk::AdGroups::Types::CreateAdGroupsRequestPlacementsZero }

        member -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestPlacementsOneItem] }
      end
    end
  end
end
