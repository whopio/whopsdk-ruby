# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DisputeAlerts#list
    class DisputeAlertListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Only alerts on this account's payments (`biz_` tag). Omit it to cover every
      #   account you can read.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns alerts after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns alerts before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only alerts Whop received after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only alerts Whop received before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   Sort direction.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeAlertListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::DisputeAlertListParams::Direction }

      # @!attribute first
      #   The number of alerts to return (default 20, max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of alerts to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort alerts by.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeAlertListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::DisputeAlertListParams::Order }

      # @!attribute payment_id
      #   Only alerts on this payment (`pay_` tag). A payment can carry several.
      #
      #   @return [String, nil]
      optional :payment_id, String

      # @!attribute type
      #   Only alerts of this kind. `early_fraud_warning` for issuer fraud reports,
      #   `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR
      #   cases the network already closed.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeAlertListParams::Type, nil]
      optional :type, enum: -> { WhopSDK::DisputeAlertListParams::Type }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, payment_id: nil, type: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeAlertListParams} for more details.
      #
      #   @param account_id [String] Only alerts on this account's payments (`biz_` tag). Omit it to cover every acco
      #
      #   @param after [String] A cursor; returns alerts after this position.
      #
      #   @param before [String] A cursor; returns alerts before this position.
      #
      #   @param created_after [String] Only alerts Whop received after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only alerts Whop received before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::DisputeAlertListParams::Direction] Sort direction.
      #
      #   @param first [Integer] The number of alerts to return (default 20, max 100).
      #
      #   @param last [Integer] The number of alerts to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::DisputeAlertListParams::Order] The field to sort alerts by.
      #
      #   @param payment_id [String] Only alerts on this payment (`pay_` tag). A payment can carry several.
      #
      #   @param type [Symbol, WhopSDK::Models::DisputeAlertListParams::Type] Only alerts of this kind. `early_fraud_warning` for issuer fraud reports, `dispu
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort alerts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        REPORTED_AT = :reported_at
        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Only alerts of this kind. `early_fraud_warning` for issuer fraud reports,
      # `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR
      # cases the network already closed.
      module Type
        extend WhopSDK::Internal::Type::Enum

        EARLY_FRAUD_WARNING = :early_fraud_warning
        DISPUTE_ALERT = :dispute_alert
        RAPID_DISPUTE_RESOLUTION = :rapid_dispute_resolution

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
