# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeAlertTypes
      extend Whop_sdk::Internal::Types::Enum

      DISPUTE = "dispute"
      DISPUTE_RDR = "dispute_rdr"
      FRAUD = "fraud"
    end
  end
end
