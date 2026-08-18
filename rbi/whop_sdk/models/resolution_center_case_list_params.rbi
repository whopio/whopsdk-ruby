# typed: strong

module WhopSDK
  module Models
    class ResolutionCenterCaseListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::ResolutionCenterCaseListParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The unique identifier of the company to list resolution center cases for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return cases created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return cases created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter by resolution center case status.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::ResolutionCenterCaseStatus::OrSymbol])
        )
      end
      attr_reader :statuses

      sig do
        params(
          statuses: T::Array[WhopSDK::ResolutionCenterCaseStatus::OrSymbol]
        ).void
      end
      attr_writer :statuses

      sig do
        params(
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          statuses: T::Array[WhopSDK::ResolutionCenterCaseStatus::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list resolution center cases for.
        company_id: nil,
        # Only return cases created after this timestamp.
        created_after: nil,
        # Only return cases created before this timestamp.
        created_before: nil,
        # The sort direction.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter by resolution center case status.
        statuses: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            company_id: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            statuses: T::Array[WhopSDK::ResolutionCenterCaseStatus::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
