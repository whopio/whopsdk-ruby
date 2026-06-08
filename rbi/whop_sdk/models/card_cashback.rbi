# typed: strong

module WhopSDK
  module Models
    class CardCashback < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardCashback, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::CardCashback::Month]) }
      attr_accessor :months

      # Cashback accrued this month that will be paid out next, in USD.
      sig { returns(String) }
      attr_accessor :next_payout_usd

      sig { returns(WhopSDK::CardCashback::Object::TaggedSymbol) }
      attr_accessor :object

      # Total cashback earned across all time, in USD.
      sig { returns(String) }
      attr_accessor :total_earned_usd

      # ISO 8601 date the next cashback payout is scheduled for.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_payout_date

      sig do
        params(
          months: T::Array[WhopSDK::CardCashback::Month::OrHash],
          next_payout_usd: String,
          object: WhopSDK::CardCashback::Object::OrSymbol,
          total_earned_usd: String,
          next_payout_date: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        months:,
        # Cashback accrued this month that will be paid out next, in USD.
        next_payout_usd:,
        object:,
        # Total cashback earned across all time, in USD.
        total_earned_usd:,
        # ISO 8601 date the next cashback payout is scheduled for.
        next_payout_date: nil
      )
      end

      sig do
        override.returns(
          {
            months: T::Array[WhopSDK::CardCashback::Month],
            next_payout_usd: String,
            object: WhopSDK::CardCashback::Object::TaggedSymbol,
            total_earned_usd: String,
            next_payout_date: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Month < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::CardCashback::Month, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[WhopSDK::CardCashback::Month::ByMerchant]) }
        attr_accessor :by_merchant

        # Calendar month (1-12).
        sig { returns(Integer) }
        attr_accessor :month

        # Total spend that earned cashback this month, in USD.
        sig { returns(String) }
        attr_accessor :qualified_spend_usd

        # Total cashback earned in this month, in USD.
        sig { returns(String) }
        attr_accessor :total_cashback_usd

        # Calendar year.
        sig { returns(Integer) }
        attr_accessor :year

        sig do
          params(
            by_merchant:
              T::Array[WhopSDK::CardCashback::Month::ByMerchant::OrHash],
            month: Integer,
            qualified_spend_usd: String,
            total_cashback_usd: String,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          by_merchant:,
          # Calendar month (1-12).
          month:,
          # Total spend that earned cashback this month, in USD.
          qualified_spend_usd:,
          # Total cashback earned in this month, in USD.
          total_cashback_usd:,
          # Calendar year.
          year:
        )
        end

        sig do
          override.returns(
            {
              by_merchant: T::Array[WhopSDK::CardCashback::Month::ByMerchant],
              month: Integer,
              qualified_spend_usd: String,
              total_cashback_usd: String,
              year: Integer
            }
          )
        end
        def to_hash
        end

        class ByMerchant < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CardCashback::Month::ByMerchant,
                WhopSDK::Internal::AnyHash
              )
            end

          # Cashback earned in this merchant bucket for the month, in USD.
          sig { returns(String) }
          attr_accessor :cashback_usd

          # Stable URL-safe identifier for the merchant bucket.
          sig { returns(String) }
          attr_accessor :merchant_key

          # Human-readable merchant bucket label.
          sig { returns(String) }
          attr_accessor :merchant_label

          sig do
            params(
              cashback_usd: String,
              merchant_key: String,
              merchant_label: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Cashback earned in this merchant bucket for the month, in USD.
            cashback_usd:,
            # Stable URL-safe identifier for the merchant bucket.
            merchant_key:,
            # Human-readable merchant bucket label.
            merchant_label:
          )
          end

          sig do
            override.returns(
              {
                cashback_usd: String,
                merchant_key: String,
                merchant_label: String
              }
            )
          end
          def to_hash
          end
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardCashback::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CARD_CASHBACK =
          T.let(:card_cashback, WhopSDK::CardCashback::Object::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CardCashback::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
