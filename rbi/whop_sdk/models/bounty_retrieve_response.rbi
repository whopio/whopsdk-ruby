# typed: strong

module WhopSDK
  module Models
    class BountyRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::BountyRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the bounty.
      sig { returns(String) }
      attr_accessor :id

      # The underlying bounty implementation type.
      sig do
        returns(
          WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol
        )
      end
      attr_accessor :bounty_type

      # The datetime the bounty was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency used for the bounty funds.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The description of the bounty.
      sig { returns(String) }
      attr_accessor :description

      # The current lifecycle status of the bounty.
      sig do
        returns(WhopSDK::Models::BountyRetrieveResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # The title of the bounty.
      sig { returns(String) }
      attr_accessor :title

      # The total amount currently funded in the bounty pool for payout.
      sig { returns(Float) }
      attr_accessor :total_available

      # The total amount paid out for this bounty.
      sig { returns(Float) }
      attr_accessor :total_paid

      # The datetime the bounty was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The number of watcher votes required before the submission can resolve.
      sig { returns(Integer) }
      attr_accessor :vote_threshold

      # A privately accessible bounty.
      sig do
        params(
          id: String,
          bounty_type:
            WhopSDK::Models::BountyRetrieveResponse::BountyType::OrSymbol,
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          description: String,
          status: WhopSDK::Models::BountyRetrieveResponse::Status::OrSymbol,
          title: String,
          total_available: Float,
          total_paid: Float,
          updated_at: Time,
          vote_threshold: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the bounty.
        id:,
        # The underlying bounty implementation type.
        bounty_type:,
        # The datetime the bounty was created.
        created_at:,
        # The currency used for the bounty funds.
        currency:,
        # The description of the bounty.
        description:,
        # The current lifecycle status of the bounty.
        status:,
        # The title of the bounty.
        title:,
        # The total amount currently funded in the bounty pool for payout.
        total_available:,
        # The total amount paid out for this bounty.
        total_paid:,
        # The datetime the bounty was last updated.
        updated_at:,
        # The number of watcher votes required before the submission can resolve.
        vote_threshold:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bounty_type:
              WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol,
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            description: String,
            status:
              WhopSDK::Models::BountyRetrieveResponse::Status::TaggedSymbol,
            title: String,
            total_available: Float,
            total_paid: Float,
            updated_at: Time,
            vote_threshold: Integer
          }
        )
      end
      def to_hash
      end

      # The underlying bounty implementation type.
      module BountyType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::BountyRetrieveResponse::BountyType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLASSIC =
          T.let(
            :classic,
            WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol
          )
        USER_FUNDED =
          T.let(
            :user_funded,
            WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol
          )
        WORKFORCE =
          T.let(
            :workforce,
            WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyRetrieveResponse::BountyType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current lifecycle status of the bounty.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::BountyRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLISHED =
          T.let(
            :published,
            WhopSDK::Models::BountyRetrieveResponse::Status::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            WhopSDK::Models::BountyRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::BountyRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
