# typed: strong

module WhopSDK
  module Models
    # A saved payment method with no type-specific details available.
    module PaymentMethodListResponse
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod,
            WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod,
            WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod,
            WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod,
            WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod,
            WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod
          )
        end

      class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A saved payment method with no type-specific details available.
        sig do
          params(
            id: String,
            created_at: Time,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The typename of this object
          typename: :BasePaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end

      class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The card-specific details for this payment method, including brand, last four
        # digits, and expiration.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::OrHash
          ).void
        end
        attr_writer :card

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Whether this card has the payer identity document required by its payment
        # provider.
        sig { returns(T::Boolean) }
        attr_accessor :has_payer_document

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A saved card payment method, including brand, last four digits, and expiration
        # details.
        sig do
          params(
            id: String,
            card:
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::OrHash,
            created_at: Time,
            has_payer_document: T::Boolean,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The card-specific details for this payment method, including brand, last four
          # digits, and expiration.
          card:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Whether this card has the payer identity document required by its payment
          # provider.
          has_payer_document:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The typename of this object
          typename: :CardPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              card:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card,
              created_at: Time,
              has_payer_document: T::Boolean,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Card < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card,
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

          # Whether the card is past its expiration month. An expired card cannot take a new
          # charge.
          sig { returns(T::Boolean) }
          attr_accessor :expired

          # A stable identifier for the underlying card. Two payment methods with the same
          # fingerprint are the same card. Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :fingerprint

          # The funding types of a card
          sig do
            returns(
              T.nilable(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
              )
            )
          end
          attr_accessor :funding_type

          # The last four digits of the card number. Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # Whether this card was verified with 3D Secure, either when it was saved or on a
          # payment that used it.
          sig { returns(T::Boolean) }
          attr_accessor :three_ds_verified

          # The card-specific details for this payment method, including brand, last four
          # digits, and expiration.
          sig do
            params(
              brand: T.nilable(WhopSDK::CardBrands::OrSymbol),
              exp_month: T.nilable(Integer),
              exp_year: T.nilable(Integer),
              expired: T::Boolean,
              fingerprint: T.nilable(String),
              funding_type:
                T.nilable(
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::OrSymbol
                ),
              last4: T.nilable(String),
              three_ds_verified: T::Boolean
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
            # Whether the card is past its expiration month. An expired card cannot take a new
            # charge.
            expired:,
            # A stable identifier for the underlying card. Two payment methods with the same
            # fingerprint are the same card. Null if not available.
            fingerprint:,
            # The funding types of a card
            funding_type:,
            # The last four digits of the card number. Null if not available.
            last4:,
            # Whether this card was verified with 3D Secure, either when it was saved or on a
            # payment that used it.
            three_ds_verified:
          )
          end

          sig do
            override.returns(
              {
                brand: T.nilable(WhopSDK::CardBrands::TaggedSymbol),
                exp_month: T.nilable(Integer),
                exp_year: T.nilable(Integer),
                expired: T::Boolean,
                fingerprint: T.nilable(String),
                funding_type:
                  T.nilable(
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
                  ),
                last4: T.nilable(String),
                three_ds_verified: T::Boolean
              }
            )
          end
          def to_hash
          end

          # The funding types of a card
          module FundingType
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
              )
            PREPAID =
              T.let(
                :prepaid,
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card::FundingType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end

      class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The bank account-specific details for this payment method, including bank name
        # and last four digits.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount
          )
        end
        attr_reader :us_bank_account

        sig do
          params(
            us_bank_account:
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount::OrHash
          ).void
        end
        attr_writer :us_bank_account

        # A saved US bank account payment method, including bank name, last four digits,
        # and account type.
        sig do
          params(
            id: String,
            created_at: Time,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            us_bank_account:
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount::OrHash,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The bank account-specific details for this payment method, including bank name
          # and last four digits.
          us_bank_account:,
          # The typename of this object
          typename: :UsBankAccountPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol,
              us_bank_account:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount
            }
          )
        end
        def to_hash
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class UsBankAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount,
                WhopSDK::Internal::AnyHash
              )
            end

          # The type of bank account (e.g., checking, savings).
          sig { returns(String) }
          attr_accessor :account_type

          # The name of the financial institution holding the account.
          sig { returns(String) }
          attr_accessor :bank_name

          # The last four digits of the bank account number.
          sig { returns(String) }
          attr_accessor :last4

          # The bank account-specific details for this payment method, including bank name
          # and last four digits.
          sig do
            params(
              account_type: String,
              bank_name: String,
              last4: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of bank account (e.g., checking, savings).
            account_type:,
            # The name of the financial institution holding the account.
            bank_name:,
            # The last four digits of the bank account number.
            last4:
          )
          end

          sig do
            override.returns(
              { account_type: String, bank_name: String, last4: String }
            )
          end
          def to_hash
          end
        end
      end

      class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The Cash App-specific details for this payment method, including cashtag and
        # buyer ID.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp
          )
        end
        attr_reader :cashapp

        sig do
          params(
            cashapp:
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp::OrHash
          ).void
        end
        attr_writer :cashapp

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A saved Cash App payment method, including the buyer's cashtag and unique
        # identifier.
        sig do
          params(
            id: String,
            cashapp:
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp::OrHash,
            created_at: Time,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The Cash App-specific details for this payment method, including cashtag and
          # buyer ID.
          cashapp:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The typename of this object
          typename: :CashappPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cashapp:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp,
              created_at: Time,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Cashapp < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique and immutable identifier assigned by Cash App to the buyer. Null if
          # not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :buyer_id

          # The public cashtag handle of the buyer on Cash App. Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :cashtag

          # The Cash App-specific details for this payment method, including cashtag and
          # buyer ID.
          sig do
            params(
              buyer_id: T.nilable(String),
              cashtag: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique and immutable identifier assigned by Cash App to the buyer. Null if
            # not available.
            buyer_id:,
            # The public cashtag handle of the buyer on Cash App. Null if not available.
            cashtag:
          )
          end

          sig do
            override.returns(
              { buyer_id: T.nilable(String), cashtag: T.nilable(String) }
            )
          end
          def to_hash
          end
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end

      class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The iDEAL-specific details for this payment method, including bank name and BIC.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal
          )
        end
        attr_reader :ideal

        sig do
          params(
            ideal:
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal::OrHash
          ).void
        end
        attr_writer :ideal

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A saved iDEAL payment method, including the customer's bank name and BIC code.
        sig do
          params(
            id: String,
            created_at: Time,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::OrHash,
            ideal:
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The iDEAL-specific details for this payment method, including bank name and BIC.
          ideal:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The typename of this object
          typename: :IdealPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons,
              ideal:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Ideal < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal,
                WhopSDK::Internal::AnyHash
              )
            end

          # The name of the customer's bank used for the iDEAL transaction. Null if not
          # available.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank

          # The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
          # available.
          sig { returns(T.nilable(String)) }
          attr_accessor :bic

          # The iDEAL-specific details for this payment method, including bank name and BIC.
          sig do
            params(bank: T.nilable(String), bic: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # The name of the customer's bank used for the iDEAL transaction. Null if not
            # available.
            bank:,
            # The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
            # available.
            bic:
          )
          end

          sig do
            override.returns(
              { bank: T.nilable(String), bic: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # The time of the event in ISO 8601 UTC format with millisecond precision
        sig { returns(Time) }
        attr_accessor :created_at

        # Every rendition of the icon to display this payment method with. A saved card
        # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        # art.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons
          )
        end
        attr_reader :icons

        sig do
          params(
            icons:
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # The type of payment instrument stored on file (e.g., card, us_bank_account,
        # cashapp, ideal, sepa_debit).
        sig { returns(WhopSDK::PaymentMethodTypes::TaggedSymbol) }
        attr_accessor :payment_method_type

        # The SEPA Direct Debit-specific details for this payment method, including bank
        # code and last four IBAN digits.
        sig do
          returns(
            WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit
          )
        end
        attr_reader :sepa_debit

        sig do
          params(
            sepa_debit:
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit::OrHash
          ).void
        end
        attr_writer :sepa_debit

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # A saved SEPA Direct Debit payment method, including the bank code, country, and
        # last four IBAN digits.
        sig do
          params(
            id: String,
            created_at: Time,
            icons:
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::OrHash,
            payment_method_type: WhopSDK::PaymentMethodTypes::OrSymbol,
            sepa_debit:
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit::OrHash,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The time of the event in ISO 8601 UTC format with millisecond precision
          created_at:,
          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          icons:,
          # The type of payment instrument stored on file (e.g., card, us_bank_account,
          # cashapp, ideal, sepa_debit).
          payment_method_type:,
          # The SEPA Direct Debit-specific details for this payment method, including bank
          # code and last four IBAN digits.
          sepa_debit:,
          # The typename of this object
          typename: :SepaDebitPaymentMethod
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              icons:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons,
              payment_method_type: WhopSDK::PaymentMethodTypes::TaggedSymbol,
              sepa_debit:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(
              WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square
            )
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # Every rendition of the icon to display this payment method with. A saved card
          # carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          # art.
          sig do
            params(
              card:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::OrHash,
              square:
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The credit-card-proportioned tile (48x30).
            card:,
            # The square tile (32x32).
            square:
          )
          end

          sig do
            override.returns(
              {
                card:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card,
                square:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Card::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Square < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Light::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The colorway for dark surfaces.
              dark:,
              # The colorway for light surfaces.
              light:
            )
            end

            sig do
              override.returns(
                {
                  dark:
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Dark,
                  light:
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Dark,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for dark surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end

            class Light < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons::Square::Light,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Raster fallback at the shape's native size.
              sig { returns(String) }
              attr_accessor :png_1x

              # Raster fallback at double density.
              sig { returns(String) }
              attr_accessor :png_2x

              # Raster fallback at quadruple density.
              sig { returns(String) }
              attr_accessor :png_4x

              # The vector file. Prefer this everywhere SVG renders.
              sig { returns(String) }
              attr_accessor :svg

              # The colorway for light surfaces.
              sig do
                params(
                  png_1x: String,
                  png_2x: String,
                  png_4x: String,
                  svg: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Raster fallback at the shape's native size.
                png_1x:,
                # Raster fallback at double density.
                png_2x:,
                # Raster fallback at quadruple density.
                png_4x:,
                # The vector file. Prefer this everywhere SVG renders.
                svg:
              )
              end

              sig do
                override.returns(
                  {
                    png_1x: String,
                    png_2x: String,
                    png_4x: String,
                    svg: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class SepaDebit < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit,
                WhopSDK::Internal::AnyHash
              )
            end

          # The bank code of the financial institution associated with this SEPA account.
          # Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :bank_code

          # The branch code of the financial institution associated with this SEPA account.
          # Null if not available.
          sig { returns(T.nilable(String)) }
          attr_accessor :branch_code

          # The two-letter ISO country code where the bank account is located. Null if not
          # available.
          sig { returns(T.nilable(String)) }
          attr_accessor :country

          # The last four digits of the IBAN associated with this SEPA account. Null if not
          # available.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # The SEPA Direct Debit-specific details for this payment method, including bank
          # code and last four IBAN digits.
          sig do
            params(
              bank_code: T.nilable(String),
              branch_code: T.nilable(String),
              country: T.nilable(String),
              last4: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The bank code of the financial institution associated with this SEPA account.
            # Null if not available.
            bank_code:,
            # The branch code of the financial institution associated with this SEPA account.
            # Null if not available.
            branch_code:,
            # The two-letter ISO country code where the bank account is located. Null if not
            # available.
            country:,
            # The last four digits of the IBAN associated with this SEPA account. Null if not
            # available.
            last4:
          )
          end

          sig do
            override.returns(
              {
                bank_code: T.nilable(String),
                branch_code: T.nilable(String),
                country: T.nilable(String),
                last4: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          T::Array[WhopSDK::Models::PaymentMethodListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
