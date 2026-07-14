# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Deposits#create
    class DepositCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute destination
      #   Destination account ID or wallet address. Object form is supported for
      #   compatibility.
      #
      #   @return [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1]
      required :destination, union: -> { WhopSDK::DepositCreateParams::Destination }

      # @!attribute amount
      #   Amount to prefill on hosted deposit page.
      #
      #   @return [Float, nil]
      optional :amount, Float

      # @!attribute metadata
      #   Metadata to include with the deposit response.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute network
      #   Destination network override.
      #
      #   @return [String, nil]
      optional :network, String, nil?: true

      # @!method initialize(destination:, amount: nil, metadata: nil, network: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DepositCreateParams} for more details.
      #
      #   @param destination [String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1] Destination account ID or wallet address. Object form is supported for compatibi
      #
      #   @param amount [Float] Amount to prefill on hosted deposit page.
      #
      #   @param metadata [Hash{Symbol=>Object}] Metadata to include with the deposit response.
      #
      #   @param network [String, nil] Destination network override.
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
          #   Destination account ID.
          #
          #   @return [String, nil]
          optional :account_id, String

          # @!attribute address
          #   Destination wallet address.
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute network
          #   Destination wallet network.
          #
          #   @return [String, nil]
          optional :network, String

          # @!method initialize(account_id: nil, address: nil, network: nil)
          #   @param account_id [String] Destination account ID.
          #
          #   @param address [String] Destination wallet address.
          #
          #   @param network [String] Destination wallet network.
        end

        # @!method self.variants
        #   @return [Array(String, WhopSDK::Models::DepositCreateParams::Destination::UnionMember1)]
      end
    end
  end
end
