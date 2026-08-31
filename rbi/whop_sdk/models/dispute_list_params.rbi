# typed: strong

module WhopSDK
  module Models
    class DisputeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DisputeListParams, WhopSDK::Internal::AnyHash)
        end

      # Only disputes filed against this account (`biz_` tag). Omit it to cover every
      # account you can read.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns disputes after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns disputes before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only disputes opened after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only disputes opened before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Only disputes in this three-letter ISO currency.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Sort direction.
      sig do
        returns(T.nilable(WhopSDK::DisputeListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::DisputeListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of disputes to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of disputes to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort disputes by.
      sig { returns(T.nilable(WhopSDK::DisputeListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::DisputeListParams::Order::OrSymbol).void }
      attr_writer :order

      # Only disputes in these statuses. Repeat the parameter to pass several — one
      # paginated list covers all of them. Covers both chargebacks and inquiries at each
      # stage. A `needs_response` dispute whose evidence deadline has passed reports and
      # filters as `under_review` instead.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::DisputeListParams::Status::OrSymbol])
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[WhopSDK::DisputeListParams::Status::OrSymbol]
        ).void
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
          created_after: String,
          created_before: String,
          currency: String,
          direction: WhopSDK::DisputeListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::DisputeListParams::Order::OrSymbol,
          status: T::Array[WhopSDK::DisputeListParams::Status::OrSymbol],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only disputes filed against this account (`biz_` tag). Omit it to cover every
        # account you can read.
        account_id: nil,
        # A cursor; returns disputes after this position.
        after: nil,
        # A cursor; returns disputes before this position.
        before: nil,
        # Only disputes opened after this ISO 8601 timestamp.
        created_after: nil,
        # Only disputes opened before this ISO 8601 timestamp.
        created_before: nil,
        # Only disputes in this three-letter ISO currency.
        currency: nil,
        # Sort direction.
        direction: nil,
        # The number of disputes to return (default 20, max 100).
        first: nil,
        # The number of disputes to return from the end of the range.
        last: nil,
        # The field to sort disputes by.
        order: nil,
        # Only disputes in these statuses. Repeat the parameter to pass several — one
        # paginated list covers all of them. Covers both chargebacks and inquiries at each
        # stage. A `needs_response` dispute whose evidence deadline has passed reports and
        # filters as `under_review` instead.
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
            created_after: String,
            created_before: String,
            currency: String,
            direction: WhopSDK::DisputeListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::DisputeListParams::Order::OrSymbol,
            status: T::Array[WhopSDK::DisputeListParams::Status::OrSymbol],
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DisputeListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::DisputeListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::DisputeListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort disputes by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DisputeListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::DisputeListParams::Order::TaggedSymbol)
        AMOUNT = T.let(:amount, WhopSDK::DisputeListParams::Order::TaggedSymbol)
        EVIDENCE_DUE_AT =
          T.let(
            :evidence_due_at,
            WhopSDK::DisputeListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DisputeListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEEDS_RESPONSE =
          T.let(
            :needs_response,
            WhopSDK::DisputeListParams::Status::TaggedSymbol
          )
        UNDER_REVIEW =
          T.let(:under_review, WhopSDK::DisputeListParams::Status::TaggedSymbol)
        WON = T.let(:won, WhopSDK::DisputeListParams::Status::TaggedSymbol)
        LOST = T.let(:lost, WhopSDK::DisputeListParams::Status::TaggedSymbol)
        CLOSED =
          T.let(:closed, WhopSDK::DisputeListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
