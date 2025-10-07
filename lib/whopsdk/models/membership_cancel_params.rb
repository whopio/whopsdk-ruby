# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Memberships#cancel
    class MembershipCancelParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute cancellation_mode
      #   The mode of cancellation for a membership
      #
      #   @return [Symbol, Whopsdk::Models::MembershipCancelParams::CancellationMode, nil]
      optional :cancellation_mode, enum: -> { Whopsdk::MembershipCancelParams::CancellationMode }, nil?: true

      # @!method initialize(cancellation_mode: nil, request_options: {})
      #   @param cancellation_mode [Symbol, Whopsdk::Models::MembershipCancelParams::CancellationMode, nil] The mode of cancellation for a membership
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The mode of cancellation for a membership
      module CancellationMode
        extend Whopsdk::Internal::Type::Enum

        AT_PERIOD_END = :at_period_end
        IMMEDIATE = :immediate

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
