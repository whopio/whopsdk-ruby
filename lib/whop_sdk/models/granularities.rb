# frozen_string_literal: true

module WhopSDK
  module Models
    # Bucket size for external ad stat rows.
    module Granularities
      extend WhopSDK::Internal::Type::Enum

      HOURLY = :hourly
      DAILY = :daily
      WEEKLY = :weekly
      MONTHLY = :monthly

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
