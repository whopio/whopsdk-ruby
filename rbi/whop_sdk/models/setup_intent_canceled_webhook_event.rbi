# typed: strong

module WhopSDK
  module Models
    class SetupIntentCanceledWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::SetupIntentCanceledWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing a setup intent, which is a flow for allowing a customer
      # to add a payment method to their account without making a purchase.
      sig { returns(WhopSDK::SetupIntentCanceledWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::SetupIntentCanceledWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          data: WhopSDK::SetupIntentCanceledWebhookEvent::Data::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing a setup intent, which is a flow for allowing a customer
        # to add a payment method to their account without making a purchase.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"setup_intent.canceled"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::SetupIntentCanceledWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::SetupIntentCanceledWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The setup intent ID
        sig { returns(String) }
        attr_accessor :id

        # The checkout configuration associated with the setup intent
        sig do
          returns(
            T.nilable(
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::CheckoutConfiguration
            )
          )
        end
        attr_reader :checkout_configuration

        sig do
          params(
            checkout_configuration:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::CheckoutConfiguration::OrHash
              )
          ).void
        end
        attr_writer :checkout_configuration

        # The company of the setup intent
        sig do
          returns(
            T.nilable(WhopSDK::SetupIntentCanceledWebhookEvent::Data::Company)
          )
        end
        attr_reader :company

        sig do
          params(
            company:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Company::OrHash
              )
          ).void
        end
        attr_writer :company

        # The datetime the payment was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The error message, if any.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        # The member connected to the setup intent
        sig do
          returns(
            T.nilable(WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member)
          )
        end
        attr_reader :member

        sig do
          params(
            member:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::OrHash
              )
          ).void
        end
        attr_writer :member

        # The metadata associated with the setup intent
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :metadata

        # The payment token created during the setup, if available.
        sig do
          returns(
            T.nilable(
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken
            )
          )
        end
        attr_reader :payment_token

        sig do
          params(
            payment_token:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::OrHash
              )
          ).void
        end
        attr_writer :payment_token

        # The status of the setup intent
        sig do
          returns(
            WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # An object representing a setup intent, which is a flow for allowing a customer
        # to add a payment method to their account without making a purchase.
        sig do
          params(
            id: String,
            checkout_configuration:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::CheckoutConfiguration::OrHash
              ),
            company:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Company::OrHash
              ),
            created_at: Time,
            error_message: T.nilable(String),
            member:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::OrHash
              ),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            payment_token:
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::OrHash
              ),
            status:
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The setup intent ID
          id:,
          # The checkout configuration associated with the setup intent
          checkout_configuration:,
          # The company of the setup intent
          company:,
          # The datetime the payment was created
          created_at:,
          # The error message, if any.
          error_message:,
          # The member connected to the setup intent
          member:,
          # The metadata associated with the setup intent
          metadata:,
          # The payment token created during the setup, if available.
          payment_token:,
          # The status of the setup intent
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checkout_configuration:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::CheckoutConfiguration
                ),
              company:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::Company
                ),
              created_at: Time,
              error_message: T.nilable(String),
              member:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member
                ),
              metadata: T.nilable(T::Hash[Symbol, T.anything]),
              payment_token:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken
                ),
              status:
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::CheckoutConfiguration,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the checkout configuration
          sig { returns(String) }
          attr_accessor :id

          # The checkout configuration associated with the setup intent
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of the checkout configuration
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
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Company,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID (tag) of the company.
          sig { returns(String) }
          attr_accessor :id

          # The company of the setup intent
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

        class Member < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the member
          sig { returns(String) }
          attr_accessor :id

          # The user for this member, if any.
          sig do
            returns(
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::User::OrHash
                )
            ).void
          end
          attr_writer :user

          # The member connected to the setup intent
          sig do
            params(
              id: String,
              user:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::User::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the member
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
                    WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::User
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
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::Member::User,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The internal ID of the user account.
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
              # The internal ID of the user account.
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

        class PaymentToken < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the payment token
          sig { returns(String) }
          attr_accessor :id

          # The card data associated with the payment token, if its a debit or credit card
          # token.
          sig do
            returns(
              T.nilable(
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::Card
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::Card::OrHash
                )
            ).void
          end
          attr_writer :card

          # The date and time the payment token was created
          sig { returns(Time) }
          attr_accessor :created_at

          # The payment method type of the payment token
          sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
          attr_accessor :payment_method_type

          # The payment token created during the setup, if available.
          sig do
            params(
              id: String,
              card:
                T.nilable(
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::Card::OrHash
                ),
              created_at: Time,
              payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the payment token
            id:,
            # The card data associated with the payment token, if its a debit or credit card
            # token.
            card:,
            # The date and time the payment token was created
            created_at:,
            # The payment method type of the payment token
            payment_method_type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                card:
                  T.nilable(
                    WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::Card
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
                  WhopSDK::SetupIntentCanceledWebhookEvent::Data::PaymentToken::Card,
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

            # The card data associated with the payment token, if its a debit or credit card
            # token.
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

        # The status of the setup intent
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROCESSING =
            T.let(
              :processing,
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
            )
          SUCCEEDED =
            T.let(
              :succeeded,
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
            )
          REQUIRES_ACTION =
            T.let(
              :requires_action,
              WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::SetupIntentCanceledWebhookEvent::Data::Status::TaggedSymbol
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
