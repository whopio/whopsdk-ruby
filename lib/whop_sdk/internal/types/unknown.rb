# frozen_string_literal: true

module Whop_sdk
  module Internal
    module Types
      module Unknown
        include Whop_sdk::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
