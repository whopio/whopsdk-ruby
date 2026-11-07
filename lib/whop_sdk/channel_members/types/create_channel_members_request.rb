# frozen_string_literal: true

module Whop_sdk
  module ChannelMembers
    module Types
      class CreateChannelMembersRequest < Internal::Types::Model
        field :channel_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
