# frozen_string_literal: true

require_relative "live"

Whop_sdk::Stats::TimeSeries::Client.class_eval do
  # The answer of {#retrieve} now and each time it changes, until the stream closes for good
  # (see {Whop_sdk::Live}). Takes exactly what {#retrieve} takes, then its own options.
  #
  # @param request_options [Hash]
  # @param max_backoff [Float] The most seconds to wait between reconnects.
  # @param on_disconnect [Proc, nil] Called with each drop, before its reconnect.
  # @param params [Hash]
  # @option request_options [String] :base_url
  # @option request_options [Hash{String => Object}] :additional_headers
  # @option request_options [Hash{String => Object}] :additional_query_parameters
  # @option request_options [Hash{String => Object}] :additional_body_parameters
  # @option request_options [Integer] :timeout_in_seconds
  # @option params [String] :metric
  # @option params [String, nil] :account_id
  # @option params [String, nil] :user_id
  # @option params [String] :from
  # @option params [String] :to
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestInterval, nil] :interval
  # @option params [String, nil] :breakdown_by
  # @option params [String, nil] :convert_to
  # @option params [String, nil] :currency
  # @option params [String, nil] :time_zone
  # @option params [String, nil] :payment_method
  # @option params [String, nil] :card_network
  # @option params [String, nil] :dispute_reason
  # @option params [String, nil] :source
  # @option params [String, nil] :hostname
  # @option params [String, nil] :page
  # @option params [String, nil] :device_type
  # @option params [String, nil] :country_code
  # @option params [String, nil] :event_name
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestEventType, nil] :event_type
  # @option params [String, nil] :custom_name
  # @option params [String, nil] :segment
  # @option params [String, nil] :category
  # @option params [String, nil] :merchant
  # @option params [String, nil] :fee_type
  # @option params [String, nil] :product
  # @option params [String, nil] :status
  # @option params [String, nil] :access_level
  # @option params [String, nil] :most_recent_action
  # @option params [String, nil] :referred_user_id
  # @option params [String, nil] :ad_campaign_ids
  # @option params [String, nil] :ad_group_ids
  # @option params [String, nil] :ad_ids
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestSnapshotWindow, nil] :snapshot_window
  # @option params [String, nil] :event
  # @option params [String, nil] :business_type
  # @option params [String, nil] :industry_type
  # @option params [String, nil] :product_category
  # @option params [String, nil] :account_country
  # @option params [String, nil] :issuer
  # @option params [String, nil] :webhook_id
  # @option params [String, nil] :conversion_window
  # @option params [Boolean, nil] :mature_only
  # @option params [Whop_sdk::Types::RetrieveTimeSeriesRequestSteps, nil] :steps
  # @option params [String, nil] :compare_to
  # @option params [Integer, nil] :confidence_level
  # @option params [Boolean, nil] :contactable
  # @option params [Boolean, nil] :has_purchased
  # @option params [String, nil] :first_seen_after
  # @option params [String, nil] :first_seen_before
  # @option params [String, nil] :last_seen_after
  # @option params [String, nil] :last_seen_before
  # @option params [Integer, nil] :first_seen_within_days
  # @option params [Integer, nil] :last_seen_within_days
  # @option params [Boolean, nil] :known
  # @option params [Boolean, nil] :has_email
  # @option params [Boolean, nil] :has_phone
  # @option params [Integer, nil] :ltv_gt
  # @option params [Integer, nil] :ltv_gte
  # @option params [Integer, nil] :ltv_lt
  # @option params [Integer, nil] :ltv_lte
  # @option params [Integer, nil] :aov_gt
  # @option params [Integer, nil] :aov_gte
  # @option params [Integer, nil] :aov_lt
  # @option params [Integer, nil] :aov_lte
  # @option params [Integer, nil] :purchase_count_gt
  # @option params [Integer, nil] :purchase_count_gte
  # @option params [Integer, nil] :purchase_count_lt
  # @option params [Integer, nil] :purchase_count_lte
  # @option params [Integer, nil] :event_count_gt
  # @option params [Integer, nil] :event_count_gte
  # @option params [Integer, nil] :event_count_lt
  # @option params [Integer, nil] :event_count_lte
  # @option params [String, nil] :referring_account_id
  # @option params [String, nil] :team_lead_id
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestActivity, nil] :activity
  # @option params [Integer, nil] :breakdown_limit
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestMode, nil] :mode
  # @option params [String, nil] :account_ids
  # @option params [String, nil] :runner_ids
  #
  # @yieldparam answer [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponse]
  # @return [Whop_sdk::Live::Stream, nil] The answers, without a block; with one, nil once the stream ends.
  def watch(request_options: {}, max_backoff: Whop_sdk::Live::DEFAULT_MAX_BACKOFF, on_disconnect: nil, **params, &)
    Whop_sdk::Live.watch(
      self, :retrieve, Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponse, params,
      request_options:, max_backoff:, on_disconnect:, &
    )
  end

  # The first answer of {#retrieve} that `until` accepts, the current one included. Takes
  # exactly what {#retrieve} takes, then its own options.
  #
  # @param until [Proc] Accepts the answer to return.
  # @param request_options [Hash]
  # @param fail_when [Proc, nil] Raises {Whop_sdk::Live::WaitForFailedError} on the first answer it accepts.
  # @param timeout [Float, nil] Raises {Whop_sdk::Live::WaitForTimeoutError} after this many seconds; nil waits indefinitely.
  # @param max_backoff [Float] The most seconds to wait between reconnects.
  # @param on_disconnect [Proc, nil] Called with each drop, before its reconnect, on the thread reading the stream.
  # @param params [Hash]
  # @option request_options [String] :base_url
  # @option request_options [Hash{String => Object}] :additional_headers
  # @option request_options [Hash{String => Object}] :additional_query_parameters
  # @option request_options [Hash{String => Object}] :additional_body_parameters
  # @option request_options [Integer] :timeout_in_seconds
  # @option params [String] :metric
  # @option params [String, nil] :account_id
  # @option params [String, nil] :user_id
  # @option params [String] :from
  # @option params [String] :to
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestInterval, nil] :interval
  # @option params [String, nil] :breakdown_by
  # @option params [String, nil] :convert_to
  # @option params [String, nil] :currency
  # @option params [String, nil] :time_zone
  # @option params [String, nil] :payment_method
  # @option params [String, nil] :card_network
  # @option params [String, nil] :dispute_reason
  # @option params [String, nil] :source
  # @option params [String, nil] :hostname
  # @option params [String, nil] :page
  # @option params [String, nil] :device_type
  # @option params [String, nil] :country_code
  # @option params [String, nil] :event_name
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestEventType, nil] :event_type
  # @option params [String, nil] :custom_name
  # @option params [String, nil] :segment
  # @option params [String, nil] :category
  # @option params [String, nil] :merchant
  # @option params [String, nil] :fee_type
  # @option params [String, nil] :product
  # @option params [String, nil] :status
  # @option params [String, nil] :access_level
  # @option params [String, nil] :most_recent_action
  # @option params [String, nil] :referred_user_id
  # @option params [String, nil] :ad_campaign_ids
  # @option params [String, nil] :ad_group_ids
  # @option params [String, nil] :ad_ids
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestSnapshotWindow, nil] :snapshot_window
  # @option params [String, nil] :event
  # @option params [String, nil] :business_type
  # @option params [String, nil] :industry_type
  # @option params [String, nil] :product_category
  # @option params [String, nil] :account_country
  # @option params [String, nil] :issuer
  # @option params [String, nil] :webhook_id
  # @option params [String, nil] :conversion_window
  # @option params [Boolean, nil] :mature_only
  # @option params [Whop_sdk::Types::RetrieveTimeSeriesRequestSteps, nil] :steps
  # @option params [String, nil] :compare_to
  # @option params [Integer, nil] :confidence_level
  # @option params [Boolean, nil] :contactable
  # @option params [Boolean, nil] :has_purchased
  # @option params [String, nil] :first_seen_after
  # @option params [String, nil] :first_seen_before
  # @option params [String, nil] :last_seen_after
  # @option params [String, nil] :last_seen_before
  # @option params [Integer, nil] :first_seen_within_days
  # @option params [Integer, nil] :last_seen_within_days
  # @option params [Boolean, nil] :known
  # @option params [Boolean, nil] :has_email
  # @option params [Boolean, nil] :has_phone
  # @option params [Integer, nil] :ltv_gt
  # @option params [Integer, nil] :ltv_gte
  # @option params [Integer, nil] :ltv_lt
  # @option params [Integer, nil] :ltv_lte
  # @option params [Integer, nil] :aov_gt
  # @option params [Integer, nil] :aov_gte
  # @option params [Integer, nil] :aov_lt
  # @option params [Integer, nil] :aov_lte
  # @option params [Integer, nil] :purchase_count_gt
  # @option params [Integer, nil] :purchase_count_gte
  # @option params [Integer, nil] :purchase_count_lt
  # @option params [Integer, nil] :purchase_count_lte
  # @option params [Integer, nil] :event_count_gt
  # @option params [Integer, nil] :event_count_gte
  # @option params [Integer, nil] :event_count_lt
  # @option params [Integer, nil] :event_count_lte
  # @option params [String, nil] :referring_account_id
  # @option params [String, nil] :team_lead_id
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestActivity, nil] :activity
  # @option params [Integer, nil] :breakdown_limit
  # @option params [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesRequestMode, nil] :mode
  # @option params [String, nil] :account_ids
  # @option params [String, nil] :runner_ids
  #
  # @return [Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponse]
  def wait_for(
    until:, request_options: {}, fail_when: nil, timeout: Whop_sdk::Live::DEFAULT_WAIT_FOR_TIMEOUT,
    max_backoff: Whop_sdk::Live::DEFAULT_MAX_BACKOFF, on_disconnect: nil, **params
  )
    Whop_sdk::Live.wait_for(
      self, :retrieve, Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponse, params,
      request_options:, until: binding.local_variable_get(:until), fail_when:, timeout:, max_backoff:, on_disconnect:
    )
  end
end
