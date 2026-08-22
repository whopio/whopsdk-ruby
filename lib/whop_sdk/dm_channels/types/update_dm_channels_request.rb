# frozen_string_literal: true

module Whop_sdk
  module DmChannels
    module Types
      class UpdateDmChannelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
