# frozen_string_literal: true

module Whop_sdk
  module Types
    # The pixel event optimized for. A standard event, or any custom pixel event name.
    class ConversionEvent < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Whop_sdk::Types::ConversionEventZero }

      member -> { String }
    end
  end
end
