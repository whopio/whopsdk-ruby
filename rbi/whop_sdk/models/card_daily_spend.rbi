# typed: strong

module WhopSDK
  module Models
    class CardDailySpend < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardDailySpend, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::CardDailySpend::DailySpend]) }
      attr_accessor :daily_spend

      sig { returns(WhopSDK::CardDailySpend::Object::TaggedSymbol) }
      attr_accessor :object

      # The IANA timezone the daily buckets were aggregated in.
      sig { returns(String) }
      attr_accessor :timezone

      sig do
        params(
          daily_spend: T::Array[WhopSDK::CardDailySpend::DailySpend::OrHash],
          object: WhopSDK::CardDailySpend::Object::OrSymbol,
          timezone: String
        ).returns(T.attached_class)
      end
      def self.new(
        daily_spend:,
        object:,
        # The IANA timezone the daily buckets were aggregated in.
        timezone:
      )
      end

      sig do
        override.returns(
          {
            daily_spend: T::Array[WhopSDK::CardDailySpend::DailySpend],
            object: WhopSDK::CardDailySpend::Object::TaggedSymbol,
            timezone: String
          }
        )
      end
      def to_hash
      end

      class DailySpend < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardDailySpend::DailySpend,
              WhopSDK::Internal::AnyHash
            )
          end

        # Total spend for the day, in cents.
        sig { returns(Integer) }
        attr_accessor :amount_cents

        # ISO 8601 timestamp for the spend bucket (noon UTC on the day).
        sig { returns(String) }
        attr_accessor :date

        sig do
          params(amount_cents: Integer, date: String).returns(T.attached_class)
        end
        def self.new(
          # Total spend for the day, in cents.
          amount_cents:,
          # ISO 8601 timestamp for the spend bucket (noon UTC on the day).
          date:
        )
        end

        sig { override.returns({ amount_cents: Integer, date: String }) }
        def to_hash
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardDailySpend::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY_SPEND =
          T.let(:daily_spend, WhopSDK::CardDailySpend::Object::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CardDailySpend::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
