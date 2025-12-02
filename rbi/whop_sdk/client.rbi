# typed: strong

module WhopSDK
  class Client < WhopSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # The app API key from an app from the /dashboard/developer page
    sig { returns(String) }
    attr_reader :api_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    sig { returns(T.nilable(String)) }
    attr_reader :app_id

    sig { returns(WhopSDK::Resources::Apps) }
    attr_reader :apps

    sig { returns(WhopSDK::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(WhopSDK::Resources::CourseLessonInteractions) }
    attr_reader :course_lesson_interactions

    sig { returns(WhopSDK::Resources::Products) }
    attr_reader :products

    sig { returns(WhopSDK::Resources::Companies) }
    attr_reader :companies

    sig { returns(WhopSDK::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(WhopSDK::Resources::Plans) }
    attr_reader :plans

    sig { returns(WhopSDK::Resources::Entries) }
    attr_reader :entries

    sig { returns(WhopSDK::Resources::ForumPosts) }
    attr_reader :forum_posts

    sig { returns(WhopSDK::Resources::Transfers) }
    attr_reader :transfers

    sig { returns(WhopSDK::Resources::LedgerAccounts) }
    attr_reader :ledger_accounts

    sig { returns(WhopSDK::Resources::Memberships) }
    attr_reader :memberships

    sig { returns(WhopSDK::Resources::AuthorizedUsers) }
    attr_reader :authorized_users

    sig { returns(WhopSDK::Resources::AppBuilds) }
    attr_reader :app_builds

    sig { returns(WhopSDK::Resources::Shipments) }
    attr_reader :shipments

    sig { returns(WhopSDK::Resources::CheckoutConfigurations) }
    attr_reader :checkout_configurations

    sig { returns(WhopSDK::Resources::Messages) }
    attr_reader :messages

    sig { returns(WhopSDK::Resources::ChatChannels) }
    attr_reader :chat_channels

    sig { returns(WhopSDK::Resources::Users) }
    attr_reader :users

    sig { returns(WhopSDK::Resources::Payments) }
    attr_reader :payments

    sig { returns(WhopSDK::Resources::SupportChannels) }
    attr_reader :support_channels

    sig { returns(WhopSDK::Resources::Experiences) }
    attr_reader :experiences

    sig { returns(WhopSDK::Resources::Reactions) }
    attr_reader :reactions

    sig { returns(WhopSDK::Resources::Members) }
    attr_reader :members

    sig { returns(WhopSDK::Resources::Forums) }
    attr_reader :forums

    sig { returns(WhopSDK::Resources::PromoCodes) }
    attr_reader :promo_codes

    sig { returns(WhopSDK::Resources::Courses) }
    attr_reader :courses

    sig { returns(WhopSDK::Resources::CourseChapters) }
    attr_reader :course_chapters

    sig { returns(WhopSDK::Resources::CourseLessons) }
    attr_reader :course_lessons

    sig { returns(WhopSDK::Resources::Reviews) }
    attr_reader :reviews

    sig { returns(WhopSDK::Resources::CourseStudents) }
    attr_reader :course_students

    sig { returns(WhopSDK::Resources::AccessTokens) }
    attr_reader :access_tokens

    sig { returns(WhopSDK::Resources::Notifications) }
    attr_reader :notifications

    sig { returns(WhopSDK::Resources::Disputes) }
    attr_reader :disputes

    sig { returns(WhopSDK::Resources::Refunds) }
    attr_reader :refunds

    sig { returns(WhopSDK::Resources::Withdrawals) }
    attr_reader :withdrawals

    sig { returns(WhopSDK::Resources::AccountLinks) }
    attr_reader :account_links

    sig { returns(WhopSDK::Resources::SetupIntents) }
    attr_reader :setup_intents

    sig { returns(WhopSDK::Resources::PaymentTokens) }
    attr_reader :payment_tokens

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        app_id: T.nilable(String),
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
      # When using the SDK in app mode pass this parameter to allow verifying user
      # tokens Defaults to `ENV["WHOP_APP_ID"]`
      app_id: ENV["WHOP_APP_ID"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["WHOP_BASE_URL"]`
      base_url: ENV["WHOP_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: WhopSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: WhopSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: WhopSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: WhopSDK::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
