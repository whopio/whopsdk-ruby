# frozen_string_literal: true

module Whop_sdk
  module SupportChannels
    module Types
      class CreateSupportChannelsRequest < Internal::Types::Model
        field :company_id, -> { String }, optional: false, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
