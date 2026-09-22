# typed: strong

module WhopSDK
  module Models
    class SetupIntentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SetupIntentListParams, WhopSDK::Internal::AnyHash)
        end

      # Only setup intents for this account, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Return results after this cursor. Use `page_info.end_cursor` from the previous
      # response to fetch the next page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Return results before this cursor. Use `page_info.start_cursor` from the
      # previous response to fetch the previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only setup intents created after this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only setup intents created before this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction.
      sig do
        returns(T.nilable(WhopSDK::SetupIntentListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::SetupIntentListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Number of results to return from the start of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of results to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by.
      sig do
        returns(T.nilable(WhopSDK::SetupIntentListParams::Order::OrSymbol))
      end
      attr_reader :order

      sig do
        params(order: WhopSDK::SetupIntentListParams::Order::OrSymbol).void
      end
      attr_writer :order

      # Only setup intents in this state.
      sig do
        returns(T.nilable(WhopSDK::SetupIntentListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: WhopSDK::SetupIntentListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::SetupIntentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::SetupIntentListParams::Order::OrSymbol,
          status: WhopSDK::SetupIntentListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only setup intents for this account, prefixed `biz_`.
        account_id: nil,
        # Return results after this cursor. Use `page_info.end_cursor` from the previous
        # response to fetch the next page.
        after: nil,
        # Return results before this cursor. Use `page_info.start_cursor` from the
        # previous response to fetch the previous page.
        before: nil,
        # Only setup intents created after this ISO 8601 timestamp.
        created_after: nil,
        # Only setup intents created before this ISO 8601 timestamp.
        created_before: nil,
        # The sort direction.
        direction: nil,
        # Number of results to return from the start of the range.
        first: nil,
        # Number of results to return from the end of the range.
        last: nil,
        # The field to sort by.
        order: nil,
        # Only setup intents in this state.
        status: nil,
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
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::SetupIntentListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::SetupIntentListParams::Order::OrSymbol,
            status: WhopSDK::SetupIntentListParams::Status::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SetupIntentListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::SetupIntentListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::SetupIntentListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::SetupIntentListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::SetupIntentListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::SetupIntentListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SetupIntentListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Only setup intents in this state.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::SetupIntentListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(
            :processing,
            WhopSDK::SetupIntentListParams::Status::TaggedSymbol
          )
        SUCCEEDED =
          T.let(
            :succeeded,
            WhopSDK::SetupIntentListParams::Status::TaggedSymbol
          )
        CANCELED =
          T.let(:canceled, WhopSDK::SetupIntentListParams::Status::TaggedSymbol)
        REQUIRES_ACTION =
          T.let(
            :requires_action,
            WhopSDK::SetupIntentListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SetupIntentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
