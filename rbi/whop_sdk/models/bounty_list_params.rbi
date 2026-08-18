# typed: strong

module WhopSDK
  module Models
    class BountyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::BountyListParams, WhopSDK::Internal::AnyHash)
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

      # Sort direction. Defaults to descending.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # The experience to list bounties for. When omitted, returns bounties with no
      # experience.
      sig { returns(T.nilable(String)) }
      attr_reader :experience_id

      sig { params(experience_id: String).void }
      attr_writer :experience_id

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

      # Filter bounties by status.
      sig { returns(T.nilable(WhopSDK::BountyListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::BountyListParams::Status::OrSymbol).void }
      attr_writer :status

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            after: String,
            before: String,
            direction: WhopSDK::Direction::OrSymbol,
            experience_id: String,
            first: Integer,
            last: Integer,
            status: WhopSDK::BountyListParams::Status::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter bounties by status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLISHED =
          T.let(:published, WhopSDK::BountyListParams::Status::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, WhopSDK::BountyListParams::Status::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, WhopSDK::BountyListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::BountyListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
