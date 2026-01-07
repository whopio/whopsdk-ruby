# typed: strong

module WhopSDK
  module Models
    class PayoutMethodListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PayoutMethodListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the payout token
      sig { returns(String) }
      attr_accessor :id

      # The company associated with the payout token
      sig do
        returns(T.nilable(WhopSDK::Models::PayoutMethodListResponse::Company))
      end
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(
              WhopSDK::Models::PayoutMethodListResponse::Company::OrHash
            )
        ).void
      end
      attr_writer :company

      # The currency code of the payout destination. This is the currency that payouts
      # will be made in for this token.
      sig { returns(String) }
      attr_accessor :currency

      # The payout destination associated with the payout token
      sig do
        returns(
          T.nilable(WhopSDK::Models::PayoutMethodListResponse::Destination)
        )
      end
      attr_reader :destination

      sig do
        params(
          destination:
            T.nilable(
              WhopSDK::Models::PayoutMethodListResponse::Destination::OrHash
            )
        ).void
      end
      attr_writer :destination

      # Whether this payout token is the default for the payout account
      sig { returns(T::Boolean) }
      attr_accessor :is_default

      # An optional nickname for the payout token to help the user identify it. This is
      # not used by the provider and is only for the user's reference.
      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      # An object representing an user's setup payout destination.
      sig do
        params(
          id: String,
          company:
            T.nilable(
              WhopSDK::Models::PayoutMethodListResponse::Company::OrHash
            ),
          currency: String,
          destination:
            T.nilable(
              WhopSDK::Models::PayoutMethodListResponse::Destination::OrHash
            ),
          is_default: T::Boolean,
          nickname: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the payout token
        id:,
        # The company associated with the payout token
        company:,
        # The currency code of the payout destination. This is the currency that payouts
        # will be made in for this token.
        currency:,
        # The payout destination associated with the payout token
        destination:,
        # Whether this payout token is the default for the payout account
        is_default:,
        # An optional nickname for the payout token to help the user identify it. This is
        # not used by the provider and is only for the user's reference.
        nickname:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company:
              T.nilable(WhopSDK::Models::PayoutMethodListResponse::Company),
            currency: String,
            destination:
              T.nilable(WhopSDK::Models::PayoutMethodListResponse::Destination),
            is_default: T::Boolean,
            nickname: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutMethodListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The company associated with the payout token
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID (tag) of the company.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Destination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PayoutMethodListResponse::Destination,
              WhopSDK::Internal::AnyHash
            )
          end

        # The category of the payout destination
        sig do
          returns(
            WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # The country code of the payout destination
        sig { returns(String) }
        attr_accessor :country_code

        # The name of the payer associated with the payout destination
        sig { returns(String) }
        attr_accessor :name

        # The payout destination associated with the payout token
        sig do
          params(
            category:
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::OrSymbol,
            country_code: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The category of the payout destination
          category:,
          # The country code of the payout destination
          country_code:,
          # The name of the payer associated with the payout destination
          name:
        )
        end

        sig do
          override.returns(
            {
              category:
                WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol,
              country_code: String,
              name: String
            }
          )
        end
        def to_hash
        end

        # The category of the payout destination
        module Category
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::PayoutMethodListResponse::Destination::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CRYPTO =
            T.let(
              :crypto,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )
          RTP =
            T.let(
              :rtp,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )
          NEXT_DAY_BANK =
            T.let(
              :next_day_bank,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )
          BANK_WIRE =
            T.let(
              :bank_wire,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )
          DIGITAL_WALLET =
            T.let(
              :digital_wallet,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::PayoutMethodListResponse::Destination::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
