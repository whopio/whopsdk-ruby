# frozen_string_literal: true

module Whop_sdk
  module DmMembers
    module Types
      class UpdateDmMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :notification_preference, -> { Whop_sdk::Types::DmsFeedMemberNotificationPreferences }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Types::DmsFeedMemberStatuses }, optional: true, nullable: false
      end
    end
  end
end
