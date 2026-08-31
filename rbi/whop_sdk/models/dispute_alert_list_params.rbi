# typed: strong

module WhopSDK
  module Models
    class DisputeAlertListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::DisputeAlertListParams, WhopSDK::Internal::AnyHash)
        end

      # Only alerts on this account's payments (`biz_` tag). Omit it to cover every
      # account you can read.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns alerts after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns alerts before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only alerts Whop received after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only alerts Whop received before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction.
      sig do
        returns(T.nilable(WhopSDK::DisputeAlertListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::DisputeAlertListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The number of alerts to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of alerts to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort alerts by.
      sig do
        returns(T.nilable(WhopSDK::DisputeAlertListParams::Order::OrSymbol))
      end
      attr_reader :order

      sig do
        params(order: WhopSDK::DisputeAlertListParams::Order::OrSymbol).void
      end
      attr_writer :order

      # Only alerts on this payment (`pay_` tag). A payment can carry several.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_id

      sig { params(payment_id: String).void }
      attr_writer :payment_id

      # Only alerts of this kind. `early_fraud_warning` for issuer fraud reports,
      # `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR
      # cases the network already closed.
      sig do
        returns(T.nilable(WhopSDK::DisputeAlertListParams::Type::OrSymbol))
      end
      attr_reader :type

      sig { params(type: WhopSDK::DisputeAlertListParams::Type::OrSymbol).void }
      attr_writer :type

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
          direction: WhopSDK::DisputeAlertListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::DisputeAlertListParams::Order::OrSymbol,
          payment_id: String,
          type: WhopSDK::DisputeAlertListParams::Type::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only alerts on this account's payments (`biz_` tag). Omit it to cover every
        # account you can read.
        account_id: nil,
        # A cursor; returns alerts after this position.
        after: nil,
        # A cursor; returns alerts before this position.
        before: nil,
        # Only alerts Whop received after this ISO 8601 timestamp.
        created_after: nil,
        # Only alerts Whop received before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # The number of alerts to return (default 20, max 100).
        first: nil,
        # The number of alerts to return from the end of the range.
        last: nil,
        # The field to sort alerts by.
        order: nil,
        # Only alerts on this payment (`pay_` tag). A payment can carry several.
        payment_id: nil,
        # Only alerts of this kind. `early_fraud_warning` for issuer fraud reports,
        # `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR
        # cases the network already closed.
        type: nil,
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
            direction: WhopSDK::DisputeAlertListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::DisputeAlertListParams::Order::OrSymbol,
            payment_id: String,
            type: WhopSDK::DisputeAlertListParams::Type::OrSymbol,
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
          T.type_alias do
            T.all(Symbol, WhopSDK::DisputeAlertListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::DisputeAlertListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::DisputeAlertListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeAlertListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort alerts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DisputeAlertListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::DisputeAlertListParams::Order::TaggedSymbol
          )
        REPORTED_AT =
          T.let(
            :reported_at,
            WhopSDK::DisputeAlertListParams::Order::TaggedSymbol
          )
        AMOUNT =
          T.let(:amount, WhopSDK::DisputeAlertListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeAlertListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Only alerts of this kind. `early_fraud_warning` for issuer fraud reports,
      # `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR
      # cases the network already closed.
      module Type
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::DisputeAlertListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EARLY_FRAUD_WARNING =
          T.let(
            :early_fraud_warning,
            WhopSDK::DisputeAlertListParams::Type::TaggedSymbol
          )
        DISPUTE_ALERT =
          T.let(
            :dispute_alert,
            WhopSDK::DisputeAlertListParams::Type::TaggedSymbol
          )
        RAPID_DISPUTE_RESOLUTION =
          T.let(
            :rapid_dispute_resolution,
            WhopSDK::DisputeAlertListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::DisputeAlertListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
