# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class ListChannelsRequest < Internal::Types::Model
        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :include_total_count, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :kind, -> { Whop_sdk::Channels::Types::ListChannelsRequestKindItem }, optional: true, nullable: false

        field :support_role, -> { Whop_sdk::Channels::Types::ListChannelsRequestSupportRole }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Channels::Types::ListChannelsRequestStatus }, optional: true, nullable: false

        field :awaiting_reply, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :unread, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :viewed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :requested, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Channels::Types::ListChannelsRequestOrder }, optional: true, nullable: false

        field :include_members, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_last_message, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Channels::Types::ListChannelsRequestDirection }, optional: true, nullable: false

        field :include_deleted, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :updated_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
