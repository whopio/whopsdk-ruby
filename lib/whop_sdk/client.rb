# frozen_string_literal: true

module Whop_sdk
  class Client
    # @param token [String]
    # @param base_url [String, nil]
    # @param api_version_date [String, nil]
    # @param idempotency_key [String, nil]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(token:, base_url: nil, api_version_date: "2026-08-21-1", idempotency_key: nil, max_retries: 2)
      headers = {
        "X-Fern-Language" => "Ruby",
        Authorization: "Bearer #{token}",
        "Api-Version-Date" => api_version_date.to_s
      }
      headers["Idempotency-Key"] = idempotency_key.to_s unless idempotency_key.nil?
      @raw_client = Whop_sdk::Internal::Http::RawClient.new(
        base_url: base_url || Whop_sdk::Environment::DEFAULT,
        headers: headers,
        overridable_headers: %w[Api-Version-Date Idempotency-Key],
        max_retries: max_retries
      )
    end

    # @return [Whop_sdk::AccessTokens::Client]
    def access_tokens
      @access_tokens ||= Whop_sdk::AccessTokens::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AccountLinks::Client]
    def account_links
      @account_links ||= Whop_sdk::AccountLinks::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Accounts::Client]
    def accounts
      @accounts ||= Whop_sdk::Accounts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AdCampaigns::Client]
    def ad_campaigns
      @ad_campaigns ||= Whop_sdk::AdCampaigns::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AdGroups::Client]
    def ad_groups
      @ad_groups ||= Whop_sdk::AdGroups::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AdReports::Client]
    def ad_reports
      @ad_reports ||= Whop_sdk::AdReports::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Ads::Client]
    def ads
      @ads ||= Whop_sdk::Ads::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Affiliates::Client]
    def affiliates
      @affiliates ||= Whop_sdk::Affiliates::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AiChats::Client]
    def ai_chats
      @ai_chats ||= Whop_sdk::AiChats::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::APIKeys::Client]
    def api_keys
      @api_keys ||= Whop_sdk::APIKeys::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AppBuilds::Client]
    def app_builds
      @app_builds ||= Whop_sdk::AppBuilds::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Apps::Client]
    def apps
      @apps ||= Whop_sdk::Apps::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Audiences::Client]
    def audiences
      @audiences ||= Whop_sdk::Audiences::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::AuthorizedUsers::Client]
    def authorized_users
      @authorized_users ||= Whop_sdk::AuthorizedUsers::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Bounties::Client]
    def bounties
      @bounties ||= Whop_sdk::Bounties::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::BountySubmissions::Client]
    def bounty_submissions
      @bounty_submissions ||= Whop_sdk::BountySubmissions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CardTransactions::Client]
    def card_transactions
      @card_transactions ||= Whop_sdk::CardTransactions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Cards::Client]
    def cards
      @cards ||= Whop_sdk::Cards::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::ChatChannels::Client]
    def chat_channels
      @chat_channels ||= Whop_sdk::ChatChannels::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CheckoutConfigurations::Client]
    def checkout_configurations
      @checkout_configurations ||= Whop_sdk::CheckoutConfigurations::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CheckoutSessions::Client]
    def checkout_sessions
      @checkout_sessions ||= Whop_sdk::CheckoutSessions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Companies::Client]
    def companies
      @companies ||= Whop_sdk::Companies::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CompanyTokenTransactions::Client]
    def company_token_transactions
      @company_token_transactions ||= Whop_sdk::CompanyTokenTransactions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CourseChapters::Client]
    def course_chapters
      @course_chapters ||= Whop_sdk::CourseChapters::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CourseLessonInteractions::Client]
    def course_lesson_interactions
      @course_lesson_interactions ||= Whop_sdk::CourseLessonInteractions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CourseLessons::Client]
    def course_lessons
      @course_lessons ||= Whop_sdk::CourseLessons::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::CourseStudents::Client]
    def course_students
      @course_students ||= Whop_sdk::CourseStudents::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Courses::Client]
    def courses
      @courses ||= Whop_sdk::Courses::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Deposits::Client]
    def deposits
      @deposits ||= Whop_sdk::Deposits::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::DisputeAlerts::Client]
    def dispute_alerts
      @dispute_alerts ||= Whop_sdk::DisputeAlerts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Disputes::Client]
    def disputes
      @disputes ||= Whop_sdk::Disputes::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::DmChannels::Client]
    def dm_channels
      @dm_channels ||= Whop_sdk::DmChannels::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::DmMembers::Client]
    def dm_members
      @dm_members ||= Whop_sdk::DmMembers::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Entries::Client]
    def entries
      @entries ||= Whop_sdk::Entries::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Events::Client]
    def events
      @events ||= Whop_sdk::Events::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Experiences::Client]
    def experiences
      @experiences ||= Whop_sdk::Experiences::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Exports::Client]
    def exports
      @exports ||= Whop_sdk::Exports::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::FeeMarkups::Client]
    def fee_markups
      @fee_markups ||= Whop_sdk::FeeMarkups::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Files::Client]
    def files
      @files ||= Whop_sdk::Files::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::FinancialActivity::Client]
    def financial_activity
      @financial_activity ||= Whop_sdk::FinancialActivity::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Ledgers::Client]
    def ledgers
      @ledgers ||= Whop_sdk::Ledgers::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::ForumPosts::Client]
    def forum_posts
      @forum_posts ||= Whop_sdk::ForumPosts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Forums::Client]
    def forums
      @forums ||= Whop_sdk::Forums::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::IdentityProfiles::Client]
    def identity_profiles
      @identity_profiles ||= Whop_sdk::IdentityProfiles::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Invoices::Client]
    def invoices
      @invoices ||= Whop_sdk::Invoices::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Leads::Client]
    def leads
      @leads ||= Whop_sdk::Leads::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::LedgerAccounts::Client]
    def ledger_accounts
      @ledger_accounts ||= Whop_sdk::LedgerAccounts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Media::Client]
    def media
      @media ||= Whop_sdk::Media::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Members::Client]
    def members
      @members ||= Whop_sdk::Members::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Memberships::Client]
    def memberships
      @memberships ||= Whop_sdk::Memberships::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Messages::Client]
    def messages
      @messages ||= Whop_sdk::Messages::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Notifications::Client]
    def notifications
      @notifications ||= Whop_sdk::Notifications::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Partners::Client]
    def partners
      @partners ||= Whop_sdk::Partners::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::PaymentMethodDomains::Client]
    def payment_method_domains
      @payment_method_domains ||= Whop_sdk::PaymentMethodDomains::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::PaymentMethods::Client]
    def payment_methods
      @payment_methods ||= Whop_sdk::PaymentMethods::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Payments::Client]
    def payments
      @payments ||= Whop_sdk::Payments::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::PayoutAccounts::Client]
    def payout_accounts
      @payout_accounts ||= Whop_sdk::PayoutAccounts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::PayoutMethods::Client]
    def payout_methods
      @payout_methods ||= Whop_sdk::PayoutMethods::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Payouts::Client]
    def payouts
      @payouts ||= Whop_sdk::Payouts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::People::Client]
    def people
      @people ||= Whop_sdk::People::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Permissions::Client]
    def permissions
      @permissions ||= Whop_sdk::Permissions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Plans::Client]
    def plans
      @plans ||= Whop_sdk::Plans::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Products::Client]
    def products
      @products ||= Whop_sdk::Products::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::PromoCodes::Client]
    def promo_codes
      @promo_codes ||= Whop_sdk::PromoCodes::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Reactions::Client]
    def reactions
      @reactions ||= Whop_sdk::Reactions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::RecommendedActions::Client]
    def recommended_actions
      @recommended_actions ||= Whop_sdk::RecommendedActions::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Refunds::Client]
    def refunds
      @refunds ||= Whop_sdk::Refunds::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::ResolutionCenterCases::Client]
    def resolution_center_cases
      @resolution_center_cases ||= Whop_sdk::ResolutionCenterCases::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Reviews::Client]
    def reviews
      @reviews ||= Whop_sdk::Reviews::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::SetupIntents::Client]
    def setup_intents
      @setup_intents ||= Whop_sdk::SetupIntents::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Shipments::Client]
    def shipments
      @shipments ||= Whop_sdk::Shipments::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::SocialAccounts::Client]
    def social_accounts
      @social_accounts ||= Whop_sdk::SocialAccounts::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Stats::Client]
    def stats
      @stats ||= Whop_sdk::Stats::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::SupportChannels::Client]
    def support_channels
      @support_channels ||= Whop_sdk::SupportChannels::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Swaps::Client]
    def swaps
      @swaps ||= Whop_sdk::Swaps::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::TeamMembers::Client]
    def team_members
      @team_members ||= Whop_sdk::TeamMembers::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Topups::Client]
    def topups
      @topups ||= Whop_sdk::Topups::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Transfers::Client]
    def transfers
      @transfers ||= Whop_sdk::Transfers::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Users::Client]
    def users
      @users ||= Whop_sdk::Users::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Verifications::Client]
    def verifications
      @verifications ||= Whop_sdk::Verifications::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Webhooks::Client]
    def webhooks
      @webhooks ||= Whop_sdk::Webhooks::Client.new(client: @raw_client)
    end

    # @return [Whop_sdk::Withdrawals::Client]
    def withdrawals
      @withdrawals ||= Whop_sdk::Withdrawals::Client.new(client: @raw_client)
    end
  end
end
