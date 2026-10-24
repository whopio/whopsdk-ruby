# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeAlertSource
      extend Whop_sdk::Internal::Types::Enum

      ETHOCA = "ethoca"
      CDRN = "cdrn"
      RDR = "rdr"
      TC40 = "tc40"
      SAFE = "safe"
      PAYPAL = "paypal"
    end
  end
end
