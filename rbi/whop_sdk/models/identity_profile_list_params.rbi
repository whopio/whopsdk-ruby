# typed: strong

module WhopSDK
  module Models
    class IdentityProfileListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::IdentityProfileListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The unique identifier of the company to filter to. When omitted, returns IPs
      # across all ledgers the actor can read.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The kind of identity profile (individual vs business).
      sig { returns(T.nilable(WhopSDK::IdentityProfileKind::OrSymbol)) }
      attr_accessor :profile_type

      # Derived verification status for an identity profile.
      sig { returns(T.nilable(WhopSDK::IdentityProfileStatus::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          profile_type: T.nilable(WhopSDK::IdentityProfileKind::OrSymbol),
          status: T.nilable(WhopSDK::IdentityProfileStatus::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to filter to. When omitted, returns IPs
        # across all ledgers the actor can read.
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The kind of identity profile (individual vs business).
        profile_type: nil,
        # Derived verification status for an identity profile.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            profile_type: T.nilable(WhopSDK::IdentityProfileKind::OrSymbol),
            status: T.nilable(WhopSDK::IdentityProfileStatus::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
