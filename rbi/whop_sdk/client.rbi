# typed: strong

module WhopSDK
  class Client < WhopSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # An account API key, account scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word `Bearer`, which will look like
    # `Bearer ***************************`
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(T.nilable(String)) }
    attr_reader :webhook_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    sig { returns(T.nilable(String)) }
    attr_reader :app_id

    # Pins the API version (an ISO date). Defaults to the latest version the SDK was
    # generated against.
    sig { returns(T.nilable(String)) }
    attr_reader :version

    # An App is software you build on Whop. It can be a hosted web app served at
    # `<route>.whop.app` or an API integration installed as an experience, and it
    # belongs to the account that owns its credentials, settings, builds, and runtime
    # logs.
    #
    # Use the Apps API to manage app configuration and, for hosted apps, read server
    # runtime logs for console output, uncaught exceptions, and failed requests. Logs
    # are retained for 7 days and can be filtered by build, level, time window, and
    # message text.
    sig { returns(WhopSDK::Resources::Apps) }
    attr_reader :apps

    sig { returns(WhopSDK::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(WhopSDK::Resources::CourseLessonInteractions) }
    attr_reader :course_lesson_interactions

    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to create products, list products visible to your
    # credentials, retrieve product details, update product metadata or merchandising
    # fields, and delete products that should no longer be sold.
    sig { returns(WhopSDK::Resources::Products) }
    attr_reader :products

    # A Social Account represents an external profile connected to a Whop account or
    # user, such as a Facebook page or Instagram account. Connecting a social account
    # lets Whop run [ads](/api-reference/beta/ads/ad) under that profile's identity
    # and promote its existing posts.
    #
    # Use the Social Accounts API to list connected accounts, create a Whop-managed
    # Facebook page, start an OAuth connection, disconnect a social account, and list
    # a connected profile's posts.
    sig { returns(WhopSDK::Resources::SocialAccounts) }
    attr_reader :social_accounts

    # An Audience represents a customer list uploaded to Whop for ad targeting.
    # Audiences belong to an account and sync to supported ad platforms as custom
    # audiences.
    #
    # Use the Audiences API to create audiences from CSV uploads, monitor processing
    # status, and list or delete audiences for an account. Created audiences are
    # usable for targeting after processing reaches `ready` or `partial`.
    sig { returns(WhopSDK::Resources::Audiences) }
    attr_reader :audiences

    # A Media Asset is an AI-generated image or video created from a prompt and billed
    # from an account balance. When generation finishes, the asset includes a file
    # that can be attached anywhere Whop accepts files.
    #
    # Use the Media API to start a generation job and retrieve the asset while it
    # processes or after it is ready.
    sig { returns(WhopSDK::Resources::Media) }
    attr_reader :media

    # A Person represents a visitor or customer of an account, assembled from
    # [pixel events](/api-reference/beta/events/event) and purchase activity — ad
    # clicks, storefront visits, and checkouts.
    #
    # Use the People API to list the people of an account and retrieve a single
    # person.
    sig { returns(WhopSDK::Resources::People) }
    attr_reader :people

    # An Event records conversion or engagement activity for an account, such as page
    # views, purchases, or leads. Each event ties the action to the
    # [person](/api-reference/beta/people/person) who took it, so activity can be
    # attributed to the ads and links that drove it.
    #
    # Use the Events API to send new tracking events and list the events recorded for
    # a person.
    sig { returns(WhopSDK::Resources::Events) }
    attr_reader :events

    sig { returns(WhopSDK::Resources::Companies) }
    attr_reader :companies

    sig { returns(WhopSDK::Resources::Webhooks) }
    attr_reader :webhooks

    # A Plan defines how customers buy a product. It controls pricing, billing
    # cadence, availability, tax behavior, checkout fields, and purchase visibility.
    #
    # Use the Plans API to create plans for products, list existing plans, retrieve or
    # update plan configuration, calculate tax for checkout, and delete plans that
    # should no longer be offered.
    sig { returns(WhopSDK::Resources::Plans) }
    attr_reader :plans

    sig { returns(WhopSDK::Resources::Entries) }
    attr_reader :entries

    sig { returns(WhopSDK::Resources::ForumPosts) }
    attr_reader :forum_posts

    # Transfers move value between identities on Whop. They are used for
    # account-to-account money movement, user payouts inside Whop, crypto transfers,
    # and claim links depending on the destination type.
    #
    # Use the Transfers API to create a transfer, list previous transfers, and
    # retrieve a transfer by ID when reconciling money movement between accounts or
    # users.
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

    # A Checkout Configuration is a reusable checkout link owned by an account. In
    # `payment` mode it sells a specific plan; in `setup` mode it collects and saves
    # payment details without charging. Each configuration can also override which
    # payment methods are accepted and how 3D Secure is enforced for that checkout.
    #
    # Use the Checkout Configurations API to create checkout links for an existing or
    # inline plan, list configurations for an account, retrieve the configuration
    # behind a checkout URL, and delete links that should no longer be used.
    sig { returns(WhopSDK::Resources::CheckoutConfigurations) }
    attr_reader :checkout_configurations

    sig { returns(WhopSDK::Resources::Messages) }
    attr_reader :messages

    sig { returns(WhopSDK::Resources::ChatChannels) }
    attr_reader :chat_channels

    # A User represents a person on Whop. Users have a public profile and can buy
    # products, join accounts, and access experiences.
    #
    # Use the Users API to search for users, retrieve or update profiles, and check
    # whether a user has access to an account, product, or experience.
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

    # An Account represents a person or business on Whop that can have its own
    # profile, wallet, and account-scoped settings. Use accounts for customers,
    # creators, merchants, sellers, or connected businesses your integration supports.
    #
    # Use the Accounts API to create accounts, list accounts visible to your
    # credentials, retrieve or update an account, and retrieve the account associated
    # with the current API key.
    sig { returns(WhopSDK::Resources::Accounts) }
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
    sig { returns(WhopSDK::Resources::FinancialActivity) }
    attr_reader :financial_activity

    # Stats represent aggregated activity for an account over time. They help you
    # understand revenue, transactions, disputes, members, referrals, and advertising
    # performance across reporting periods like days, weeks, or months.
    #
    # Use the Stats API to list available metrics and their filterable properties,
    # then retrieve time-series values for a date range.
    sig { returns(WhopSDK::Resources::Stats) }
    attr_reader :stats

    # Payouts represent money sent from an account or user balance to an external
    # destination, such as a bank account, wallet, or other saved payout method.
    #
    # Use the Payouts API to create payouts from stablecoin accounts, list payout
    # history for accounts or users, monitor payout statuses, and show expected
    # arrival details for funds leaving Whop.
    sig { returns(WhopSDK::Resources::Payouts) }
    attr_reader :payouts

    # The Partners API covers your Whop partner activity: the users you referred onto
    # Whop, the businesses you referred and the earnings generated from their
    # processing volume, and the partner leaderboard.
    #
    # Use it to enroll as a Whop partner, list the users you referred, list your
    # referred businesses and review their earnings, and see the partner leaderboard.
    sig { returns(WhopSDK::Resources::Partners) }
    attr_reader :partners

    # Cards represent Whop-issued virtual payment cards that spend from an account or
    # user balance. Cards can be assigned to cardholders and configured with spending
    # limits for controlled spending.
    #
    # Use the Cards API to issue cards, list cards for an account or user, and
    # retrieve active card details such as the card number and CVC.
    sig { returns(WhopSDK::Resources::Cards) }
    attr_reader :cards

    # Swaps convert value between supported tokens, chains, or wallet destinations for
    # an account. A swap quote describes the expected output, fees, and approval
    # requirements before you create the swap.
    #
    # Use the Swaps API to quote a conversion, create the swap, list recent swaps, and
    # retrieve status until the transaction completes.
    sig { returns(WhopSDK::Resources::Swaps) }
    attr_reader :swaps

    # Deposits describe ways to add funds to an account balance, including hosted
    # deposit pages, bank deposit instructions, and supported crypto wallet addresses.
    #
    # Use the Deposits API to create deposit instructions for an account and retrieve
    # existing bank deposit activity.
    sig { returns(WhopSDK::Resources::Deposits) }
    attr_reader :deposits

    sig { returns(WhopSDK::Resources::SetupIntents) }
    attr_reader :setup_intents

    sig { returns(WhopSDK::Resources::PaymentMethods) }
    attr_reader :payment_methods

    sig { returns(WhopSDK::Resources::FeeMarkups) }
    attr_reader :fee_markups

    # A Verification represents an identity review for a person or business. Accounts
    # and users complete verification when Whop needs to confirm who they are before
    # enabling payouts or compliance-sensitive workflows.
    #
    # Use the Verifications API to start or resume a hosted verification session,
    # check review status, and submit requested details or documents. If
    # `requested_information` contains items, submit answers with
    # [Update Verification](/api-reference/beta/verifications/update-verification).
    sig { returns(WhopSDK::Resources::Verifications) }
    attr_reader :verifications

    sig { returns(WhopSDK::Resources::Leads) }
    attr_reader :leads

    sig { returns(WhopSDK::Resources::Topups) }
    attr_reader :topups

    sig { returns(WhopSDK::Resources::Files) }
    attr_reader :files

    sig { returns(WhopSDK::Resources::CompanyTokenTransactions) }
    attr_reader :company_token_transactions

    sig { returns(WhopSDK::Resources::DmMembers) }
    attr_reader :dm_members

    sig { returns(WhopSDK::Resources::AIChats) }
    attr_reader :ai_chats

    sig { returns(WhopSDK::Resources::DmChannels) }
    attr_reader :dm_channels

    sig { returns(WhopSDK::Resources::DisputeAlerts) }
    attr_reader :dispute_alerts

    sig { returns(WhopSDK::Resources::ResolutionCenterCases) }
    attr_reader :resolution_center_cases

    sig { returns(WhopSDK::Resources::PayoutAccounts) }
    attr_reader :payout_accounts

    sig { returns(WhopSDK::Resources::Affiliates) }
    attr_reader :affiliates

    sig { returns(WhopSDK::Resources::Bounties) }
    attr_reader :bounties

    sig { returns(WhopSDK::Resources::Workforce) }
    attr_reader :workforce

    # An Ad Campaign is the top-level container for paid ads on an ad network. It sets
    # the platform, objective, and budget strategy shared by its
    # [ad groups](/api-reference/beta/ad-groups/ad-group) and ads.
    #
    # Use the Ad Campaigns API to create campaigns, list campaigns for an account,
    # retrieve or update campaign settings, and pause or resume campaign delivery.
    sig { returns(WhopSDK::Resources::AdCampaigns) }
    attr_reader :ad_campaigns

    # An Ad Group sits inside an
    # [ad campaign](/api-reference/beta/ad-campaigns/ad-campaign) and controls
    # delivery for [ads](/api-reference/beta/ads/ad). It sets the audience,
    # placements, schedule, budget, and optimization goal for its ads.
    #
    # Use the Ad Groups API to create ad groups in campaigns, list or retrieve
    # targeting and delivery settings, update budgets or targeting, delete groups that
    # should stop running, and pause or resume delivery.
    sig { returns(WhopSDK::Resources::AdGroups) }
    attr_reader :ad_groups

    # An Ad is the individual creative unit delivered by an
    # [ad group](/api-reference/beta/ad-groups/ad-group). It holds the copy, creative
    # assets, and destination URL for one ad.
    #
    # Use the Ads API to list ads for an account, create ads inside ad groups,
    # retrieve or update creative details, delete ads that should stop running, and
    # pause or resume delivery.
    sig { returns(WhopSDK::Resources::Ads) }
    attr_reader :ads

    sig { returns(WhopSDK::Resources::AdReports) }
    attr_reader :ad_reports

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        webhook_key: T.nilable(String),
        app_id: T.nilable(String),
        version: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # An account API key, account scoped JWT, app API key, or user OAuth token. You
      # must prepend your key/token with the word `Bearer`, which will look like
      # `Bearer ***************************` Defaults to `ENV["WHOP_API_KEY"]`
      api_key: ENV["WHOP_API_KEY"],
      # Defaults to `ENV["WHOP_WEBHOOK_SECRET"]`
      webhook_key: ENV["WHOP_WEBHOOK_SECRET"],
      # When using the SDK in app mode pass this parameter to allow verifying user
      # tokens Defaults to `ENV["WHOP_APP_ID"]`
      app_id: ENV["WHOP_APP_ID"],
      # Pins the API version (an ISO date). Defaults to the latest version the SDK was
      # generated against. Defaults to `ENV["WHOP_API_VERSION"]`
      version: ENV.fetch("WHOP_API_VERSION", "2026-07-08-1"),
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
