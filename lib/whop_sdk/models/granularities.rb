# frozen_string_literal: true

module WhopSDK
  module Models
    # Bucket size for external ad stat rows.
    module Granularities
      extend WhopSDK::Internal::Type::Enum

      DAILY = :daily
      HOURLY = :hourly

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
