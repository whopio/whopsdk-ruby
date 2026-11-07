# frozen_string_literal: true

module Whop_sdk
  module ChannelMembers
    module Types
      class ListChannelMembersRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :channel_id, -> { String }, optional: false, nullable: false

        field :query, -> { String }, optional: true, nullable: false
      end
    end
  end
end
