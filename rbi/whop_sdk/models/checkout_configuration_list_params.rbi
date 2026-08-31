# typed: strong

module WhopSDK
  module Models
    class CheckoutConfigurationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CheckoutConfigurationListParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # Account ID, prefixed `biz_`.
      sig { returns(String) }
      attr_accessor :account_id

      # Cursor for the next page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Only return checkout configurations created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return checkout configurations created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # Sort direction. Defaults to `desc`.
      sig do
        returns(
          T.nilable(
            WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol
          )
        )
      end
      attr_reader :direction

      sig do
        params(
          direction:
            WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Number of checkout configurations to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Field used to sort checkout configurations.
      sig do
        returns(
          T.nilable(WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol)
        )
      end
      attr_reader :order

      sig do
        params(
          order: WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol
        ).void
      end
      attr_writer :order

      # Only return checkout configurations for this plan ID, prefixed `plan_`.
      sig { returns(T.nilable(String)) }
      attr_reader :plan_id

      sig { params(plan_id: String).void }
      attr_writer :plan_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          created_after: String,
          created_before: String,
          direction:
            WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol,
          first: Integer,
          order: WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol,
          plan_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID, prefixed `biz_`.
        account_id:,
        # Cursor for the next page of results.
        after: nil,
        # Only return checkout configurations created after this ISO 8601 timestamp.
        created_after: nil,
        # Only return checkout configurations created before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction. Defaults to `desc`.
        direction: nil,
        # Number of checkout configurations to return.
        first: nil,
        # Field used to sort checkout configurations.
        order: nil,
        # Only return checkout configurations for this plan ID, prefixed `plan_`.
        plan_id: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            created_after: String,
            created_before: String,
            direction:
              WhopSDK::CheckoutConfigurationListParams::Direction::OrSymbol,
            first: Integer,
            order: WhopSDK::CheckoutConfigurationListParams::Order::OrSymbol,
            plan_id: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction. Defaults to `desc`.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CheckoutConfigurationListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            WhopSDK::CheckoutConfigurationListParams::Direction::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            WhopSDK::CheckoutConfigurationListParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CheckoutConfigurationListParams::Direction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Field used to sort checkout configurations.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::CheckoutConfigurationListParams::Order)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::CheckoutConfigurationListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CheckoutConfigurationListParams::Order::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
