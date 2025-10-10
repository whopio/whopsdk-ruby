# typed: strong

module Whopsdk
  class Client < Whopsdk::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # The app API key from an app from the /dashboard/developer page
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Whopsdk::Resources::Apps) }
    attr_reader :apps

    sig { returns(Whopsdk::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(Whopsdk::Resources::CourseLessonInteractions) }
    attr_reader :course_lesson_interactions

    sig { returns(Whopsdk::Resources::Products) }
    attr_reader :products

    sig { returns(Whopsdk::Resources::Companies) }
    attr_reader :companies

    sig { returns(Whopsdk::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(Whopsdk::Resources::Plans) }
    attr_reader :plans

    sig { returns(Whopsdk::Resources::Entries) }
    attr_reader :entries

    sig { returns(Whopsdk::Resources::ForumPosts) }
    attr_reader :forum_posts

    sig { returns(Whopsdk::Resources::Transfers) }
    attr_reader :transfers

    sig { returns(Whopsdk::Resources::LedgerAccounts) }
    attr_reader :ledger_accounts

    sig { returns(Whopsdk::Resources::Memberships) }
    attr_reader :memberships

    sig { returns(Whopsdk::Resources::AuthorizedUsers) }
    attr_reader :authorized_users

    sig { returns(Whopsdk::Resources::AppBuilds) }
    attr_reader :app_builds

    sig { returns(Whopsdk::Resources::Shipments) }
    attr_reader :shipments

    sig { returns(Whopsdk::Resources::CheckoutConfigurations) }
    attr_reader :checkout_configurations

    sig { returns(Whopsdk::Resources::Messages) }
    attr_reader :messages

    sig { returns(Whopsdk::Resources::ChatChannels) }
    attr_reader :chat_channels

    sig { returns(Whopsdk::Resources::Users) }
    attr_reader :users

    sig { returns(Whopsdk::Resources::Payments) }
    attr_reader :payments

    sig { returns(Whopsdk::Resources::SupportChannels) }
    attr_reader :support_channels

    sig { returns(Whopsdk::Resources::Experiences) }
    attr_reader :experiences

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # The app API key from an app from the /dashboard/developer page Defaults to
      # `ENV["WHOP_API_KEY"]`
      api_key: ENV["WHOP_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["WHOPSDK_BASE_URL"]`
      base_url: ENV["WHOPSDK_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Whopsdk::Client::DEFAULT_MAX_RETRIES,
      timeout: Whopsdk::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Whopsdk::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Whopsdk::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
