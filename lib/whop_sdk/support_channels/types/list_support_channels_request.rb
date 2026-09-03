# frozen_string_literal: true

module Whop_sdk
  module SupportChannels
    module Types
      class ListSupportChannelsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :view, -> { Whop_sdk::Types::SupportChannelView }, optional: true, nullable: false

        field :open, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Types::MessageChannelOrder }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
