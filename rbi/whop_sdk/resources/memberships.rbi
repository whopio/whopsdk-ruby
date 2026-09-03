# typed: strong

module WhopSDK
  module Resources
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
    class Memberships
      # Retrieves a membership by ID or license key. Accessible to the account and to
      # the membership's own user.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def retrieve(
        # Membership ID (`mem_` tag), or a software license key.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Updates a membership: merge metadata key-value pairs, or toggle
      # `cancel_at_period_end` — `true` schedules the cancellation for the end of the
      # current billing period, `false` reverses a pending one.
      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          metadata: T.anything,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def update(
        # Path param: Membership ID (`mem_` tag), or a software license key.
        id,
        # Body param: `true` cancels at the end of the current billing period (the
        # customer keeps access until then); `false` reverses a pending cancellation.
        cancel_at_period_end: nil,
        # Body param: Key-value pairs to merge into the membership's metadata. Pass an
        # empty object to clear it.
        metadata: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists every membership the caller can read: an account API key its account's; a
      # user credential their own plus those of every account they manage. `account_id`
      # and `user_id` only narrow that list — values outside the caller's reach return
      # fewer results, not an error.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::MembershipListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::MembershipListParams::Order::OrSymbol,
          plan_id: String,
          product_id: String,
          status: WhopSDK::MembershipListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Membership])
      end
      def list(
        # Query param: Narrow to one account (`biz_` tag). With read access to the account
        # this lists all of its memberships; without, only the caller's own memberships in
        # it.
        account_id: nil,
        # Query param: Cursor to paginate forwards from.
        after: nil,
        # Query param: Cursor to paginate backwards from.
        before: nil,
        # Query param: Only memberships created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only memberships created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: Number of memberships to return from the start of the window.
        first: nil,
        # Query param: Number of memberships to return from the end of the window.
        last: nil,
        # Query param: Sort field.
        order: nil,
        # Query param: Filter to memberships of this plan (`plan_` tag). Repeat as
        # plan_ids[] for several.
        plan_id: nil,
        # Query param: Filter to memberships of this product (`prod_` tag). Repeat as
        # product_ids[] for several.
        product_id: nil,
        # Query param: Filter by billing state. `canceling` matches active memberships set
        # to cancel at period end; `paused` matches memberships with payment collection
        # paused.
        status: nil,
        # Query param: Narrow to one user's memberships (`user_` tag, or `me` for the
        # caller). A user outside the caller's visible set returns an empty list.
        user_id: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Add free days to extend a membership's current billing period, expiration date,
      # or Stripe trial.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          free_days: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::MembershipAddFreeDaysResponse)
      end
      def add_free_days(
        # The unique identifier of the membership.
        id,
        # The number of free days to add (1-1095). Extends the billing period, expiration
        # date, or Stripe trial depending on plan type.
        free_days:,
        request_options: {}
      )
      end

      # Cancels a membership. Pass `cancel_at_period_end: true` to stop auto-renewal and
      # keep access until the current billing period ends. Omit it (or pass `false`) to
      # revoke access immediately. Buyers cannot cancel buy-now-pay-later (`splitit`,
      # `sezzle`) or non-trial split-pay memberships.
      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          reason: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def cancel(
        # Path param: Membership ID (`mem_` tag).
        id,
        # Body param: `true` stops auto-renewal and keeps access until the current billing
        # period ends. Omit or `false` revokes access immediately.
        cancel_at_period_end: nil,
        # Body param: Free-form note recording why the membership was canceled.
        reason: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Pauses a membership's recurring payment collection. The customer keeps access
      # but is not charged until the membership is resumed.
      sig do
        params(
          id: String,
          until_: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def pause(
        # Path param: Membership ID (`mem_` tag).
        id,
        # Body param: ISO 8601 time to automatically resume payment collection. Must be in
        # the future; only supported for memberships billed by Whop.
        until_: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Resumes a previously paused membership's recurring payment collection. Billing
      # resumes on the next cycle.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def resume(
        # Membership ID (`mem_` tag).
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Reverse a pending cancellation for a membership that was scheduled to cancel at
      # period end.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::MembershipUncancelResponse)
      end
      def uncancel(
        # The unique identifier of the membership to uncancel.
        id,
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
