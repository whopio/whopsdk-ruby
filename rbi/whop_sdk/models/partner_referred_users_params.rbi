# typed: strong

module WhopSDK
  module Models
    class PartnerReferredUsersParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PartnerReferredUsersParams, WhopSDK::Internal::AnyHash)
        end

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Number of referred users to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # When true, only referred users who brought at least one business onto Whop.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_businesses

      sig { params(has_businesses: T::Boolean).void }
      attr_writer :has_businesses

      # When true, only referred users with at least one business that has generated
      # earnings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_earning_businesses

      sig { params(has_earning_businesses: T::Boolean).void }
      attr_writer :has_earning_businesses

      # Number of referred users to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      sig do
        params(
          after: String,
          before: String,
          first: Integer,
          has_businesses: T::Boolean,
          has_earning_businesses: T::Boolean,
          last: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Number of referred users to return from the start of the window.
        first: nil,
        # When true, only referred users who brought at least one business onto Whop.
        has_businesses: nil,
        # When true, only referred users with at least one business that has generated
        # earnings.
        has_earning_businesses: nil,
        # Number of referred users to return from the end of the window.
        last: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            first: Integer,
            has_businesses: T::Boolean,
            has_earning_businesses: T::Boolean,
            last: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
