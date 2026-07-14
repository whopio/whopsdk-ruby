# typed: strong

module WhopSDK
  module Models
    class PlanCalculateTaxResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PlanCalculateTaxResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Three-letter ISO 4217 currency code for the returned amounts.
      sig { returns(String) }
      attr_accessor :currency

      # Whether Whop calculated tax for this preview. `not_calculated` means no tax
      # could be determined, so `tax_amount` is 0 and `total` equals `subtotal`.
      sig do
        returns(WhopSDK::Models::PlanCalculateTaxResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      # Plan price in the currency's smallest unit, for example cents. For exclusive
      # tax, this is the pre-tax amount; for inclusive tax, it already includes tax and
      # equals the total.
      sig { returns(Integer) }
      attr_accessor :subtotal

      # Calculated tax amount in the currency's smallest unit. For exclusive tax, this
      # is added on top of the subtotal; for inclusive tax, it is the portion of the
      # subtotal that is tax.
      sig { returns(Integer) }
      attr_accessor :tax_amount

      # Whether tax is added on top of the plan price or already included in it for this
      # buyer's location.
      sig do
        returns(
          WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::TaggedSymbol
        )
      end
      attr_accessor :tax_behavior

      # Amount the buyer would pay in the currency's smallest unit.
      sig { returns(Integer) }
      attr_accessor :total

      sig do
        params(
          currency: String,
          status: WhopSDK::Models::PlanCalculateTaxResponse::Status::OrSymbol,
          subtotal: Integer,
          tax_amount: Integer,
          tax_behavior:
            WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::OrSymbol,
          total: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Three-letter ISO 4217 currency code for the returned amounts.
        currency:,
        # Whether Whop calculated tax for this preview. `not_calculated` means no tax
        # could be determined, so `tax_amount` is 0 and `total` equals `subtotal`.
        status:,
        # Plan price in the currency's smallest unit, for example cents. For exclusive
        # tax, this is the pre-tax amount; for inclusive tax, it already includes tax and
        # equals the total.
        subtotal:,
        # Calculated tax amount in the currency's smallest unit. For exclusive tax, this
        # is added on top of the subtotal; for inclusive tax, it is the portion of the
        # subtotal that is tax.
        tax_amount:,
        # Whether tax is added on top of the plan price or already included in it for this
        # buyer's location.
        tax_behavior:,
        # Amount the buyer would pay in the currency's smallest unit.
        total:
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            status:
              WhopSDK::Models::PlanCalculateTaxResponse::Status::TaggedSymbol,
            subtotal: Integer,
            tax_amount: Integer,
            tax_behavior:
              WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::TaggedSymbol,
            total: Integer
          }
        )
      end
      def to_hash
      end

      # Whether Whop calculated tax for this preview. `not_calculated` means no tax
      # could be determined, so `tax_amount` is 0 and `total` equals `subtotal`.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PlanCalculateTaxResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALCULATED =
          T.let(
            :calculated,
            WhopSDK::Models::PlanCalculateTaxResponse::Status::TaggedSymbol
          )
        NOT_CALCULATED =
          T.let(
            :not_calculated,
            WhopSDK::Models::PlanCalculateTaxResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PlanCalculateTaxResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Whether tax is added on top of the plan price or already included in it for this
      # buyer's location.
      module TaxBehavior
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXCLUSIVE =
          T.let(
            :exclusive,
            WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::TaggedSymbol
          )
        INCLUSIVE =
          T.let(
            :inclusive,
            WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
