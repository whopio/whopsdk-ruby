# frozen_string_literal: true

module WhopSDK
  module Models
    # The platforms where an ad campaign can run.
    module AdCampaignPlatform
      extend WhopSDK::Internal::Type::Enum

      META = :meta
      TIKTOK = :tiktok

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
