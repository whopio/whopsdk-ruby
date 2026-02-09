# typed: strong

module WhopSDK
  module Models
    class PayoutMethodRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::PayoutMethodRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the payout token.
      sig { returns(String) }
      attr_accessor :id

      # A reference to identify the payout destination, such as the last 4 digits of an
      # account number or an email address.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_reference

      # The company associated with the payout token
      sig do
        returns(
          T.nilable(WhopSDK::Models::PayoutMethodRetrieveResponse::Company)
        )
      end
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(
              WhopSDK::Models::PayoutMethodRetrieveResponse::Company::OrHash
            )
        ).void
      end
      attr_writer :company

      # The datetime the payout token was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency code of the payout destination. This is the currency that payouts
      # will be made in for this token.
      sig { returns(String) }
      attr_accessor :currency

      # The payout destination associated with the payout token
      sig do
        returns(
          T.nilable(WhopSDK::Models::PayoutMethodRetrieveResponse::Destination)
        )
      end
      attr_reader :destination

      sig do
        params(
          destination:
            T.nilable(
              WhopSDK::Models::PayoutMethodRetrieveResponse::Destination::OrHash
            )
        ).void
      end
      attr_writer :destination

      # The name of the bank or financial institution.
      sig { returns(T.nilable(String)) }
      attr_accessor :institution_name

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
          account_reference: T.nilable(String),
          company:
            T.nilable(
              WhopSDK::Models::PayoutMethodRetrieveResponse::Company::OrHash
            ),
          created_at: Time,
          currency: String,
          destination:
            T.nilable(
              WhopSDK::Models::PayoutMethodRetrieveResponse::Destination::OrHash
            ),
          institution_name: T.nilable(String),
          is_default: T::Boolean,
          nickname: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the payout token.
        id:,
        # A reference to identify the payout destination, such as the last 4 digits of an
        # account number or an email address.
        account_reference:,
        # The company associated with the payout token
        company:,
        # The datetime the payout token was created.
        created_at:,
        # The currency code of the payout destination. This is the currency that payouts
        # will be made in for this token.
        currency:,
        # The payout destination associated with the payout token
        destination:,
        # The name of the bank or financial institution.
        institution_name:,
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
            account_reference: T.nilable(String),
            company:
              T.nilable(WhopSDK::Models::PayoutMethodRetrieveResponse::Company),
            created_at: Time,
            currency: String,
            destination:
              T.nilable(
                WhopSDK::Models::PayoutMethodRetrieveResponse::Destination
              ),
            institution_name: T.nilable(String),
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
              WhopSDK::Models::PayoutMethodRetrieveResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The company associated with the payout token
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
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
              WhopSDK::Models::PayoutMethodRetrieveResponse::Destination,
              WhopSDK::Internal::AnyHash
            )
          end

        # The category of the payout destination
        sig { returns(WhopSDK::PayoutDestinationCategory::TaggedSymbol) }
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
            category: WhopSDK::PayoutDestinationCategory::OrSymbol,
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
              category: WhopSDK::PayoutDestinationCategory::TaggedSymbol,
              country_code: String,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
