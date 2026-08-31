# typed: strong

module WhopSDK
  module Models
    class CardFrozenWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardFrozenWebhookEvent, WhopSDK::Internal::AnyHash)
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::CardFrozenWebhookEvent::Data) }
      attr_reader :data

      sig { params(data: WhopSDK::CardFrozenWebhookEvent::Data::OrHash).void }
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::CardFrozenWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"card.frozen"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::CardFrozenWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardFrozenWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card ID, prefixed `icrd_`.
        sig { returns(String) }
        attr_accessor :id

        # The billing address.
        sig do
          returns(T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Billing))
        end
        attr_reader :billing

        sig do
          params(
            billing:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Billing::OrHash)
          ).void
        end
        attr_writer :billing

        # When the card was canceled.
        sig { returns(T.nilable(Time)) }
        attr_accessor :canceled_at

        # When the card was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Card expiration month.
        sig { returns(T.nilable(String)) }
        attr_accessor :expiration_month

        # Card expiration year.
        sig { returns(T.nilable(String)) }
        attr_accessor :expiration_year

        # Last four digits of the card number. `null` for pending invitation cards.
        sig { returns(T.nilable(String)) }
        attr_accessor :last4

        # The spending limit configuration.
        sig { returns(T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Limit)) }
        attr_reader :limit

        sig do
          params(
            limit:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Limit::OrHash)
          ).void
        end
        attr_writer :limit

        # Card display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          returns(WhopSDK::CardFrozenWebhookEvent::Data::Object::TaggedSymbol)
        end
        attr_accessor :object

        # Total spend in the last 30 days, in cents.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :spent_last_month

        # The card status. `denied` means the issuer declined the cardholder, so the card
        # will never be issued.
        sig do
          returns(
            T.nilable(
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # The card type.
        sig do
          returns(
            T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Type::TaggedSymbol)
          )
        end
        attr_accessor :type

        # Cardholder user ID, prefixed `user_`, when assigned.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        # Sensitive card details. Present only on `GET /cards/:id` for active cards;
        # `null` when the card is inactive or details cannot be retrieved.
        sig do
          returns(T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Secrets))
        end
        attr_reader :secrets

        sig do
          params(
            secrets:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Secrets::OrHash)
          ).void
        end
        attr_writer :secrets

        sig do
          params(
            id: String,
            billing:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Billing::OrHash),
            canceled_at: T.nilable(Time),
            created_at: T.nilable(Time),
            expiration_month: T.nilable(String),
            expiration_year: T.nilable(String),
            last4: T.nilable(String),
            limit:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Limit::OrHash),
            name: T.nilable(String),
            object: WhopSDK::CardFrozenWebhookEvent::Data::Object::OrSymbol,
            spent_last_month: T.nilable(Integer),
            status:
              T.nilable(
                WhopSDK::CardFrozenWebhookEvent::Data::Status::OrSymbol
              ),
            type:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Type::OrSymbol),
            user_id: T.nilable(String),
            secrets:
              T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Secrets::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # Card ID, prefixed `icrd_`.
          id:,
          # The billing address.
          billing:,
          # When the card was canceled.
          canceled_at:,
          # When the card was created.
          created_at:,
          # Card expiration month.
          expiration_month:,
          # Card expiration year.
          expiration_year:,
          # Last four digits of the card number. `null` for pending invitation cards.
          last4:,
          # The spending limit configuration.
          limit:,
          # Card display name.
          name:,
          object:,
          # Total spend in the last 30 days, in cents.
          spent_last_month:,
          # The card status. `denied` means the issuer declined the cardholder, so the card
          # will never be issued.
          status:,
          # The card type.
          type:,
          # Cardholder user ID, prefixed `user_`, when assigned.
          user_id:,
          # Sensitive card details. Present only on `GET /cards/:id` for active cards;
          # `null` when the card is inactive or details cannot be retrieved.
          secrets: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing:
                T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Billing),
              canceled_at: T.nilable(Time),
              created_at: T.nilable(Time),
              expiration_month: T.nilable(String),
              expiration_year: T.nilable(String),
              last4: T.nilable(String),
              limit: T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Limit),
              name: T.nilable(String),
              object:
                WhopSDK::CardFrozenWebhookEvent::Data::Object::TaggedSymbol,
              spent_last_month: T.nilable(Integer),
              status:
                T.nilable(
                  WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
                ),
              type:
                T.nilable(
                  WhopSDK::CardFrozenWebhookEvent::Data::Type::TaggedSymbol
                ),
              user_id: T.nilable(String),
              secrets: T.nilable(WhopSDK::CardFrozenWebhookEvent::Data::Secrets)
            }
          )
        end
        def to_hash
        end

        class Billing < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CardFrozenWebhookEvent::Data::Billing,
                WhopSDK::Internal::AnyHash
              )
            end

          # Billing city.
          sig { returns(T.nilable(String)) }
          attr_accessor :city

          # Billing country code.
          sig { returns(T.nilable(String)) }
          attr_accessor :country_code

          # Street address line 1.
          sig { returns(T.nilable(String)) }
          attr_accessor :line1

          # Street address line 2.
          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          # Billing postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code

          # Billing region or state.
          sig { returns(T.nilable(String)) }
          attr_accessor :region

          # The billing address.
          sig do
            params(
              city: T.nilable(String),
              country_code: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              region: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Billing city.
            city:,
            # Billing country code.
            country_code:,
            # Street address line 1.
            line1:,
            # Street address line 2.
            line2:,
            # Billing postal code.
            postal_code:,
            # Billing region or state.
            region:
          )
          end

          sig do
            override.returns(
              {
                city: T.nilable(String),
                country_code: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                region: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Limit < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CardFrozenWebhookEvent::Data::Limit,
                WhopSDK::Internal::AnyHash
              )
            end

          # The limit amount in dollars.
          sig { returns(Float) }
          attr_accessor :amount

          # The window the limit amount applies to. `per_transaction` caps each individual
          # authorization and is what a limit set with `transaction_limit` reports.
          sig do
            returns(
              WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
            )
          end
          attr_accessor :frequency

          # The spending limit configuration.
          sig do
            params(
              amount: Float,
              frequency:
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The limit amount in dollars.
            amount:,
            # The window the limit amount applies to. `per_transaction` caps each individual
            # authorization and is what a limit set with `transaction_limit` reports.
            frequency:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                frequency:
                  WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The window the limit amount applies to. `per_transaction` caps each individual
          # authorization and is what a limit set with `transaction_limit` reports.
          module Frequency
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAILY =
              T.let(
                :daily,
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :weekly,
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              )
            PER_TRANSACTION =
              T.let(
                :per_transaction,
                WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::CardFrozenWebhookEvent::Data::Limit::Frequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CardFrozenWebhookEvent::Data::Object)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :card,
              WhopSDK::CardFrozenWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardFrozenWebhookEvent::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The card status. `denied` means the issuer declined the cardholder, so the card
        # will never be issued.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CardFrozenWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )
          FROZEN =
            T.let(
              :frozen,
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )
          INVITED =
            T.let(
              :invited,
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )
          DENIED =
            T.let(
              :denied,
              WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardFrozenWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The card type.
        module Type
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::CardFrozenWebhookEvent::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIRTUAL =
            T.let(
              :virtual,
              WhopSDK::CardFrozenWebhookEvent::Data::Type::TaggedSymbol
            )
          PHYSICAL =
            T.let(
              :physical,
              WhopSDK::CardFrozenWebhookEvent::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardFrozenWebhookEvent::Data::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Secrets < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CardFrozenWebhookEvent::Data::Secrets,
                WhopSDK::Internal::AnyHash
              )
            end

          # Full card number.
          sig { returns(String) }
          attr_accessor :card_number

          # Card verification code.
          sig { returns(String) }
          attr_accessor :cvc

          # Cardholder name printed on the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :name_on_card

          # The card PIN. Only returned when the request is authenticated as the user the
          # card is assigned to; `null` for all other callers, including account API keys.
          sig { returns(T.nilable(String)) }
          attr_accessor :pin

          # Sensitive card details. Present only on `GET /cards/:id` for active cards;
          # `null` when the card is inactive or details cannot be retrieved.
          sig do
            params(
              card_number: String,
              cvc: String,
              name_on_card: T.nilable(String),
              pin: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Full card number.
            card_number:,
            # Card verification code.
            cvc:,
            # Cardholder name printed on the card.
            name_on_card:,
            # The card PIN. Only returned when the request is authenticated as the user the
            # card is assigned to; `null` for all other callers, including account API keys.
            pin:
          )
          end

          sig do
            override.returns(
              {
                card_number: String,
                cvc: String,
                name_on_card: T.nilable(String),
                pin: T.nilable(String)
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
