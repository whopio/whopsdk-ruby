# frozen_string_literal: true

module Whop_sdk
  module Types
    module PasskeyCredentialDescriptorTransportsItem
      extend Whop_sdk::Internal::Types::Enum

      BLE = "ble"
      HYBRID = "hybrid"
      INTERNAL = "internal"
      NFC = "nfc"
      SMART_CARD = "smart-card"
      USB = "usb"
    end
  end
end
