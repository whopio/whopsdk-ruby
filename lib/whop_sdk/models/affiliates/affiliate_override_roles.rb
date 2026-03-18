# frozen_string_literal: true

module WhopSDK
  module Models
    module Affiliates
      # The role of an affiliate override (standard or rev_share)
      module AffiliateOverrideRoles
        extend WhopSDK::Internal::Type::Enum

        STANDARD = :standard
        REV_SHARE = :rev_share

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    AffiliateOverrideRoles = Affiliates::AffiliateOverrideRoles
  end
end
