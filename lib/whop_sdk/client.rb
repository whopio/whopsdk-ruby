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

    # @return [String, nil]
    attr_reader :webhook_key

    # When using the SDK in app mode pass this parameter to allow verifying user
    # tokens
    # @return [String, nil]
    attr_reader :app_id

    # An App is software you build on Whop. It can be a hosted web app served at
    # `<route>.whop.site` or an API integration installed as an experience, and it
    # belongs to the account that owns its credentials, settings, builds, and runtime
    # logs.
    #
    # Use the Apps API to manage app configuration, deploy an app's working copy and
    # follow the run on the app's `deployment` field, and, for hosted apps, read
    # server runtime logs for console output, uncaught exceptions, and failed
    # requests. Logs are retained for 7 days and can be filtered by build, level, time
    # window, and message text.
    #
    # Apps are also reusable blueprints. List official blueprints with
    # `app_type=website&verified=true&order=template_usage`, or community blueprints
    # with `app_type=website&verified=false&recommended=true&order=template_usage`.
    # Pass the returned App `id` as `blueprint_id` when creating an Account.
    # @return [WhopSDK::Resources::Apps]
    attr_reader :apps

    # @return [WhopSDK::Resources::Invoices]
    attr_reader :invoices

    # @return [WhopSDK::Resources::CourseLessonInteractions]
    attr_reader :course_lesson_interactions

    # A Product is a digital good or service sold on Whop. Products may contain plans
    # for pricing and/or experiences for content delivery.
    #
    # Use the Products API to search the public marketplace, list an account's
    # products, retrieve a product, and create, update, or delete products.
    # @return [WhopSDK::Resources::Products]
    attr_reader :products

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

    # A Membership is a customer's purchase of a plan: the subscription or one-time
    # grant that gives them access to a product. It tracks billing state (`active`,
    # `trialing`, `past_due`, and so on), the current period, pending cancellations,
    # custom metadata, and the software license key when the product includes
    # licensing.
    #
    # Use the Memberships API to list an account's memberships or the caller's own,
    # retrieve one by ID or license key, invite a recipient to join through a free
    # plan, and manage the lifecycle: cancel immediately or at period end, reverse a
    # scheduled period-end cancellation, pause and resume payment collection, extend
    # with free days, generate a transfer link, and update metadata.
    # @return [WhopSDK::Resources::Memberships]
    attr_reader :memberships

    # @return [WhopSDK::Resources::AuthorizedUsers]
    attr_reader :authorized_users

    # An App Build is a versioned artifact uploaded for an app — a hosted web archive,
    # or an iOS/Android bundle. Builds start as drafts, go through review, and one
    # approved build per platform is served to users as the production build.
    #
    # Use the App Builds API to upload a build for an app, list an app's builds with
    # platform and status filters, retrieve a build, and promote a draft or approved
    # build to production.
    # @return [WhopSDK::Resources::AppBuilds]
    attr_reader :app_builds

    # A Shipment attaches a carrier tracking number to a payment and follows the
    # package from label creation to delivery, exposing the current delivery status
    # and a customer-facing tracking URL.
    #
    # Use the Shipments API to list an account's shipments, retrieve one by its id or
    # the payment it fulfills, attach a tracking number to a payment, and update the
    # tracking number on an existing shipment.
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

    # A Payment is one charge against a buyer. Create an on-session payment with a
    # `confirmation_token` for the method the buyer selected, or an off-session
    # payment with an existing member's stored payment method.
    #
    # Collection runs in the background, so the create response is not the outcome.
    # Poll [Retrieve status](/api-reference/beta/payments/retrieve-status) for how far
    # the payment has got and, while it is `requires_action`, what the buyer must do
    # next — follow a redirect, complete 3D Secure, display transfer instructions, or
    # link a bank account. Use the return_url operation to change where they land
    # afterwards, up until they come back.
    # @return [WhopSDK::Resources::Payments]
    attr_reader :payments

    # @return [WhopSDK::Resources::SupportChannels]
    attr_reader :support_channels

    # @return [WhopSDK::Resources::Experiences]
    attr_reader :experiences

    # @return [WhopSDK::Resources::Reactions]
    attr_reader :reactions

    # A Member is one buyer's relationship with an account — one record per customer
    # regardless of how many memberships they hold. It carries relationship-level
    # state: whether they have joined or left, their access level (`customer`,
    # `admin`, or `no_access`), when they joined, and when they last opened the
    # account's content.
    #
    # Use the Members API to list an account's members with filtering by access level,
    # status, join date, and name or username search, and to retrieve a single member.
    # Member rows are created and maintained by the membership lifecycle; to grant or
    # revoke access, work with memberships instead.
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

    # A Notification is a message delivered to a user — a new post, a payment, a
    # mention. Every notification comes from an experience the user belongs to or a
    # team they are on, and users control what they receive with notification
    # preferences.
    #
    # Every notification belongs to a topic: the category it falls under, such as new
    # sales or account activity. Topics carry a default, so a user only needs a
    # preference row where they diverge from it. `GET /notifications/topics` lists the
    # platform's visible topics, and a topic's `id` is what the notification
    # preference endpoints take as `topic_id` — the catalog is the only place those
    # ids come from, so read it rather than hardcoding. Each topic also carries an
    # `identifier` such as `new-follower`, which is stable across environments and is
    # the value to match on in code.
    #
    # Use the Notifications API to list the authenticated user's feed, read
    # per-experience unread badges, mark an experience (or everything) as read, send
    # notifications from your app to an experience's users or an account's team, and
    # list the topic catalog.
    # @return [WhopSDK::Resources::Notifications]
    attr_reader :notifications

    # A Dispute is a chargeback a customer files against a payment through their bank,
    # or an inquiry that may become one. It carries the disputed payment, a deadline
    # to respond, your evidence, and the outcome once the processor rules.
    #
    # Use the Disputes API to list disputes, edit the evidence packet while a dispute
    # is still contestable, and submit it for review.
    # @return [WhopSDK::Resources::Disputes]
    attr_reader :disputes

    # A Refund is one reversal of a payment, full or partial. Refunds are issued with
    # `POST /payments/{id}/refund`; this resource is the record of each one — how much
    # moved, through which provider, and where it stands (`pending`, `succeeded`,
    # `failed`).
    #
    # List a payment's refunds with `?payment_id=`, or every refund an account issued
    # with `?account_id=`. `amount` is stated in the payment's settlement currency so
    # it nets against the payment's `total`; `original_amount` is what the processor
    # moved.
    # @return [WhopSDK::Resources::Refunds]
    attr_reader :refunds

    # @return [WhopSDK::Resources::Withdrawals]
    attr_reader :withdrawals

    # @return [WhopSDK::Resources::AccountLinks]
    attr_reader :account_links

    # @return [WhopSDK::Resources::SetupIntents]
    attr_reader :setup_intents

    # @return [WhopSDK::Resources::PaymentMethods]
    attr_reader :payment_methods

    # @return [WhopSDK::Resources::FeeMarkups]
    attr_reader :fee_markups

    # @return [WhopSDK::Resources::PayoutMethods]
    attr_reader :payout_methods

    # A Verification represents a legal identity for a person or business. Accounts
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

    # A File is an uploaded document or media object, identified by a `file_` ID.
    # Creating a file returns a presigned destination; upload the bytes there and the
    # file becomes `ready`.
    #
    # Use the Files API to create a file, upload its content directly to storage (in
    # one PUT, or in parts for large files), and retrieve it while polling for
    # readiness. A ready file's ID can be attached wherever Whop accepts files.
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

    # A Dispute alert is an early warning from a card issuer that a settled payment is
    # being questioned, ahead of any chargeback. `type` separates fraud reports
    # (`early_fraud_warning`), pre-dispute notices (`dispute_alert`), and Visa RDR
    # cases the network already closed by refunding (`rapid_dispute_resolution`).
    #
    # Use the Dispute alerts API to list alerts for an account, filter them by type or
    # payment, and read `actionable` to see whether refunding can still avoid the
    # chargeback.
    # @return [WhopSDK::Resources::DisputeAlerts]
    attr_reader :dispute_alerts

    # A Resolution Center Case is opened by a buyer when something is wrong with a
    # purchase — an unwanted renewal, an item that never arrived, or a charge they
    # don't recognize. It is the step before a chargeback: the two sides work it out
    # directly, and Whop decides the case if they can't. Each case carries a reason, a
    # status naming which side it is waiting on, a timeline of events, and the actions
    # available to whoever is reading it.
    #
    # Use the Resolution Center Cases API from either side: as the buyer, open a case,
    # reply, appeal a decision, or withdraw it; as the merchant, accept it (refunding
    # the payment), deny it, or ask the buyer for more information. Both sides read
    # the same case, page its timeline, and summarize the cases they can see.
    # @return [WhopSDK::Resources::ResolutionCenterCases]
    attr_reader :resolution_center_cases

    # @return [WhopSDK::Resources::PayoutAccounts]
    attr_reader :payout_accounts

    # @return [WhopSDK::Resources::Affiliates]
    attr_reader :affiliates

    # A Bounty is a paid task posted by an account or user. The reward is held in
    # escrow when the bounty publishes, workers submit proof of completed work, and
    # each accepted submission is paid out until every winner slot fills.
    #
    # Use the Bounties API to create and publish a bounty, list an account's bounties
    # for reporting or dashboards, list the bounties a user can work or has
    # participated in, and retrieve a single bounty by ID.
    # @return [WhopSDK::Resources::Bounties]
    attr_reader :bounties

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
    # should stop running, and pause or resume delivery. It can also search the ad
    # platform's targeting taxonomy for options to target and estimate how many people
    # a draft targeting spec can reach.
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

    # @return [WhopSDK::Resources::Conversions]
    attr_reader :conversions

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
    # @param api_key [String, nil] A company API key, company scoped JWT, app API key, or user OAuth token. You
    # must prepend your key/token with the word 'Bearer', which will look like
    # `Bearer ***************************` Defaults to `ENV["WHOP_API_KEY"]`
    #
    # @param webhook_key [String, nil] Defaults to `ENV["WHOP_WEBHOOK_SECRET"]`
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
      webhook_key: ENV["WHOP_WEBHOOK_SECRET"],
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
      @resolution_center_cases = WhopSDK::Resources::ResolutionCenterCases.new(client: self)
      @payout_accounts = WhopSDK::Resources::PayoutAccounts.new(client: self)
      @affiliates = WhopSDK::Resources::Affiliates.new(client: self)
      @bounties = WhopSDK::Resources::Bounties.new(client: self)
      @ad_campaigns = WhopSDK::Resources::AdCampaigns.new(client: self)
      @ad_groups = WhopSDK::Resources::AdGroups.new(client: self)
      @ads = WhopSDK::Resources::Ads.new(client: self)
      @conversions = WhopSDK::Resources::Conversions.new(client: self)
      @ad_reports = WhopSDK::Resources::AdReports.new(client: self)
    end
  end
end
