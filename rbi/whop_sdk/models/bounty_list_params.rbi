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
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # The experience to list bounties for. When omitted, returns bounties with no
      # experience.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The available bounty statuses to choose from.
      sig { returns(T.nilable(WhopSDK::BountyListParams::Status::OrSymbol)) }
      attr_accessor :status

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            experience_id: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            status: T.nilable(WhopSDK::BountyListParams::Status::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The available bounty statuses to choose from.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLISHED =
          T.let(:published, WhopSDK::BountyListParams::Status::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, WhopSDK::BountyListParams::Status::TaggedSymbol)

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
