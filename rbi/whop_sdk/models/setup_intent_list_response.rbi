# typed: strong

module WhopSDK
  module Models
    class SetupIntentListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SetupIntentListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the setup intent.
      sig { returns(String) }
      attr_accessor :id

      # The checkout session configuration associated with this setup intent. Null if no
      # checkout session was used.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration
          )
        )
      end
      attr_reader :checkout_configuration

      sig do
        params(
          checkout_configuration:
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration::OrHash
            )
        ).void
      end
      attr_writer :checkout_configuration

      # The company that initiated this setup intent. Null if the company has been
      # deleted.
      sig do
        returns(T.nilable(WhopSDK::Models::SetupIntentListResponse::Company))
      end
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(WhopSDK::Models::SetupIntentListResponse::Company::OrHash)
        ).void
      end
      attr_writer :company

      # The datetime the setup intent was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A human-readable error message explaining why the setup intent failed. Null if
      # no error occurred.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The company member associated with this setup intent. Null if the user is not a
      # member.
      sig do
        returns(T.nilable(WhopSDK::Models::SetupIntentListResponse::Member))
      end
      attr_reader :member

      sig do
        params(
          member:
            T.nilable(WhopSDK::Models::SetupIntentListResponse::Member::OrHash)
        ).void
      end
      attr_writer :member

      # Custom key-value pairs attached to this setup intent. Null if no metadata was
      # provided.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The saved payment method created by this setup intent. Null if the setup has not
      # completed successfully.
      sig do
        returns(
          T.nilable(WhopSDK::Models::SetupIntentListResponse::PaymentMethod)
        )
      end
      attr_reader :payment_method

      sig do
        params(
          payment_method:
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::PaymentMethod::OrHash
            )
        ).void
      end
      attr_writer :payment_method

      # The current status of the setup intent.
      sig { returns(WhopSDK::SetupIntentStatus::TaggedSymbol) }
      attr_accessor :status

      # A setup intent allows a user to save a payment method for future use without
      # making an immediate purchase.
      sig do
        params(
          id: String,
          checkout_configuration:
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration::OrHash
            ),
          company:
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::Company::OrHash
            ),
          created_at: Time,
          error_message: T.nilable(String),
          member:
            T.nilable(WhopSDK::Models::SetupIntentListResponse::Member::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          payment_method:
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::PaymentMethod::OrHash
            ),
          status: WhopSDK::SetupIntentStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the setup intent.
        id:,
        # The checkout session configuration associated with this setup intent. Null if no
        # checkout session was used.
        checkout_configuration:,
        # The company that initiated this setup intent. Null if the company has been
        # deleted.
        company:,
        # The datetime the setup intent was created.
        created_at:,
        # A human-readable error message explaining why the setup intent failed. Null if
        # no error occurred.
        error_message:,
        # The company member associated with this setup intent. Null if the user is not a
        # member.
        member:,
        # Custom key-value pairs attached to this setup intent. Null if no metadata was
        # provided.
        metadata:,
        # The saved payment method created by this setup intent. Null if the setup has not
        # completed successfully.
        payment_method:,
        # The current status of the setup intent.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            checkout_configuration:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration
              ),
            company:
              T.nilable(WhopSDK::Models::SetupIntentListResponse::Company),
            created_at: Time,
            error_message: T.nilable(String),
            member: T.nilable(WhopSDK::Models::SetupIntentListResponse::Member),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            payment_method:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::PaymentMethod
              ),
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
              WhopSDK::Models::SetupIntentListResponse::CheckoutConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the checkout session.
        sig { returns(String) }
        attr_accessor :id

        # The checkout session configuration associated with this setup intent. Null if no
        # checkout session was used.
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
            T.any(
              WhopSDK::Models::SetupIntentListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The company that initiated this setup intent. Null if the company has been
        # deleted.
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
            T.any(
              WhopSDK::Models::SetupIntentListResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company member.
        sig { returns(String) }
        attr_accessor :id

        # The user for this member, if any.
        sig do
          returns(
            T.nilable(WhopSDK::Models::SetupIntentListResponse::Member::User)
          )
        end
        attr_reader :user

        sig do
          params(
            user:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::Member::User::OrHash
              )
          ).void
        end
        attr_writer :user

        # The company member associated with this setup intent. Null if the user is not a
        # member.
        sig do
          params(
            id: String,
            user:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::Member::User::OrHash
              )
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
            {
              id: String,
              user:
                T.nilable(
                  WhopSDK::Models::SetupIntentListResponse::Member::User
                )
            }
          )
        end
        def to_hash
        end

        class User < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::SetupIntentListResponse::Member::User,
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
              WhopSDK::Models::SetupIntentListResponse::PaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment token.
        sig { returns(String) }
        attr_accessor :id

        # The card data associated with the payment method, if its a debit or credit card.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card
            )
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card::OrHash
              )
          ).void
        end
        attr_writer :card

        # The datetime the payment token was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The payment method type of the payment method
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The saved payment method created by this setup intent. Null if the setup has not
        # completed successfully.
        sig do
          params(
            id: String,
            card:
              T.nilable(
                WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card::OrHash
              ),
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
              card:
                T.nilable(
                  WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card
                ),
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
                WhopSDK::Models::SetupIntentListResponse::PaymentMethod::Card,
                WhopSDK::Internal::AnyHash
              )
            end

          # Possible card brands that a payment token can have
          sig { returns(T.nilable(WhopSDK::CardBrands::TaggedSymbol)) }
          attr_accessor :brand

          # The two-digit expiration month of the card (1-12). Null if not available.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_month

          # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
          # available.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :exp_year

          # The last four digits of the card number. Null if not available.
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
            # The two-digit expiration month of the card (1-12). Null if not available.
            exp_month:,
            # The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
            # available.
            exp_year:,
            # The last four digits of the card number. Null if not available.
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
