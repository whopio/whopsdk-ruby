# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#update
    class CardUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute spend_limit
      #
      #   @return [String, nil]
      optional :spend_limit, String

      # @!attribute spend_limit_frequency
      #
      #   @return [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency, nil]
      optional :spend_limit_frequency, enum: -> { WhopSDK::CardUpdateParams::SpendLimitFrequency }

      # @!attribute transaction_limit
      #
      #   @return [String, nil]
      optional :transaction_limit, String

      # @!method initialize(id:, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, request_options: {})
      #   @param id [String]
      #   @param name [String]
      #   @param spend_limit [String]
      #   @param spend_limit_frequency [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency]
      #   @param transaction_limit [String]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      module SpendLimitFrequency
        extend WhopSDK::Internal::Type::Enum

        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
