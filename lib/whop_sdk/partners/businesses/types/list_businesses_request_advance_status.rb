# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        module ListBusinessesRequestAdvanceStatus
          extend Whop_sdk::Internal::Types::Enum

          PROJECTED = "projected"
          AVAILABLE = "available"
          ACCEPTED = "accepted"
          FUNDED = "funded"
          CLAWED_BACK = "clawed_back"
          COMPLETED = "completed"
          EXPIRED = "expired"
          WITHDRAWN = "withdrawn"
          OFFERED = "offered"
        end
      end
    end
  end
end
