# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Deposits#create
    class DepositCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount to deposit.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute destination
      #   Destination account ID or wallet address. Object form is supported for
      #   compatibility.
      #
      #   @return [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1]
      required :destination, union: -> { WhopSDK::DepositCreateParams::Destination }

      # @!attribute metadata
      #   Arbitrary metadata echoed in the response.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute network
      #   Optional destination network override.
      #
      #   @return [String, nil]
      optional :network, String, nil?: true

      # @!method initialize(amount:, destination:, metadata: nil, network: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DepositCreateParams} for more details.
      #
      #   @param amount [Float] Amount to deposit.
      #
      #   @param destination [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1] Destination account ID or wallet address. Object form is supported for compatibi
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary metadata echoed in the response.
      #
      #   @param network [String, nil] Optional destination network override.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Destination account ID or wallet address. Object form is supported for
      # compatibility.
      module Destination
        extend WhopSDK::Internal::Type::Union

        variant String

        variant -> { WhopSDK::DepositCreateParams::Destination::UnionMember1 }

        class UnionMember1 < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_id
          #
          #   @return [String, nil]
          optional :account_id, String

          # @!attribute address
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute network
          #
          #   @return [String, nil]
          optional :network, String

          # @!method initialize(account_id: nil, address: nil, network: nil)
          #   @param account_id [String]
          #   @param address [String]
          #   @param network [String]
        end

        # @!method self.variants
        #   @return [Array(String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1)]
      end
    end
  end
end
