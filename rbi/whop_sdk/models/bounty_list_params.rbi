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

      # Scope the list to this account (`biz_` tag). Requires read access to the
      # account; account API keys may pass their own account or a connected account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Cursor to paginate forwards from.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to paginate backwards from.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter by the poster's declared goal. Bounties created before the goal taxonomy
      # carry no goal and never match this filter.
      sig do
        returns(
          T.nilable(WhopSDK::BountyListParams::BusinessGoalType::OrSymbol)
        )
      end
      attr_reader :business_goal_type

      sig do
        params(
          business_goal_type:
            WhopSDK::BountyListParams::BusinessGoalType::OrSymbol
        ).void
      end
      attr_writer :business_goal_type

      # Only bounties workable from this country, as an ISO 3166-1 alpha-2 code.
      # Bounties with no country targeting are workable worldwide and always match.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Only bounties created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only bounties created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction.
      sig { returns(T.nilable(WhopSDK::BountyListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::BountyListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # Only bounties posted to this forum experience, prefixed `exp_`. An unknown
      # experience, or one outside the caller's scope, matches nothing.
      sig { returns(T.nilable(String)) }
      attr_reader :experience_id

      sig { params(experience_id: String).void }
      attr_writer :experience_id

      # Number of bounties to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of bounties to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort field.
      sig { returns(T.nilable(WhopSDK::BountyListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::BountyListParams::Order::OrSymbol).void }
      attr_writer :order

      # Substring match on the bounty title or ID.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter by lifecycle state.
      sig { returns(T.nilable(WhopSDK::BountyListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::BountyListParams::Status::OrSymbol).void }
      attr_writer :status

      # List the bounties this user participated in (`user_` tag). Must be the
      # authenticated user.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          business_goal_type:
            WhopSDK::BountyListParams::BusinessGoalType::OrSymbol,
          country: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::BountyListParams::Direction::OrSymbol,
          experience_id: String,
          first: Integer,
          last: Integer,
          order: WhopSDK::BountyListParams::Order::OrSymbol,
          query: String,
          status: WhopSDK::BountyListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Scope the list to this account (`biz_` tag). Requires read access to the
        # account; account API keys may pass their own account or a connected account.
        account_id: nil,
        # Cursor to paginate forwards from.
        after: nil,
        # Cursor to paginate backwards from.
        before: nil,
        # Filter by the poster's declared goal. Bounties created before the goal taxonomy
        # carry no goal and never match this filter.
        business_goal_type: nil,
        # Only bounties workable from this country, as an ISO 3166-1 alpha-2 code.
        # Bounties with no country targeting are workable worldwide and always match.
        country: nil,
        # Only bounties created after this ISO 8601 timestamp.
        created_after: nil,
        # Only bounties created before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # Only bounties posted to this forum experience, prefixed `exp_`. An unknown
        # experience, or one outside the caller's scope, matches nothing.
        experience_id: nil,
        # Number of bounties to return from the start of the window.
        first: nil,
        # Number of bounties to return from the end of the window.
        last: nil,
        # Sort field.
        order: nil,
        # Substring match on the bounty title or ID.
        query: nil,
        # Filter by lifecycle state.
        status: nil,
        # List the bounties this user participated in (`user_` tag). Must be the
        # authenticated user.
        user_id: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            business_goal_type:
              WhopSDK::BountyListParams::BusinessGoalType::OrSymbol,
            country: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::BountyListParams::Direction::OrSymbol,
            experience_id: String,
            first: Integer,
            last: Integer,
            order: WhopSDK::BountyListParams::Order::OrSymbol,
            query: String,
            status: WhopSDK::BountyListParams::Status::OrSymbol,
            user_id: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by the poster's declared goal. Bounties created before the goal taxonomy
      # carry no goal and never match this filter.
      module BusinessGoalType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::BountyListParams::BusinessGoalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIPPING =
          T.let(
            :clipping,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        POST_ENGAGEMENT =
          T.let(
            :post_engagement,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        OWNED_ACCOUNT_GROWTH =
          T.let(
            :owned_account_growth,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        UGC_CONTENT =
          T.let(
            :ugc_content,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        LOCAL_ACTIVATION =
          T.let(
            :local_activation,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        DATA_CAPTURE =
          T.let(
            :data_capture,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::BountyListParams::BusinessGoalType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::BountyListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::BountyListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::BountyListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::BountyListParams::Order::TaggedSymbol)
        GROSS_PAID_OUT_AMOUNT =
          T.let(
            :gross_paid_out_amount,
            WhopSDK::BountyListParams::Order::TaggedSymbol
          )
        GROSS_REWARD_AMOUNT =
          T.let(
            :gross_reward_amount,
            WhopSDK::BountyListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::BountyListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by lifecycle state.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::BountyListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(:scheduled, WhopSDK::BountyListParams::Status::TaggedSymbol)
        OPEN = T.let(:open, WhopSDK::BountyListParams::Status::TaggedSymbol)
        CLOSED = T.let(:closed, WhopSDK::BountyListParams::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, WhopSDK::BountyListParams::Status::TaggedSymbol)
        CANCELED =
          T.let(:canceled, WhopSDK::BountyListParams::Status::TaggedSymbol)

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
