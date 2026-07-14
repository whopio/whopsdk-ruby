# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CheckoutConfigurations#list
    class CheckoutConfigurationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   Account ID, prefixed `biz_`.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Cursor for the next page of results.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute created_after
      #   Only return checkout configurations created after this Unix timestamp.
      #
      #   @return [Integer, nil]
      optional :created_after, Integer

      # @!attribute created_before
      #   Only return checkout configurations created before this Unix timestamp.
      #
      #   @return [Integer, nil]
      optional :created_before, Integer

      # @!attribute direction
      #   Sort direction. Defaults to `desc`.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::CheckoutConfigurationListParams::Direction }

      # @!attribute first
      #   Number of checkout configurations to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute order
      #   Field used to sort checkout configurations.
      #
      #   @return [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::CheckoutConfigurationListParams::Order }

      # @!attribute plan_id
      #   Only return checkout configurations for this plan ID, prefixed `plan_`.
      #
      #   @return [String, nil]
      optional :plan_id, String

      # @!method initialize(company_id:, after: nil, created_after: nil, created_before: nil, direction: nil, first: nil, order: nil, plan_id: nil, request_options: {})
      #   @param company_id [String] Account ID, prefixed `biz_`.
      #
      #   @param after [String] Cursor for the next page of results.
      #
      #   @param created_after [Integer] Only return checkout configurations created after this Unix timestamp.
      #
      #   @param created_before [Integer] Only return checkout configurations created before this Unix timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Direction] Sort direction. Defaults to `desc`.
      #
      #   @param first [Integer] Number of checkout configurations to return.
      #
      #   @param order [Symbol, WhopSDK::Models::CheckoutConfigurationListParams::Order] Field used to sort checkout configurations.
      #
      #   @param plan_id [String] Only return checkout configurations for this plan ID, prefixed `plan_`.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction. Defaults to `desc`.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Field used to sort checkout configurations.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
