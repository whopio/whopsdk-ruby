# typed: strong

module WhopSDK
  module Resources
    class Memberships
      # Retrieves a membership by ID or license key
      #
      # Required permissions:
      #
      # - `member:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def retrieve(
        # The ID of the membership or a license key
        id,
        request_options: {}
      )
      end

      # Update a membership
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def update(
        # The ID of the membership.
        id,
        # The metadata to update the membership with.
        metadata: nil,
        request_options: {}
      )
      end

      # Lists memberships
      #
      # Required permissions:
      #
      # - `member:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          cancel_options:
            T.nilable(
              T::Array[WhopSDK::MembershipListParams::CancelOption::OrSymbol]
            ),
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
        # The cancel options to filter the memberships by
        cancel_options: nil,
        # The ID of the company to list memberships for
        company_id: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the memberships by
        plan_ids: nil,
        # The product IDs to filter the memberships by
        product_ids: nil,
        # The promo code IDs to filter the memberships by
        promo_code_ids: nil,
        # The membership status to filter the memberships by
        statuses: nil,
        # Only return memberships from these whop user ids
        user_ids: nil,
        request_options: {}
      )
      end

      # Cancels a membership either immediately or at the end of the current billing
      # period
      #
      # Required permissions:
      #
      # - `member:manage`
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
        # The ID of the membership.
        id,
        # The mode of cancellation for a membership
        cancellation_mode: nil,
        request_options: {}
      )
      end

      # Pauses a membership's payments
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          void_payments: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def pause(
        # The ID of the membership you want to pause.
        id,
        # Whether to void past_due payments associated with the membership to prevent
        # future payment attempts.
        void_payments: nil,
        request_options: {}
      )
      end

      # Resumes a membership's payments
      #
      # Required permissions:
      #
      # - `member:manage`
      # - `member:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Membership)
      end
      def resume(
        # The ID of the membership you want to resume.
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
