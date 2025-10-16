# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#cancel
    class MembershipCancelParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute cancellation_mode
      #   The mode of cancellation for a membership
      #
      #   @return [Symbol, WhopSDK::Models::MembershipCancelParams::CancellationMode, nil]
      optional :cancellation_mode, enum: -> { WhopSDK::MembershipCancelParams::CancellationMode }, nil?: true

      # @!method initialize(cancellation_mode: nil, request_options: {})
      #   @param cancellation_mode [Symbol, WhopSDK::Models::MembershipCancelParams::CancellationMode, nil] The mode of cancellation for a membership
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The mode of cancellation for a membership
      module CancellationMode
        extend WhopSDK::Internal::Type::Enum

        AT_PERIOD_END = :at_period_end
        IMMEDIATE = :immediate

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
