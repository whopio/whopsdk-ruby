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

    # An account API key, account scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word `Bearer`, which will look like
    # `Bearer ***************************`
    # @return [String]
    attr_reader :api_key

    # @return [String, nil]
    attr_reader :webhook_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    # @return [String, nil]
    attr_reader :app_id

    # Pins the API version (an ISO date). Defaults to the latest version the SDK was
    # generated against.
    # @return [String, nil]
    attr_reader :version

    # Static public key (PEM or JWK JSON) used by {#verify_user_token} to
    # verify user tokens. When set, the SDK skips remote JWKS fetching.
    # Prefer {#user_token_jwks_url} (or the default) so key rotation is
    # handled automatically.
    # @return [String, nil]
    attr_reader :user_token_public_key

    # Override for the JWKS endpoint used by {#verify_user_token}. Defaults
    # to the canonical Whop endpoint when unset.
    # @return [String, nil]
    attr_reader :user_token_jwks_url

    # An App is software you build on Whop. It can be a hosted web app served at
    # `<route>.whop.app` or an API integration installed as an experience, and it
    # belongs to the account that owns its credentials, settings, builds, and runtime
    # logs.
    #
    # Use the Apps API to manage app configuration and, for hosted apps, read server
    # runtime logs for console output, uncaught exceptions, and failed requests. Logs
    # are retained for 7 days and can be filtered by build, level, time window, and
    # message text.
    # @return [WhopSDK::Resources::Apps]
    attr_reader :apps

    # @return [WhopSDK::Resources::Invoices]
    attr_reader :invoices

    # @return [WhopSDK::Resources::CourseLessonInteractions]
    attr_reader :course_lesson_interactions

    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to create products, list products visible to your
    # credentials, retrieve product details, update product metadata or merchandising
    # fields, and delete products that should no longer be sold.
    # @return [WhopSDK::Resources::Products]
    attr_reader :products

    # A Social Account represents an external profile connected to a Whop account or
    # user, such as a Facebook page or Instagram account. Connecting a social account
    # lets Whop run [ads](/api-reference/beta/ads/ad) under that profile's identity
    # and promote its existing posts.
    #
    # Use the Social Accounts API to list connected accounts, create a Whop-managed
    # Facebook page, start an OAuth connection, disconnect a social account, and list
    # a connected profile's posts.
    # @return [WhopSDK::Resources::SocialAccounts]
    attr_reader :social_accounts

    # An Audience represents a customer list uploaded to Whop for ad targeting.
    # Audiences belong to an account and sync to supported ad platforms as custom
    # audiences.
    #
    # Use the Audiences API to create audiences from CSV uploads, monitor processing
    # status, and list or delete audiences for an account. Created audiences are
    # usable for targeting after processing reaches `ready` or `partial`.
    # @return [WhopSDK::Resources::Audiences]
    attr_reader :audiences

    # A Media Asset is an AI-generated image or video created from a prompt and billed
    # from an account balance. When generation finishes, the asset includes a file
    # that can be attached anywhere Whop accepts files.
    #
    # Use the Media API to start a generation job and retrieve the asset while it
    # processes or after it is ready.
    # @return [WhopSDK::Resources::Media]
    attr_reader :media

    # A Person represents a visitor or customer of an account, assembled from
    # [pixel events](/api-reference/beta/events/event) and purchase activity — ad
    # clicks, storefront visits, and checkouts.
    #
    # Use the People API to list the people of an account and retrieve a single
    # person.
    # @return [WhopSDK::Resources::People]
    attr_reader :people

    # An Event records conversion or engagement activity for an account, such as page
    # views, purchases, or leads. Each event ties the action to the
    # [person](/api-reference/beta/people/person) who took it, so activity can be
    # attributed to the ads and links that drove it.
    #
    # Use the Events API to send new tracking events and list the events recorded for
    # a person.
    # @return [WhopSDK::Resources::Events]
    attr_reader :events

    # @return [WhopSDK::Resources::Companies]
    attr_reader :companies

    # @return [WhopSDK::Resources::Webhooks]
    attr_reader :webhooks

    # A Plan defines how customers buy a product. It controls pricing, billing
    # cadence, availability, tax behavior, checkout fields, and purchase visibility.
    #
    # Use the Plans API to create plans for products, list existing plans, retrieve or
    # update plan configuration, calculate tax for checkout, and delete plans that
    # should no longer be offered.
    # @return [WhopSDK::Resources::Plans]
    attr_reader :plans

    # @return [WhopSDK::Resources::Entries]
    attr_reader :entries

    # @return [WhopSDK::Resources::ForumPosts]
    attr_reader :forum_posts

    # Transfers move value between identities on Whop. They are used for
    # account-to-account money movement, user payouts inside Whop, crypto transfers,
    # and claim links depending on the destination type.
    #
    # Use the Transfers API to create a transfer, list previous transfers, and
    # retrieve a transfer by ID when reconciling money movement between accounts or
    # users.
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

    # A Checkout Configuration is a reusable checkout link owned by an account. In
    # `payment` mode it sells a specific plan; in `setup` mode it collects and saves
    # payment details without charging. Each configuration can also override which
    # payment methods are accepted and how 3D Secure is enforced for that checkout.
    #
    # Use the Checkout Configurations API to create checkout links for an existing or
    # inline plan, list configurations for an account, retrieve the configuration
    # behind a checkout URL, and delete links that should no longer be used.
    # @return [WhopSDK::Resources::CheckoutConfigurations]
    attr_reader :checkout_configurations

    # @return [WhopSDK::Resources::Messages]
    attr_reader :messages

    # @return [WhopSDK::Resources::ChatChannels]
    attr_reader :chat_channels

    # A User represents a person on Whop. Users have a public profile and can buy
    # products, join accounts, and access experiences.
    #
    # Use the Users API to search for users, retrieve or update profiles, and check
    # whether a user has access to an account, product, or experience.
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

    # @return [WhopSDK::Resources::Refunds]
    attr_reader :refunds

    # @return [WhopSDK::Resources::Withdrawals]
    attr_reader :withdrawals

    # @return [WhopSDK::Resources::AccountLinks]
    attr_reader :account_links

    # An Account represents a person or business on Whop that can have its own
    # profile, wallet, and account-scoped settings. Use accounts for customers,
    # creators, merchants, sellers, or connected businesses your integration supports.
    #
    # Use the Accounts API to create accounts, list accounts visible to your
    # credentials, retrieve or update an account, and retrieve the account associated
    # with the current API key.
    # @return [WhopSDK::Resources::Accounts]
    attr_reader :accounts

    # A Ledger Activity row is a single financial event on an account's ledger — a
    # payment, withdrawal, refund, transfer, on-chain deposit, swap, or card
    # transaction. Each row is derived from the underlying ledger lines and carries a
    # typed `resource` and `source` so you can present and link the event without
    # extra lookups.
    #
    # Use Ledger Activity to build a statement or transaction feed for an account or
    # user. Reconcile against your own records with `amount` (signed, in the
    # currency's smallest precision units) and `posted_at`, and use `available_at` to
    # know when inflows became withdrawable.
    # @return [WhopSDK::Resources::FinancialActivity]
    attr_reader :financial_activity

    # Stats represent aggregated activity for an account over time. They help you
    # understand revenue, transactions, disputes, members, referrals, and advertising
    # performance across reporting periods like days, weeks, or months.
    #
    # Use the Stats API to list available metrics and their filterable properties,
    # then retrieve time-series values for a date range.
    # @return [WhopSDK::Resources::Stats]
    attr_reader :stats

    # Payouts represent money sent from an account or user balance to an external
    # destination, such as a bank account, wallet, or other saved payout method.
    #
    # Use the Payouts API to create payouts from stablecoin accounts, list payout
    # history for accounts or users, monitor payout statuses, and show expected
    # arrival details for funds leaving Whop.
    # @return [WhopSDK::Resources::Payouts]
    attr_reader :payouts

    # The Partners API covers your Whop partner activity: the users you referred onto
    # Whop, the businesses you referred and the earnings generated from their
    # processing volume, and the partner leaderboard.
    #
    # Use it to enroll as a Whop partner, list the users you referred, list your
    # referred businesses and review their earnings, and see the partner leaderboard.
    # @return [WhopSDK::Resources::Partners]
    attr_reader :partners

    # Cards represent Whop-issued virtual payment cards that spend from an account or
    # user balance. Cards can be assigned to cardholders and configured with spending
    # limits for controlled spending.
    #
    # Use the Cards API to issue cards, list cards for an account or user, and
    # retrieve active card details such as the card number and CVC.
    # @return [WhopSDK::Resources::Cards]
    attr_reader :cards

    # Swaps convert value between supported tokens, chains, or wallet destinations for
    # an account. A swap quote describes the expected output, fees, and approval
    # requirements before you create the swap.
    #
    # Use the Swaps API to quote a conversion, create the swap, list recent swaps, and
    # retrieve status until the transaction completes.
    # @return [WhopSDK::Resources::Swaps]
    attr_reader :swaps

    # Deposits describe ways to add funds to an account balance, including hosted
    # deposit pages, bank deposit instructions, and supported crypto wallet addresses.
    #
    # Use the Deposits API to create deposit instructions for an account and retrieve
    # existing bank deposit activity.
    # @return [WhopSDK::Resources::Deposits]
    attr_reader :deposits

    # @return [WhopSDK::Resources::SetupIntents]
    attr_reader :setup_intents

    # @return [WhopSDK::Resources::PaymentMethods]
    attr_reader :payment_methods

    # @return [WhopSDK::Resources::FeeMarkups]
    attr_reader :fee_markups

    # A Verification represents an identity review for a person or business. Accounts
    # and users complete verification when Whop needs to confirm who they are before
    # enabling payouts or compliance-sensitive workflows.
    #
    # Use the Verifications API to start or resume a hosted verification session,
    # check review status, and submit requested details or documents. If
    # `requested_information` contains items, submit answers with
    # [Update Verification](/api-reference/beta/verifications/update-verification).
    # @return [WhopSDK::Resources::Verifications]
    attr_reader :verifications

    # @return [WhopSDK::Resources::Leads]
    attr_reader :leads

    # @return [WhopSDK::Resources::Topups]
    attr_reader :topups

    # @return [WhopSDK::Resources::Files]
    attr_reader :files

    # @return [WhopSDK::Resources::CompanyTokenTransactions]
    attr_reader :company_token_transactions

    # @return [WhopSDK::Resources::DmMembers]
    attr_reader :dm_members

    # @return [WhopSDK::Resources::AIChats]
    attr_reader :ai_chats

    # @return [WhopSDK::Resources::DmChannels]
    attr_reader :dm_channels

    # @return [WhopSDK::Resources::DisputeAlerts]
    attr_reader :dispute_alerts

    # @return [WhopSDK::Resources::ResolutionCenterCases]
    attr_reader :resolution_center_cases

    # @return [WhopSDK::Resources::PayoutAccounts]
    attr_reader :payout_accounts

    # @return [WhopSDK::Resources::Affiliates]
    attr_reader :affiliates

    # @return [WhopSDK::Resources::Bounties]
    attr_reader :bounties

    # @return [WhopSDK::Resources::Workforce]
    attr_reader :workforce

    # An Ad Campaign is the top-level container for paid ads on an ad network. It sets
    # the platform, objective, and budget strategy shared by its
    # [ad groups](/api-reference/beta/ad-groups/ad-group) and ads.
    #
    # Use the Ad Campaigns API to create campaigns, list campaigns for an account,
    # retrieve or update campaign settings, and pause or resume campaign delivery.
    # @return [WhopSDK::Resources::AdCampaigns]
    attr_reader :ad_campaigns

    # An Ad Group sits inside an
    # [ad campaign](/api-reference/beta/ad-campaigns/ad-campaign) and controls
    # delivery for [ads](/api-reference/beta/ads/ad). It sets the audience,
    # placements, schedule, budget, and optimization goal for its ads.
    #
    # Use the Ad Groups API to create ad groups in campaigns, list or retrieve
    # targeting and delivery settings, update budgets or targeting, delete groups that
    # should stop running, and pause or resume delivery.
    # @return [WhopSDK::Resources::AdGroups]
    attr_reader :ad_groups

    # An Ad is the individual creative unit delivered by an
    # [ad group](/api-reference/beta/ad-groups/ad-group). It holds the copy, creative
    # assets, and destination URL for one ad.
    #
    # Use the Ads API to list ads for an account, create ads inside ad groups,
    # retrieve or update creative details, delete ads that should stop running, and
    # pause or resume delivery.
    # @return [WhopSDK::Resources::Ads]
    attr_reader :ads

    # @return [WhopSDK::Resources::AdReports]
    attr_reader :ad_reports

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] An account API key, account scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word `Bearer`, which will look like
    # `Bearer ***************************` Defaults to `ENV["WHOP_API_KEY"]`
    #
    # @param webhook_key [String, nil] Defaults to `ENV["WHOP_WEBHOOK_SECRET"]`
    #
    # @param app_id [String, nil] When using the SDK in app mode pass this parameter to allow verifying user
    # tokens Defaults to `ENV["WHOP_APP_ID"]`
    #
    # @param version [String, nil] Pins the API version (an ISO date). Defaults to the latest version the SDK was
    # generated against. Defaults to `ENV["WHOP_API_VERSION"]`
    #
    # @param user_token_public_key [String, nil] Static public key (PEM or JWK JSON) used to verify
    # user tokens. When set, {#verify_user_token} skips remote JWKS fetching.
    # Defaults to `ENV["WHOP_USER_TOKEN_PUBLIC_KEY"]`
    #
    # @param user_token_jwks_url [String, nil] Override the JWKS URL used by {#verify_user_token}.
    # Defaults to `ENV["WHOP_USER_TOKEN_JWKS_URL"]`, then to the canonical Whop endpoint.
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
      webhook_key: ENV["WHOP_WEBHOOK_SECRET"],
      app_id: ENV["WHOP_APP_ID"],
      version: ENV.fetch("WHOP_API_VERSION", "2026-07-08-1"),
      user_token_public_key: ENV["WHOP_USER_TOKEN_PUBLIC_KEY"],
      user_token_jwks_url: ENV["WHOP_USER_TOKEN_JWKS_URL"],
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
        "x-whop-app-id" => (@app_id = app_id&.to_s),
        "api-version-date" => (@version = version.to_s)
      }
      custom_headers_env = ENV["WHOP_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key.to_s
      @webhook_key = webhook_key&.to_s
      @user_token_public_key = user_token_public_key&.to_s
      @user_token_jwks_url = user_token_jwks_url&.to_s

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
      @social_accounts = WhopSDK::Resources::SocialAccounts.new(client: self)
      @audiences = WhopSDK::Resources::Audiences.new(client: self)
      @media = WhopSDK::Resources::Media.new(client: self)
      @people = WhopSDK::Resources::People.new(client: self)
      @events = WhopSDK::Resources::Events.new(client: self)
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
      @accounts = WhopSDK::Resources::Accounts.new(client: self)
      @financial_activity = WhopSDK::Resources::FinancialActivity.new(client: self)
      @stats = WhopSDK::Resources::Stats.new(client: self)
      @payouts = WhopSDK::Resources::Payouts.new(client: self)
      @partners = WhopSDK::Resources::Partners.new(client: self)
      @cards = WhopSDK::Resources::Cards.new(client: self)
      @swaps = WhopSDK::Resources::Swaps.new(client: self)
      @deposits = WhopSDK::Resources::Deposits.new(client: self)
      @setup_intents = WhopSDK::Resources::SetupIntents.new(client: self)
      @payment_methods = WhopSDK::Resources::PaymentMethods.new(client: self)
      @fee_markups = WhopSDK::Resources::FeeMarkups.new(client: self)
      @verifications = WhopSDK::Resources::Verifications.new(client: self)
      @leads = WhopSDK::Resources::Leads.new(client: self)
      @topups = WhopSDK::Resources::Topups.new(client: self)
      @files = WhopSDK::Resources::Files.new(client: self)
      @company_token_transactions = WhopSDK::Resources::CompanyTokenTransactions.new(client: self)
      @dm_members = WhopSDK::Resources::DmMembers.new(client: self)
      @ai_chats = WhopSDK::Resources::AIChats.new(client: self)
      @dm_channels = WhopSDK::Resources::DmChannels.new(client: self)
      @dispute_alerts = WhopSDK::Resources::DisputeAlerts.new(client: self)
      @resolution_center_cases = WhopSDK::Resources::ResolutionCenterCases.new(client: self)
      @payout_accounts = WhopSDK::Resources::PayoutAccounts.new(client: self)
      @affiliates = WhopSDK::Resources::Affiliates.new(client: self)
      @bounties = WhopSDK::Resources::Bounties.new(client: self)
      @workforce = WhopSDK::Resources::Workforce.new(client: self)
      @ad_campaigns = WhopSDK::Resources::AdCampaigns.new(client: self)
      @ad_groups = WhopSDK::Resources::AdGroups.new(client: self)
      @ads = WhopSDK::Resources::Ads.new(client: self)
      @ad_reports = WhopSDK::Resources::AdReports.new(client: self)
    end

    # Verifies a Whop user token.
    #
    # @param token_or_headers [String, Hash, nil] The token string or headers hash
    # @param app_id [String, nil] The app id to verify against
    # @param public_key [String, nil] Static public key (PEM or JWK JSON). When set, the
    #   SDK skips remote JWKS fetching. Defaults to the client's `user_token_public_key`.
    # @param jwks_url [String, nil] Override the JWKS URL. Defaults to the client's
    #   `user_token_jwks_url`, then to the canonical Whop endpoint.
    # @param header_name [String, nil] The header name to read the token from
    # @return [Helpers::VerifyUserToken::UserTokenPayload]
    # @raise [StandardError] If verification fails
    def verify_user_token!(token_or_headers, **opts)
      opts[:app_id] ||= app_id
      opts[:public_key] = user_token_public_key if opts[:public_key].nil? && user_token_public_key && !user_token_public_key.empty?
      opts[:jwks_url] = user_token_jwks_url if opts[:jwks_url].nil? && user_token_jwks_url && !user_token_jwks_url.empty?
      unless opts[:app_id]
        raise StandardError, "You must set app_id in the Whop client if you want to verify user tokens"
      end
      Helpers::VerifyUserToken.verify_user_token!(token_or_headers, **opts)
    end

    # Verifies a Whop user token. Same signature as {#verify_user_token!}
    # but returns `nil` on any validation failure instead of raising.
    #
    # @return [Helpers::VerifyUserToken::UserTokenPayload, nil]
    def verify_user_token(token_or_headers, **opts)
      verify_user_token!(token_or_headers, **opts)
    rescue StandardError
      nil
    end
  end
end
