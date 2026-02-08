# typed: strong

module WhopSDK
  module Models
    class SetupIntent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::SetupIntent, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the setup intent.
      sig { returns(String) }
      attr_accessor :id

      # The checkout configuration associated with the setup intent
      sig { returns(T.nilable(WhopSDK::SetupIntent::CheckoutConfiguration)) }
      attr_reader :checkout_configuration

      sig do
        params(
          checkout_configuration:
            T.nilable(WhopSDK::SetupIntent::CheckoutConfiguration::OrHash)
        ).void
      end
      attr_writer :checkout_configuration

      # The company of the setup intent
      sig { returns(T.nilable(WhopSDK::SetupIntent::Company)) }
      attr_reader :company

      sig do
        params(company: T.nilable(WhopSDK::SetupIntent::Company::OrHash)).void
      end
      attr_writer :company

      # The datetime the setup intent was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The error message, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The member connected to the setup intent
      sig { returns(T.nilable(WhopSDK::SetupIntent::Member)) }
      attr_reader :member

      sig do
        params(member: T.nilable(WhopSDK::SetupIntent::Member::OrHash)).void
      end
      attr_writer :member

      # The metadata associated with the setup intent
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The payment method created during the setup, if available.
      sig { returns(T.nilable(WhopSDK::SetupIntent::PaymentMethod)) }
      attr_reader :payment_method

      sig do
        params(
          payment_method: T.nilable(WhopSDK::SetupIntent::PaymentMethod::OrHash)
        ).void
      end
      attr_writer :payment_method

      # The status of the setup intent
      sig { returns(WhopSDK::SetupIntentStatus::TaggedSymbol) }
      attr_accessor :status

      # A setup intent allows a user to save a payment method without making a purchase.
      sig do
        params(
          id: String,
          checkout_configuration:
            T.nilable(WhopSDK::SetupIntent::CheckoutConfiguration::OrHash),
          company: T.nilable(WhopSDK::SetupIntent::Company::OrHash),
          created_at: Time,
          error_message: T.nilable(String),
          member: T.nilable(WhopSDK::SetupIntent::Member::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          payment_method:
            T.nilable(WhopSDK::SetupIntent::PaymentMethod::OrHash),
          status: WhopSDK::SetupIntentStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the setup intent.
        id:,
        # The checkout configuration associated with the setup intent
        checkout_configuration:,
        # The company of the setup intent
        company:,
        # The datetime the setup intent was created.
        created_at:,
        # The error message, if any.
        error_message:,
        # The member connected to the setup intent
        member:,
        # The metadata associated with the setup intent
        metadata:,
        # The payment method created during the setup, if available.
        payment_method:,
        # The status of the setup intent
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            checkout_configuration:
              T.nilable(WhopSDK::SetupIntent::CheckoutConfiguration),
            company: T.nilable(WhopSDK::SetupIntent::Company),
            created_at: Time,
            error_message: T.nilable(String),
            member: T.nilable(WhopSDK::SetupIntent::Member),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            payment_method: T.nilable(WhopSDK::SetupIntent::PaymentMethod),
            status: WhopSDK::SetupIntentStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::SetupIntent::CheckoutConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the checkout session.
        sig { returns(String) }
        attr_accessor :id

        # The checkout configuration associated with the setup intent
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the checkout session.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::SetupIntent::Company, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The company of the setup intent
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

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::SetupIntent::Member, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company member.
        sig { returns(String) }
        attr_accessor :id

        # The user for this member, if any.
        sig { returns(T.nilable(WhopSDK::SetupIntent::Member::User)) }
        attr_reader :user

        sig do
          params(
            user: T.nilable(WhopSDK::SetupIntent::Member::User::OrHash)
          ).void
        end
        attr_writer :user

        # The member connected to the setup intent
        sig do
          params(
            id: String,
            user: T.nilable(WhopSDK::SetupIntent::Member::User::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the company member.
          id:,
          # The user for this member, if any.
          user:
        )
        end

        sig do
          override.returns(
            { id: String, user: T.nilable(WhopSDK::SetupIntent::Member::User) }
          )
        end
        def to_hash
        end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntent::Member::User,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the company member user.
          sig { returns(String) }
          attr_accessor :id

          # The digital mailing address of the user.
          sig { returns(T.nilable(String)) }
          attr_accessor :email

          # The user's full name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The whop username.
          sig { returns(String) }
          attr_accessor :username

          # The user for this member, if any.
          sig do
            params(
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the company member user.
            id:,
            # The digital mailing address of the user.
            email:,
            # The user's full name.
            name:,
            # The whop username.
            username:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                email: T.nilable(String),
                name: T.nilable(String),
                username: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class PaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::SetupIntent::PaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment token.
        sig { returns(String) }
        attr_accessor :id

        # The card data associated with the payment method, if its a debit or credit card.
        sig { returns(T.nilable(WhopSDK::SetupIntent::PaymentMethod::Card)) }
        attr_reader :card

        sig do
          params(
            card: T.nilable(WhopSDK::SetupIntent::PaymentMethod::Card::OrHash)
          ).void
        end
        attr_writer :card

        # The datetime the payment token was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The payment method type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The payment method created during the setup, if available.
        sig do
          params(
            id: String,
            card: T.nilable(WhopSDK::SetupIntent::PaymentMethod::Card::OrHash),
            created_at: Time,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payment token.
          id:,
          # The card data associated with the payment method, if its a debit or credit card.
          card:,
          # The datetime the payment token was created.
          created_at:,
          # The payment method type of the payment method
          payment_method_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              card: T.nilable(WhopSDK::SetupIntent::PaymentMethod::Card),
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Card < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntent::PaymentMethod::Card,
                WhopSDK::Internal::AnyHash
              )
            end

          # Possible card brands that a payment token can have
          sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
          attr_accessor :brand

          # Card expiration month, like 03 for March.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_month

          # Card expiration year, like 27 for 2027.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_year

          # Last four digits of the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # The card data associated with the payment method, if its a debit or credit card.
          sig do
            params(
              brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
              exp_month: T.nilable(Integer),
              exp_year: T.nilable(Integer),
              last4: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Possible card brands that a payment token can have
            brand:,
            # Card expiration month, like 03 for March.
            exp_month:,
            # Card expiration year, like 27 for 2027.
            exp_year:,
            # Last four digits of the card.
            last4:
          )
          end

          sig do
            override.returns(
              {
                brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                exp_month: T.nilable(Integer),
                exp_year: T.nilable(Integer),
                last4: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
