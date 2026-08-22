# frozen_string_literal: true

module Whop_sdk
  module Types
    # Device platforms and operating systems to target.
    class AdGroupDevicesBody < Internal::Types::Model
      field :operating_systems, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDevicesBodyOperatingSystemsItem] }, optional: true, nullable: false

      field :platforms, -> { Internal::Types::Array[Whop_sdk::Types::AdGroupDevicesBodyPlatformsItem] }, optional: true, nullable: false
    end
  end
end
