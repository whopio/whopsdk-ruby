# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Memberships#pause
    class MembershipPauseParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute void_payments
      #   Whether to void past_due payments associated with the membership to prevent
      #   future payment attempts.
      #
      #   @return [Boolean, nil]
      optional :void_payments, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!method initialize(void_payments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::MembershipPauseParams} for more details.
      #
      #   @param void_payments [Boolean, nil] Whether to void past_due payments associated with the membership to prevent futu
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
