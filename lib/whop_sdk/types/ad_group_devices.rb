# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdGroupDevices < Internal::Types::Model
      field :operating_systems, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupOperatingSystem] }, optional: false, nullable: false

      field :platforms, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDevicesPlatformsItem] }, optional: false, nullable: false
    end
  end
end
