# typed: strong

module WhopSDK
  module Models
    class PromoCodeListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PromoCodeListParams, WhopSDK::Internal::AnyHash)
        end

      # Account whose promo codes are listed (`biz_` tag).
      sig { returns(String) }
      attr_accessor :account_id

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

      # Only promo codes created after this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only promo codes created before this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Sort direction.
      sig do
        returns(T.nilable(WhopSDK::PromoCodeListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::PromoCodeListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Number of promo codes to return from the start of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Number of promo codes to return from the end of the window.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Sort field.
      sig { returns(T.nilable(WhopSDK::PromoCodeListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::PromoCodeListParams::Order::OrSymbol).void }
      attr_writer :order

      # Only promo codes scoped to these plan IDs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Only promo codes scoped to these product IDs.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Promo-code status. `expired` groups inactive and archived codes.
      sig { returns(T.nilable(WhopSDK::PromoCodeListParams::Status::OrSymbol)) }
      attr_reader :status

      sig do
        params(status: WhopSDK::PromoCodeListParams::Status::OrSymbol).void
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
          direction: WhopSDK::PromoCodeListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::PromoCodeListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          status: WhopSDK::PromoCodeListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account whose promo codes are listed (`biz_` tag).
        account_id:,
        # Cursor to paginate forwards from.
        after: nil,
        # Cursor to paginate backwards from.
        before: nil,
        # Only promo codes created after this ISO 8601 timestamp.
        created_after: nil,
        # Only promo codes created before this ISO 8601 timestamp.
        created_before: nil,
        # Sort direction.
        direction: nil,
        # Number of promo codes to return from the start of the window.
        first: nil,
        # Number of promo codes to return from the end of the window.
        last: nil,
        # Sort field.
        order: nil,
        # Only promo codes scoped to these plan IDs.
        plan_ids: nil,
        # Only promo codes scoped to these product IDs.
        product_ids: nil,
        # Promo-code status. `expired` groups inactive and archived codes.
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
            direction: WhopSDK::PromoCodeListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::PromoCodeListParams::Order::OrSymbol,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            status: WhopSDK::PromoCodeListParams::Status::OrSymbol,
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
            T.all(Symbol, WhopSDK::PromoCodeListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::PromoCodeListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::PromoCodeListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCodeListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCodeListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::PromoCodeListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCodeListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Promo-code status. `expired` groups inactive and archived codes.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PromoCodeListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, WhopSDK::PromoCodeListParams::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, WhopSDK::PromoCodeListParams::Status::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, WhopSDK::PromoCodeListParams::Status::TaggedSymbol)
        EXPIRED =
          T.let(:expired, WhopSDK::PromoCodeListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PromoCodeListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
