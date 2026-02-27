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
          after: T.nilable(String),
          before: T.nilable(String),
          cancel_options: T.nilable(T::Array[WhopSDK::CancelOptions::OrSymbol]),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol]),
          user_ids: T.nilable(T::Array[String]),
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
        # The unique identifier of the company to list memberships for. Required when
        # using an API key.
        company_id: nil,
        # Only return memberships created after this timestamp.
        created_after: nil,
        # Only return memberships created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
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

      # Cancel a membership either immediately or at the end of the current billing
      # period. Immediate cancellation revokes access right away.
      #
      # Required permissions:
      #
      # - `member:manage`
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
          void_payments: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def pause(
        # The unique identifier of the membership to pause.
        id,
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
