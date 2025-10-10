# typed: strong

module Whopsdk
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Membership)
      end
      def retrieve(id, request_options: {})
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Membership)
      end
      def update(
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
          company_id: String,
          access_pass_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          cancel_options:
            T.nilable(
              T::Array[Whopsdk::MembershipListParams::CancelOption::OrSymbol]
            ),
          created_after: T.nilable(Integer),
          created_before: T.nilable(Integer),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::MembershipListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[Whopsdk::MembershipStatus::OrSymbol]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[
            T.nilable(Whopsdk::Models::MembershipListResponse)
          ]
        )
      end
      def list(
        # The ID of the company to list memberships for
        company_id:,
        # The access pass IDs to filter the memberships by
        access_pass_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The cancel options to filter the memberships by
        cancel_options: nil,
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
        # The promo code IDs to filter the memberships by
        promo_code_ids: nil,
        # The membership status to filter the memberships by
        statuses: nil,
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
              Whopsdk::MembershipCancelParams::CancellationMode::OrSymbol
            ),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Membership)
      end
      def cancel(
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Membership)
      end
      def pause(
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Membership)
      end
      def resume(id, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
