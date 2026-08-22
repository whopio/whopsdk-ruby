# frozen_string_literal: true

module Whop_sdk
  module DmChannels
    module Types
      class CreateDmChannelsRequest < Internal::Types::Model
        field :company_id, -> { String }, optional: true, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :with_user_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
