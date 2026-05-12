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
          experience_id: T.nilable(String),
          origin_account_id: T.nilable(String),
          post_markdown_content: T.nilable(String),
          post_title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::BountyCreateResponse)
      end
      def create(
        # The amount paid to each approved submission. The total bounty pool funded is
        # this amount times accepted_submissions_limit.
        base_unit_amount:,
        # The currency for the bounty pool funding amount.
        currency:,
        # The description of the bounty.
        description:,
        # The title of the bounty.
        title:,
        # The number of submissions that can be approved before the bounty closes.
        # Defaults to 1.
        accepted_submissions_limit: nil,
        # The ISO3166 country codes where this bounty should be visible. Empty means
        # globally visible.
        allowed_country_codes: nil,
        # An optional experience to scope the bounty to.
        experience_id: nil,
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
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          experience_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          status: T.nilable(WhopSDK::BountyListParams::Status::OrSymbol),
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
        # The direction of the sort.
        direction: nil,
        # The experience to list bounties for. When omitted, returns bounties with no
        # experience.
        experience_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The available bounty statuses to choose from.
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
