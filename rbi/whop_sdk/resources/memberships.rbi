# typed: strong

module WhopSDK
  module Resources
    # Memberships
    class Memberships
      # Retrieves the details of an existing membership.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def retrieve(
        # The unique identifier of the membership, or a license key.
        id,
        request_options: {}
      )
      end

      # Update a membership's metadata or other mutable properties.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def update(
        # The unique identifier of the membership to update.
        id,
        # A JSON object of key-value pairs to store on the membership. Replaces any
        # existing metadata.
        metadata: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of memberships, with optional filtering by product,
      # plan, status, and user.
      #
      # Required permissions:
      #
      # - `member:basic:read`
      # - `member:email:read`
      sig do
        params(
          after: String,
          before: String,
          cancel_options: T::Array[WhopSDK::CancelOptions::OrSymbol],
          cancelation_status:
            WhopSDK::MembershipListParams::CancelationStatus::OrSymbol,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          has_cancelation_reason: T::Boolean,
          include_text_only_cancelation_reasons: T::Boolean,
          last: Integer,
          order: WhopSDK::MembershipListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          promo_code_ids: T::Array[String],
          statuses: T::Array[WhopSDK::MembershipStatus::OrSymbol],
          user_ids: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::MembershipListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter to only memberships matching these cancellation reasons.
        cancel_options: nil,
        # Filter memberships by whether the customer is canceling, left, or was won back.
        cancelation_status: nil,
        # The unique identifier of the company to list memberships for. Required when
        # using an API key.
        company_id: nil,
        # Only return memberships created after this timestamp.
        created_after: nil,
        # Only return memberships created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Filter memberships by whether they have a structured or free-text cancellation
        # reason.
        has_cancelation_reason: nil,
        # When filtering by the other cancellation option, also include memberships that
        # only have a free-text cancellation reason.
        include_text_only_cancelation_reasons: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to sort results by. Null uses the default sort order.
        order: nil,
        # Filter to only memberships belonging to these plan identifiers.
        plan_ids: nil,
        # Filter to only memberships belonging to these product identifiers.
        product_ids: nil,
        # Filter to only memberships that used these promo code identifiers.
        promo_code_ids: nil,
        # Filter to only memberships matching these statuses.
        statuses: nil,
        # Filter to only memberships belonging to these user identifiers.
        user_ids: nil,
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
        ).returns(WhopSDK::Membership)
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

      # Cancel a membership either immediately or at the end of the current billing
      # period. Immediate cancellation revokes access right away.
      #
      # Required permissions:
      #
      # - `membership:cancel`
      # - `member:email:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          cancellation_mode:
            T.nilable(
              WhopSDK::MembershipCancelParams::CancellationMode::OrSymbol
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def cancel(
        # The unique identifier of the membership to cancel.
        id,
        # The mode of cancellation for a membership
        cancellation_mode: nil,
        request_options: {}
      )
      end

      # Pause a membership's recurring payments. The customer retains access but will
      # not be charged until the membership is resumed.
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:email:read`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          resumes_at: T.nilable(Time),
          void_payments: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def pause(
        # The unique identifier of the membership to pause.
        id,
        # When the membership should automatically resume payment collection. If not
        # provided, the membership stays paused until manually resumed.
        resumes_at: nil,
        # Whether to void any outstanding past-due payments on this membership, preventing
        # future collection attempts.
        void_payments: nil,
        request_options: {}
      )
      end

      # Resume a previously paused membership's recurring payments. Billing resumes on
      # the next cycle.
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
        ).returns(WhopSDK::Membership)
      end
      def resume(
        # The unique identifier of the membership to resume.
        id,
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
        ).returns(WhopSDK::Membership)
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
