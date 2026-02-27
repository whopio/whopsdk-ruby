# typed: strong

module WhopSDK
  class Client < WhopSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # A company API key, company scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word 'Bearer', which will look like
    # `Bearer ***************************`
    sig { returns(String) }
    attr_reader :api_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    sig { returns(T.nilable(String)) }
    attr_reader :app_id

    # Apps
    sig { returns(WhopSDK::Resources::Apps) }
    attr_reader :apps

    # Invoices
    sig { returns(WhopSDK::Resources::Invoices) }
    attr_reader :invoices

    # Course lesson interactions
    sig { returns(WhopSDK::Resources::CourseLessonInteractions) }
    attr_reader :course_lesson_interactions

    # Products
    sig { returns(WhopSDK::Resources::Products) }
    attr_reader :products

    # Companies
    sig { returns(WhopSDK::Resources::Companies) }
    attr_reader :companies

    # Webhooks
    sig { returns(WhopSDK::Resources::Webhooks) }
    attr_reader :webhooks

    # Plans
    sig { returns(WhopSDK::Resources::Plans) }
    attr_reader :plans

    # Entries
    sig { returns(WhopSDK::Resources::Entries) }
    attr_reader :entries

    # Forum posts
    sig { returns(WhopSDK::Resources::ForumPosts) }
    attr_reader :forum_posts

    # Transfers
    sig { returns(WhopSDK::Resources::Transfers) }
    attr_reader :transfers

    # Ledger accounts
    sig { returns(WhopSDK::Resources::LedgerAccounts) }
    attr_reader :ledger_accounts

    # Memberships
    sig { returns(WhopSDK::Resources::Memberships) }
    attr_reader :memberships

    # Authorized users
    sig { returns(WhopSDK::Resources::AuthorizedUsers) }
    attr_reader :authorized_users

    # App builds
    sig { returns(WhopSDK::Resources::AppBuilds) }
    attr_reader :app_builds

    # Shipments
    sig { returns(WhopSDK::Resources::Shipments) }
    attr_reader :shipments

    # Checkout configurations
    sig { returns(WhopSDK::Resources::CheckoutConfigurations) }
    attr_reader :checkout_configurations

    # Messages
    sig { returns(WhopSDK::Resources::Messages) }
    attr_reader :messages

    # Chat channels
    sig { returns(WhopSDK::Resources::ChatChannels) }
    attr_reader :chat_channels

    # Users
    sig { returns(WhopSDK::Resources::Users) }
    attr_reader :users

    # Payments
    sig { returns(WhopSDK::Resources::Payments) }
    attr_reader :payments

    # Support channels
    sig { returns(WhopSDK::Resources::SupportChannels) }
    attr_reader :support_channels

    # Experiences
    sig { returns(WhopSDK::Resources::Experiences) }
    attr_reader :experiences

    # Reactions
    sig { returns(WhopSDK::Resources::Reactions) }
    attr_reader :reactions

    # Members
    sig { returns(WhopSDK::Resources::Members) }
    attr_reader :members

    # Forums
    sig { returns(WhopSDK::Resources::Forums) }
    attr_reader :forums

    # Promo codes
    sig { returns(WhopSDK::Resources::PromoCodes) }
    attr_reader :promo_codes

    # Courses
    sig { returns(WhopSDK::Resources::Courses) }
    attr_reader :courses

    # Course chapters
    sig { returns(WhopSDK::Resources::CourseChapters) }
    attr_reader :course_chapters

    # Course lessons
    sig { returns(WhopSDK::Resources::CourseLessons) }
    attr_reader :course_lessons

    # Reviews
    sig { returns(WhopSDK::Resources::Reviews) }
    attr_reader :reviews

    # Course students
    sig { returns(WhopSDK::Resources::CourseStudents) }
    attr_reader :course_students

    # Access tokens
    sig { returns(WhopSDK::Resources::AccessTokens) }
    attr_reader :access_tokens

    # Notifications
    sig { returns(WhopSDK::Resources::Notifications) }
    attr_reader :notifications

    # Disputes
    sig { returns(WhopSDK::Resources::Disputes) }
    attr_reader :disputes

    # Refunds
    sig { returns(WhopSDK::Resources::Refunds) }
    attr_reader :refunds

    # Withdrawals
    sig { returns(WhopSDK::Resources::Withdrawals) }
    attr_reader :withdrawals

    # Account links
    sig { returns(WhopSDK::Resources::AccountLinks) }
    attr_reader :account_links

    # Setup intents
    sig { returns(WhopSDK::Resources::SetupIntents) }
    attr_reader :setup_intents

    # Payment methods
    sig { returns(WhopSDK::Resources::PaymentMethods) }
    attr_reader :payment_methods

    # Fee markups
    sig { returns(WhopSDK::Resources::FeeMarkups) }
    attr_reader :fee_markups

    # Payout methods
    sig { returns(WhopSDK::Resources::PayoutMethods) }
    attr_reader :payout_methods

    # Verifications
    sig { returns(WhopSDK::Resources::Verifications) }
    attr_reader :verifications

    # Leads
    sig { returns(WhopSDK::Resources::Leads) }
    attr_reader :leads

    # Topups
    sig { returns(WhopSDK::Resources::Topups) }
    attr_reader :topups

    # Files
    sig { returns(WhopSDK::Resources::Files) }
    attr_reader :files

    # Company token transactions
    sig { returns(WhopSDK::Resources::CompanyTokenTransactions) }
    attr_reader :company_token_transactions

    # Dm members
    sig { returns(WhopSDK::Resources::DmMembers) }
    attr_reader :dm_members

    # Ai chats
    sig { returns(WhopSDK::Resources::AIChats) }
    attr_reader :ai_chats

    # Dm channels
    sig { returns(WhopSDK::Resources::DmChannels) }
    attr_reader :dm_channels

    # Dispute alerts
    sig { returns(WhopSDK::Resources::DisputeAlerts) }
    attr_reader :dispute_alerts

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
      # A company API key, company scoped JWT, app API key, or user OAuth token. You
      # must prepend your key/token with the word 'Bearer', which will look like
      # `Bearer ***************************` Defaults to `ENV["WHOP_API_KEY"]`
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
