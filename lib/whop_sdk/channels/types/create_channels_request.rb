# frozen_string_literal: true

module Whop_sdk
  module Channels
    module Types
      class CreateChannelsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :customer_user_id, -> { String }, optional: true, nullable: false

        field :kind, -> { Whop_sdk::Channels::Types::CreateChannelsRequestKind }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :participant_user_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :sender_user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
