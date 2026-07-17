# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#pause
    class MembershipPauseParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute resumes_at
      #   When the membership should automatically resume payment collection. If not
      #   provided, the membership stays paused until manually resumed.
      #
      #   @return [Time, nil]
      optional :resumes_at, Time, nil?: true

      # @!attribute void_payments
      #   Whether to void any outstanding past-due payments on this membership, preventing
      #   future collection attempts.
      #
      #   @return [Boolean, nil]
      optional :void_payments, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!method initialize(id:, resumes_at: nil, void_payments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipPauseParams} for more details.
      #
      #   @param id [String]
      #
      #   @param resumes_at [Time, nil] When the membership should automatically resume payment collection. If not provi
      #
      #   @param void_payments [Boolean, nil] Whether to void any outstanding past-due payments on this membership, preventing
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
