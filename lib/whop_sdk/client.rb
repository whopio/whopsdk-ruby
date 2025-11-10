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

    # The app API key from an app from the /dashboard/developer page
    # @return [String]
    attr_reader :api_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    # @return [String, nil]
    attr_reader :app_id

    # @return [WhopSDK::Resources::Apps]
    attr_reader :apps

    # @return [WhopSDK::Resources::Invoices]
    attr_reader :invoices

    # @return [WhopSDK::Resources::CourseLessonInteractions]
    attr_reader :course_lesson_interactions

    # @return [WhopSDK::Resources::Products]
    attr_reader :products

    # @return [WhopSDK::Resources::Companies]
    attr_reader :companies

    # @return [WhopSDK::Resources::Webhooks]
    attr_reader :webhooks

    # @return [WhopSDK::Resources::Plans]
    attr_reader :plans

    # @return [WhopSDK::Resources::Entries]
    attr_reader :entries

    # @return [WhopSDK::Resources::ForumPosts]
    attr_reader :forum_posts

    # @return [WhopSDK::Resources::Transfers]
    attr_reader :transfers

    # @return [WhopSDK::Resources::LedgerAccounts]
    attr_reader :ledger_accounts

    # @return [WhopSDK::Resources::Memberships]
    attr_reader :memberships

    # @return [WhopSDK::Resources::AuthorizedUsers]
    attr_reader :authorized_users

    # @return [WhopSDK::Resources::AppBuilds]
    attr_reader :app_builds

    # @return [WhopSDK::Resources::Shipments]
    attr_reader :shipments

    # @return [WhopSDK::Resources::CheckoutConfigurations]
    attr_reader :checkout_configurations

    # @return [WhopSDK::Resources::Messages]
    attr_reader :messages

    # @return [WhopSDK::Resources::ChatChannels]
    attr_reader :chat_channels

    # @return [WhopSDK::Resources::Users]
    attr_reader :users

    # @return [WhopSDK::Resources::Payments]
    attr_reader :payments

    # @return [WhopSDK::Resources::SupportChannels]
    attr_reader :support_channels

    # @return [WhopSDK::Resources::Experiences]
    attr_reader :experiences

    # @return [WhopSDK::Resources::Reactions]
    attr_reader :reactions

    # @return [WhopSDK::Resources::Members]
    attr_reader :members

    # @return [WhopSDK::Resources::Forums]
    attr_reader :forums

    # @return [WhopSDK::Resources::PromoCodes]
    attr_reader :promo_codes

    # @return [WhopSDK::Resources::Courses]
    attr_reader :courses

    # @return [WhopSDK::Resources::CourseChapters]
    attr_reader :course_chapters

    # @return [WhopSDK::Resources::CourseLessons]
    attr_reader :course_lessons

    # @return [WhopSDK::Resources::Reviews]
    attr_reader :reviews

    # @return [WhopSDK::Resources::CourseStudents]
    attr_reader :course_students

    # @return [WhopSDK::Resources::AccessTokens]
    attr_reader :access_tokens

    # @return [WhopSDK::Resources::Notifications]
    attr_reader :notifications

    # @return [WhopSDK::Resources::Disputes]
    attr_reader :disputes

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
    end

    # Verifies a Whop user token
    #
    # @param token_or_headers [String, Hash, nil] The token string or headers hash
    # @param app_id [String, nil] The app id to verify against
    # @param public_key [String, nil] Optional custom public key (PEM format)
    # @param header_name [String, nil] The header name to use (defaults to x-whop-user-token)
    # @return [UserTokenPayload] The verified token payload
    # @raise [StandardError] If verification fails
    def verify_user_token!(token_or_headers, **opts)
      opts[:app_id] ||= app_id
      unless opts[:app_id]
        raise StandardError, "You must set app_id in the Whop client if you want to verify user tokens"
      end
      Helpers::VerifyUserToken.verify_user_token!(token_or_headers, **opts)
    end

    # Verifies a Whop user token
    #
    # @param token_or_headers [String, Hash, nil] The token string or headers hash
    # @param app_id [String, nil] The app id to verify against
    # @param public_key [String, nil] Optional custom public key (PEM format)
    # @param header_name [String, nil] The header name to use (defaults to x-whop-user-token)
    # @return [UserTokenPayload, nil] The verified token payload or nil if the verification failed
    def verify_user_token(token_or_headers, **opts)
      verify_user_token!(token_or_headers, **opts)
    rescue StandardError
      nil
    end
  end
end
