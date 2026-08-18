# typed: strong

module WhopSDK
  module Resources
    # Bounties
    class Bounties
      # Create a new workforce bounty by funding a dedicated bounty pool.
      #
      # Required permissions:
      #
      # - `bounty:create`
      sig do
        params(
          base_unit_amount: Float,
          currency: WhopSDK::Currency::OrSymbol,
          description: String,
          title: String,
          accepted_submissions_limit: T.nilable(Integer),
          allowed_country_codes: T.nilable(T::Array[String]),
          business_goal_type:
            T.nilable(WhopSDK::BountyCreateParams::BusinessGoalType::OrSymbol),
          experience_id: T.nilable(String),
          minimum_total_verified_clip_duration_seconds: T.nilable(Integer),
          origin_account_id: T.nilable(String),
          post_markdown_content: T.nilable(String),
          post_title: T.nilable(String),
          scheduled_frequency:
            T.nilable(
              WhopSDK::BountyCreateParams::ScheduledFrequency::OrSymbol
            ),
          scheduled_publish_at: T.nilable(Time),
          scheduled_timezone: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::BountyCreateResponse)
      end
      def create(
        # The amount paid to each approved submission. The total bounty pool funded is
        # this amount times accepted_submissions_limit, and must be at least 5 in the
        # bounty's currency.
        base_unit_amount:,
        # The currency for the bounty pool funding amount.
        currency:,
        # The description of the bounty.
        description:,
        # The title of the bounty.
        title:,
        # The number of submissions that can be approved before the bounty closes.
        # Defaults to 1. The total pool (base_unit_amount times this limit) must be at
        # least 5 in the bounty's currency.
        accepted_submissions_limit: nil,
        # The ISO3166 country codes where this bounty should be visible. Empty means
        # globally visible.
        allowed_country_codes: nil,
        # What the poster is trying to accomplish with a workforce bounty. Used for
        # product taxonomy and analytics, separate from the bounty's implementation type.
        business_goal_type: nil,
        # An optional experience to scope the bounty to.
        experience_id: nil,
        # Data capture bounties only: the minimum total server-verified clip duration in
        # seconds. Defaults to 3600 and must be a whole number of hours between 1 and 12.
        minimum_total_verified_clip_duration_seconds: nil,
        # The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
        # Defaults to the requester's personal balance when omitted. The requester must be
        # the user themself or an owner/admin of the company.
        origin_account_id: nil,
        # Optional markdown body for the anchor forum post. Falls back to the bounty
        # description when omitted.
        post_markdown_content: nil,
        # Optional title for the anchor forum post. Falls back to the bounty title when
        # omitted.
        post_title: nil,
        # How often a scheduled bounty republishes a new bounty.
        scheduled_frequency: nil,
        # When to publish the bounty. When provided, the bounty is created as a hidden
        # draft and published at this time instead of immediately. Must be in the future.
        scheduled_publish_at: nil,
        # The IANA timezone used for recurring occurrences. Required when
        # scheduled_publish_at is provided.
        scheduled_timezone: nil,
        request_options: {}
      )
      end

      # Retrieves a workforce bounty for the current authenticated user.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::BountyRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the workforce bounty to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of workforce bounties. When experienceId is provided,
      # returns bounties scoped to that experience. When omitted, returns bounties with
      # no experience.
      sig do
        params(
          after: String,
          before: String,
          direction: WhopSDK::Direction::OrSymbol,
          experience_id: String,
          first: Integer,
          last: Integer,
          status: WhopSDK::BountyListParams::Status::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::BountyListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Sort direction. Defaults to descending.
        direction: nil,
        # The experience to list bounties for. When omitted, returns bounties with no
        # experience.
        experience_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter bounties by status.
        status: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
