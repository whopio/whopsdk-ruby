# frozen_string_literal: true

module Whop_sdk
  module Types
    module PartnerAdvanceStatus
      extend Whop_sdk::Internal::Types::Enum

      PROJECTED = "projected"
      AVAILABLE = "available"
      ACCEPTED = "accepted"
      FUNDED = "funded"
      CLAWED_BACK = "clawed_back"
      COMPLETED = "completed"
      EXPIRED = "expired"
    end
  end
end
