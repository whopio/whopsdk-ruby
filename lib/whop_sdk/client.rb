# frozen_string_literal: true

module WhopSDK
  class Client < WhopSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # A company API key, company scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word 'Bearer', which will look like
    # `Bearer ***************************`
    # @return [String]
    attr_reader :api_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    # @return [String, nil]
    attr_reader :app_id

    # Apps
    # @return [WhopSDK::Resources::Apps]
    attr_reader :apps

    # Invoices
    # @return [WhopSDK::Resources::Invoices]
    attr_reader :invoices

    # Course lesson interactions
    # @return [WhopSDK::Resources::CourseLessonInteractions]
    attr_reader :course_lesson_interactions

    # Products
    # @return [WhopSDK::Resources::Products]
    attr_reader :products

    # Companies
    # @return [WhopSDK::Resources::Companies]
    attr_reader :companies

    # Webhooks
    # @return [WhopSDK::Resources::Webhooks]
    attr_reader :webhooks

    # Plans
    # @return [WhopSDK::Resources::Plans]
    attr_reader :plans

    # Entries
    # @return [WhopSDK::Resources::Entries]
    attr_reader :entries

    # Forum posts
    # @return [WhopSDK::Resources::ForumPosts]
    attr_reader :forum_posts

    # Transfers
    # @return [WhopSDK::Resources::Transfers]
    attr_reader :transfers

    # Ledger accounts
    # @return [WhopSDK::Resources::LedgerAccounts]
    attr_reader :ledger_accounts

    # Memberships
    # @return [WhopSDK::Resources::Memberships]
    attr_reader :memberships

    # Authorized users
    # @return [WhopSDK::Resources::AuthorizedUsers]
    attr_reader :authorized_users

    # App builds
    # @return [WhopSDK::Resources::AppBuilds]
    attr_reader :app_builds

    # Shipments
    # @return [WhopSDK::Resources::Shipments]
    attr_reader :shipments

    # Checkout configurations
    # @return [WhopSDK::Resources::CheckoutConfigurations]
    attr_reader :checkout_configurations

    # Messages
    # @return [WhopSDK::Resources::Messages]
    attr_reader :messages

    # Chat channels
    # @return [WhopSDK::Resources::ChatChannels]
    attr_reader :chat_channels

    # Users
    # @return [WhopSDK::Resources::Users]
    attr_reader :users

    # Payments
    # @return [WhopSDK::Resources::Payments]
    attr_reader :payments

    # Support channels
    # @return [WhopSDK::Resources::SupportChannels]
    attr_reader :support_channels

    # Experiences
    # @return [WhopSDK::Resources::Experiences]
    attr_reader :experiences

    # Reactions
    # @return [WhopSDK::Resources::Reactions]
    attr_reader :reactions

    # Members
    # @return [WhopSDK::Resources::Members]
    attr_reader :members

    # Forums
    # @return [WhopSDK::Resources::Forums]
    attr_reader :forums

    # Promo codes
    # @return [WhopSDK::Resources::PromoCodes]
    attr_reader :promo_codes

    # Courses
    # @return [WhopSDK::Resources::Courses]
    attr_reader :courses

    # Course chapters
    # @return [WhopSDK::Resources::CourseChapters]
    attr_reader :course_chapters

    # Course lessons
    # @return [WhopSDK::Resources::CourseLessons]
    attr_reader :course_lessons

    # Reviews
    # @return [WhopSDK::Resources::Reviews]
    attr_reader :reviews

    # Course students
    # @return [WhopSDK::Resources::CourseStudents]
    attr_reader :course_students

    # Access tokens
    # @return [WhopSDK::Resources::AccessTokens]
    attr_reader :access_tokens

    # Notifications
    # @return [WhopSDK::Resources::Notifications]
    attr_reader :notifications

    # Disputes
    # @return [WhopSDK::Resources::Disputes]
    attr_reader :disputes

    # Refunds
    # @return [WhopSDK::Resources::Refunds]
    attr_reader :refunds

    # Withdrawals
    # @return [WhopSDK::Resources::Withdrawals]
    attr_reader :withdrawals

    # Account links
    # @return [WhopSDK::Resources::AccountLinks]
    attr_reader :account_links

    # Setup intents
    # @return [WhopSDK::Resources::SetupIntents]
    attr_reader :setup_intents

    # Payment methods
    # @return [WhopSDK::Resources::PaymentMethods]
    attr_reader :payment_methods

    # Fee markups
    # @return [WhopSDK::Resources::FeeMarkups]
    attr_reader :fee_markups

    # Payout methods
    # @return [WhopSDK::Resources::PayoutMethods]
    attr_reader :payout_methods

    # Verifications
    # @return [WhopSDK::Resources::Verifications]
    attr_reader :verifications

    # Leads
    # @return [WhopSDK::Resources::Leads]
    attr_reader :leads

    # Topups
    # @return [WhopSDK::Resources::Topups]
    attr_reader :topups

    # Files
    # @return [WhopSDK::Resources::Files]
    attr_reader :files

    # Company token transactions
    # @return [WhopSDK::Resources::CompanyTokenTransactions]
    attr_reader :company_token_transactions

    # Dm members
    # @return [WhopSDK::Resources::DmMembers]
    attr_reader :dm_members

    # Ai chats
    # @return [WhopSDK::Resources::AIChats]
    attr_reader :ai_chats

    # Dm channels
    # @return [WhopSDK::Resources::DmChannels]
    attr_reader :dm_channels

    # Dispute alerts
    # @return [WhopSDK::Resources::DisputeAlerts]
    attr_reader :dispute_alerts

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] A company API key, company scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word 'Bearer', which will look like
    # `Bearer ***************************` Defaults to `ENV["WHOP_API_KEY"]`
    #
    # @param app_id [String, nil] When using the SDK in app mode pass this parameter to allow verifying user
    # tokens Defaults to `ENV["WHOP_APP_ID"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["WHOP_BASE_URL"]`
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
      app_id: ENV["WHOP_APP_ID"],
      base_url: ENV["WHOP_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.whop.com/api/v1"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"WHOP_API_KEY\"")
      end

      headers = {
        "x-whop-app-id" => (@app_id = app_id&.to_s)
      }

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @apps = WhopSDK::Resources::Apps.new(client: self)
      @invoices = WhopSDK::Resources::Invoices.new(client: self)
      @course_lesson_interactions = WhopSDK::Resources::CourseLessonInteractions.new(client: self)
      @products = WhopSDK::Resources::Products.new(client: self)
      @companies = WhopSDK::Resources::Companies.new(client: self)
      @webhooks = WhopSDK::Resources::Webhooks.new(client: self)
      @plans = WhopSDK::Resources::Plans.new(client: self)
      @entries = WhopSDK::Resources::Entries.new(client: self)
      @forum_posts = WhopSDK::Resources::ForumPosts.new(client: self)
      @transfers = WhopSDK::Resources::Transfers.new(client: self)
      @ledger_accounts = WhopSDK::Resources::LedgerAccounts.new(client: self)
      @memberships = WhopSDK::Resources::Memberships.new(client: self)
      @authorized_users = WhopSDK::Resources::AuthorizedUsers.new(client: self)
      @app_builds = WhopSDK::Resources::AppBuilds.new(client: self)
      @shipments = WhopSDK::Resources::Shipments.new(client: self)
      @checkout_configurations = WhopSDK::Resources::CheckoutConfigurations.new(client: self)
      @messages = WhopSDK::Resources::Messages.new(client: self)
      @chat_channels = WhopSDK::Resources::ChatChannels.new(client: self)
      @users = WhopSDK::Resources::Users.new(client: self)
      @payments = WhopSDK::Resources::Payments.new(client: self)
      @support_channels = WhopSDK::Resources::SupportChannels.new(client: self)
      @experiences = WhopSDK::Resources::Experiences.new(client: self)
      @reactions = WhopSDK::Resources::Reactions.new(client: self)
      @members = WhopSDK::Resources::Members.new(client: self)
      @forums = WhopSDK::Resources::Forums.new(client: self)
      @promo_codes = WhopSDK::Resources::PromoCodes.new(client: self)
      @courses = WhopSDK::Resources::Courses.new(client: self)
      @course_chapters = WhopSDK::Resources::CourseChapters.new(client: self)
      @course_lessons = WhopSDK::Resources::CourseLessons.new(client: self)
      @reviews = WhopSDK::Resources::Reviews.new(client: self)
      @course_students = WhopSDK::Resources::CourseStudents.new(client: self)
      @access_tokens = WhopSDK::Resources::AccessTokens.new(client: self)
      @notifications = WhopSDK::Resources::Notifications.new(client: self)
      @disputes = WhopSDK::Resources::Disputes.new(client: self)
      @refunds = WhopSDK::Resources::Refunds.new(client: self)
      @withdrawals = WhopSDK::Resources::Withdrawals.new(client: self)
      @account_links = WhopSDK::Resources::AccountLinks.new(client: self)
      @setup_intents = WhopSDK::Resources::SetupIntents.new(client: self)
      @payment_methods = WhopSDK::Resources::PaymentMethods.new(client: self)
      @fee_markups = WhopSDK::Resources::FeeMarkups.new(client: self)
      @payout_methods = WhopSDK::Resources::PayoutMethods.new(client: self)
      @verifications = WhopSDK::Resources::Verifications.new(client: self)
      @leads = WhopSDK::Resources::Leads.new(client: self)
      @topups = WhopSDK::Resources::Topups.new(client: self)
      @files = WhopSDK::Resources::Files.new(client: self)
      @company_token_transactions = WhopSDK::Resources::CompanyTokenTransactions.new(client: self)
      @dm_members = WhopSDK::Resources::DmMembers.new(client: self)
      @ai_chats = WhopSDK::Resources::AIChats.new(client: self)
      @dm_channels = WhopSDK::Resources::DmChannels.new(client: self)
      @dispute_alerts = WhopSDK::Resources::DisputeAlerts.new(client: self)
    end
  end
end
