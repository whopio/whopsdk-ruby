# frozen_string_literal: true

module Whop_sdk
  module ChannelMembers
    module Types
      class UpdateChannelMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :notification_preference, -> { Whop_sdk::ChannelMembers::Types::UpdateChannelMembersRequestNotificationPreference }, optional: false, nullable: false
      end
    end
  end
end
