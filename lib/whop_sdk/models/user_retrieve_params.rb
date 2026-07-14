# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class UserRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   When set, returns the user's account-specific profile overrides for this
      #   account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute from
      #   Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days
      #   ago. Only used with `include_balance_history`.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute include_balance_history
      #   On `GET /users/me`, also compute the caller's balance history (opt-in; runs a
      #   heavier query). Ignored for other users and for callers without balance-read
      #   scope.
      #
      #   @return [Boolean, nil]
      optional :include_balance_history, WhopSDK::Internal::Type::Boolean

      # @!attribute interval
      #   Balance-history point granularity. Defaults to `day`. Only used with
      #   `include_balance_history`.
      #
      #   @return [Symbol, WhopSDK::Models::UserRetrieveParams::Interval, nil]
      optional :interval, enum: -> { WhopSDK::UserRetrieveParams::Interval }

      # @!attribute time_zone
      #   IANA time zone the balance-history points are bucketed in. Defaults to `UTC`.
      #   Only used with `include_balance_history`.
      #
      #   @return [String, nil]
      optional :time_zone, String

      # @!attribute to
      #   Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only
      #   used with `include_balance_history`.
      #
      #   @return [String, nil]
      optional :to, String

      # @!method initialize(id:, account_id: nil, from: nil, include_balance_history: nil, interval: nil, time_zone: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param account_id [String] When set, returns the user's account-specific profile overrides for this account
      #
      #   @param from [String] Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days ago
      #
      #   @param include_balance_history [Boolean] On `GET /users/me`, also compute the caller's balance history (opt-in; runs a he
      #
      #   @param interval [Symbol, WhopSDK::Models::UserRetrieveParams::Interval] Balance-history point granularity. Defaults to `day`. Only used with `include_ba
      #
      #   @param time_zone [String] IANA time zone the balance-history points are bucketed in. Defaults to `UTC`. On
      #
      #   @param to [String] Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only use
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Balance-history point granularity. Defaults to `day`. Only used with
      # `include_balance_history`.
      module Interval
        extend WhopSDK::Internal::Type::Enum

        HOUR = :hour
        DAY = :day
        WEEK = :week
        MONTH = :month

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
