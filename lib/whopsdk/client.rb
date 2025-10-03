# frozen_string_literal: true

module Whopsdk
  class Client < Whopsdk::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # The app API key from an app from the /dashboard/developer page
    # @return [String]
    attr_reader :api_key

    # @return [Whopsdk::Resources::Apps]
    attr_reader :apps

    # @return [Whopsdk::Resources::Invoices]
    attr_reader :invoices

    # @return [Whopsdk::Resources::CourseLessonInteractions]
    attr_reader :course_lesson_interactions

    # @return [Whopsdk::Resources::Products]
    attr_reader :products

    # @return [Whopsdk::Resources::Companies]
    attr_reader :companies

    # @return [Whopsdk::Resources::Webhooks]
    attr_reader :webhooks

    # @return [Whopsdk::Resources::Plans]
    attr_reader :plans

    # @return [Whopsdk::Resources::Entries]
    attr_reader :entries

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] The app API key from an app from the /dashboard/developer page Defaults to
    # `ENV["WHOP_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["WHOPSDK_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["WHOP_API_KEY"],
      base_url: ENV["WHOPSDK_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.whop.com/api/v1"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"WHOP_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @apps = Whopsdk::Resources::Apps.new(client: self)
      @invoices = Whopsdk::Resources::Invoices.new(client: self)
      @course_lesson_interactions = Whopsdk::Resources::CourseLessonInteractions.new(client: self)
      @products = Whopsdk::Resources::Products.new(client: self)
      @companies = Whopsdk::Resources::Companies.new(client: self)
      @webhooks = Whopsdk::Resources::Webhooks.new(client: self)
      @plans = Whopsdk::Resources::Plans.new(client: self)
      @entries = Whopsdk::Resources::Entries.new(client: self)
    end
  end
end
