# frozen_string_literal: true

module Whop_sdk
  module Types
    # A user's membership record in a messaging channel, including notification preferences and read state.
    class DmMemberListItem < Internal::Types::Model
      field :channel_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_viewed_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::DmsFeedMemberStatuses }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
