# typed: strong

module WhopSDK
  module Models
    class CardListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::CardListResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::Models::CardListResponse::Data]) }
      attr_accessor :data

      sig do
        params(
          data: T::Array[WhopSDK::Models::CardListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: T::Array[WhopSDK::Models::CardListResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CardListResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card ID, prefixed `icrd_`.
        sig { returns(String) }
        attr_accessor :id

        # The billing address.
        sig do
          returns(T.nilable(WhopSDK::Models::CardListResponse::Data::Billing))
        end
        attr_reader :billing

        sig do
          params(
            billing:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Billing::OrHash
              )
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
        sig do
          returns(T.nilable(WhopSDK::Models::CardListResponse::Data::Limit))
        end
        attr_reader :limit

        sig do
          params(
            limit:
              T.nilable(WhopSDK::Models::CardListResponse::Data::Limit::OrHash)
          ).void
        end
        attr_writer :limit

        # Card display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          returns(WhopSDK::Models::CardListResponse::Data::Object::TaggedSymbol)
        end
        attr_accessor :object

        # Total spend in the last 30 days, in cents.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :spent_last_month

        # The card status.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_accessor :status

        # The card type.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::CardListResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_accessor :type

        # Cardholder user ID, prefixed `user_`, when assigned.
        sig { returns(T.nilable(String)) }
        attr_accessor :user_id

        # Sensitive card details. Present only on `GET /cards/:card_id` for active cards;
        # `null` when the card is inactive or details cannot be retrieved.
        sig do
          returns(T.nilable(WhopSDK::Models::CardListResponse::Data::Secrets))
        end
        attr_reader :secrets

        sig do
          params(
            secrets:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Secrets::OrHash
              )
          ).void
        end
        attr_writer :secrets

        sig do
          params(
            id: String,
            billing:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Billing::OrHash
              ),
            canceled_at: T.nilable(Time),
            created_at: T.nilable(Time),
            expiration_month: T.nilable(String),
            expiration_year: T.nilable(String),
            last4: T.nilable(String),
            limit:
              T.nilable(WhopSDK::Models::CardListResponse::Data::Limit::OrHash),
            name: T.nilable(String),
            object: WhopSDK::Models::CardListResponse::Data::Object::OrSymbol,
            spent_last_month: T.nilable(Integer),
            status:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Status::OrSymbol
              ),
            type:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Type::OrSymbol
              ),
            user_id: T.nilable(String),
            secrets:
              T.nilable(
                WhopSDK::Models::CardListResponse::Data::Secrets::OrHash
              )
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
          # The card status.
          status:,
          # The card type.
          type:,
          # Cardholder user ID, prefixed `user_`, when assigned.
          user_id:,
          # Sensitive card details. Present only on `GET /cards/:card_id` for active cards;
          # `null` when the card is inactive or details cannot be retrieved.
          secrets: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing:
                T.nilable(WhopSDK::Models::CardListResponse::Data::Billing),
              canceled_at: T.nilable(Time),
              created_at: T.nilable(Time),
              expiration_month: T.nilable(String),
              expiration_year: T.nilable(String),
              last4: T.nilable(String),
              limit: T.nilable(WhopSDK::Models::CardListResponse::Data::Limit),
              name: T.nilable(String),
              object:
                WhopSDK::Models::CardListResponse::Data::Object::TaggedSymbol,
              spent_last_month: T.nilable(Integer),
              status:
                T.nilable(
                  WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
                ),
              type:
                T.nilable(
                  WhopSDK::Models::CardListResponse::Data::Type::TaggedSymbol
                ),
              user_id: T.nilable(String),
              secrets:
                T.nilable(WhopSDK::Models::CardListResponse::Data::Secrets)
            }
          )
        end
        def to_hash
        end

        class Billing < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::CardListResponse::Data::Billing,
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
                WhopSDK::Models::CardListResponse::Data::Limit,
                WhopSDK::Internal::AnyHash
              )
            end

          # The limit amount in dollars.
          sig { returns(Float) }
          attr_accessor :amount

          # Limit window, for example `per24HourPeriod` or `perAuthorization`.
          sig { returns(String) }
          attr_accessor :frequency

          # The spending limit configuration.
          sig do
            params(amount: Float, frequency: String).returns(T.attached_class)
          end
          def self.new(
            # The limit amount in dollars.
            amount:,
            # Limit window, for example `per24HourPeriod` or `perAuthorization`.
            frequency:
          )
          end

          sig { override.returns({ amount: Float, frequency: String }) }
          def to_hash
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Models::CardListResponse::Data::Object)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :card,
              WhopSDK::Models::CardListResponse::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CardListResponse::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The card status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Models::CardListResponse::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
            )
          FROZEN =
            T.let(
              :frozen,
              WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
            )
          INVITED =
            T.let(
              :invited,
              WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CardListResponse::Data::Status::TaggedSymbol
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
              T.all(Symbol, WhopSDK::Models::CardListResponse::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIRTUAL =
            T.let(
              :virtual,
              WhopSDK::Models::CardListResponse::Data::Type::TaggedSymbol
            )
          PHYSICAL =
            T.let(
              :physical,
              WhopSDK::Models::CardListResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::CardListResponse::Data::Type::TaggedSymbol
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
                WhopSDK::Models::CardListResponse::Data::Secrets,
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

          # Sensitive card details. Present only on `GET /cards/:card_id` for active cards;
          # `null` when the card is inactive or details cannot be retrieved.
          sig do
            params(
              card_number: String,
              cvc: String,
              name_on_card: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Full card number.
            card_number:,
            # Card verification code.
            cvc:,
            # Cardholder name printed on the card.
            name_on_card:
          )
          end

          sig do
            override.returns(
              {
                card_number: String,
                cvc: String,
                name_on_card: T.nilable(String)
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
