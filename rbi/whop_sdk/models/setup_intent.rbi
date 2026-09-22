# typed: strong

module WhopSDK
  module Models
    class SetupIntent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::SetupIntent, WhopSDK::Internal::AnyHash) }

      # Setup intent ID, prefixed `sint_`.
      sig { returns(String) }
      attr_accessor :id

      # The account the payment method is saved for, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # The checkout configuration this setup was created through, prefixed `ch_`. Null
      # for a setup created through this API rather than a hosted checkout.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_configuration_id

      # The credential a buyer's surface presents to poll this setup and set its return
      # URL — hand it to the elements' `handleNextAction`. Only on setups created
      # through this API, and always null in list responses — retrieve the setup intent
      # for it.
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # When the setup intent was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Why the setup ended where it did, or `null` when nothing has failed. Present on
      # `canceled` — a buyer who abandoned carries no code, one refused by the provider
      # does. Dropped once the setup succeeds.
      sig { returns(T.nilable(WhopSDK::SetupIntent::LastSetupError)) }
      attr_reader :last_setup_error

      sig do
        params(
          last_setup_error:
            T.nilable(WhopSDK::SetupIntent::LastSetupError::OrHash)
        ).void
      end
      attr_writer :last_setup_error

      # The buyer's member record on the account, prefixed `mber_`. Null without the
      # member:basic:read permission, unless the caller is the buyer.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # Your own key-value data attached when the setup intent was created.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The method behind this setup shaped for display: a buyer-facing name, the
      # standard icon set, and the card's brand, last four, issuer identification
      # number, and expiry when it was a card. Null until a method was collected.
      sig { returns(T.nilable(WhopSDK::SetupIntent::PaymentInstrument)) }
      attr_reader :payment_instrument

      sig do
        params(
          payment_instrument:
            T.nilable(WhopSDK::SetupIntent::PaymentInstrument::OrHash)
        ).void
      end
      attr_writer :payment_instrument

      # The saved payment method, prefixed `payt_`, ready to charge with Create Payment.
      # Null until the setup has `succeeded`.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # The different types of payment methods that can be used.
      sig { returns(T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol)) }
      attr_accessor :payment_method_type

      # Where the buyer lands after completing an off-site step, or `null` to leave them
      # where they are.
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # How far the setup has got. **A 201 or 200 means we answered, not that the method
      # was saved — always branch on this.** `requires_action` — the buyer has a step
      # outstanding; hand `client_secret` to the elements or poll Retrieve setup status.
      # `processing` — the processor is deciding. `succeeded` — the method is saved, and
      # only this one means saved. `canceled` — abandoned or refused; see
      # `last_setup_error`.
      sig { returns(WhopSDK::SetupIntent::Status::TaggedSymbol) }
      attr_accessor :status

      # True when the buyer completed 3D Secure while saving this payment method.
      sig { returns(T::Boolean) }
      attr_accessor :three_ds_verified

      # When the setup intent was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # The user saving the payment method. Null when the buyer is a company rather than
      # a user.
      sig { returns(T.nilable(WhopSDK::SetupIntent::User)) }
      attr_reader :user

      sig { params(user: T.nilable(WhopSDK::SetupIntent::User::OrHash)).void }
      attr_writer :user

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          checkout_configuration_id: T.nilable(String),
          client_secret: T.nilable(String),
          created_at: String,
          last_setup_error:
            T.nilable(WhopSDK::SetupIntent::LastSetupError::OrHash),
          member_id: T.nilable(String),
          metadata: T.nilable(T.anything),
          payment_instrument:
            T.nilable(WhopSDK::SetupIntent::PaymentInstrument::OrHash),
          payment_method_id: T.nilable(String),
          payment_method_type: T.nilable(WhopSDK::PaymentMethodTypes::OrSymbol),
          return_url: T.nilable(String),
          status: WhopSDK::SetupIntent::Status::OrSymbol,
          three_ds_verified: T::Boolean,
          updated_at: String,
          user: T.nilable(WhopSDK::SetupIntent::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Setup intent ID, prefixed `sint_`.
        id:,
        # The account the payment method is saved for, prefixed `biz_`.
        account_id:,
        # The checkout configuration this setup was created through, prefixed `ch_`. Null
        # for a setup created through this API rather than a hosted checkout.
        checkout_configuration_id:,
        # The credential a buyer's surface presents to poll this setup and set its return
        # URL — hand it to the elements' `handleNextAction`. Only on setups created
        # through this API, and always null in list responses — retrieve the setup intent
        # for it.
        client_secret:,
        # When the setup intent was created, as an ISO 8601 timestamp.
        created_at:,
        # Why the setup ended where it did, or `null` when nothing has failed. Present on
        # `canceled` — a buyer who abandoned carries no code, one refused by the provider
        # does. Dropped once the setup succeeds.
        last_setup_error:,
        # The buyer's member record on the account, prefixed `mber_`. Null without the
        # member:basic:read permission, unless the caller is the buyer.
        member_id:,
        # Your own key-value data attached when the setup intent was created.
        metadata:,
        # The method behind this setup shaped for display: a buyer-facing name, the
        # standard icon set, and the card's brand, last four, issuer identification
        # number, and expiry when it was a card. Null until a method was collected.
        payment_instrument:,
        # The saved payment method, prefixed `payt_`, ready to charge with Create Payment.
        # Null until the setup has `succeeded`.
        payment_method_id:,
        # The different types of payment methods that can be used.
        payment_method_type:,
        # Where the buyer lands after completing an off-site step, or `null` to leave them
        # where they are.
        return_url:,
        # How far the setup has got. **A 201 or 200 means we answered, not that the method
        # was saved — always branch on this.** `requires_action` — the buyer has a step
        # outstanding; hand `client_secret` to the elements or poll Retrieve setup status.
        # `processing` — the processor is deciding. `succeeded` — the method is saved, and
        # only this one means saved. `canceled` — abandoned or refused; see
        # `last_setup_error`.
        status:,
        # True when the buyer completed 3D Secure while saving this payment method.
        three_ds_verified:,
        # When the setup intent was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # The user saving the payment method. Null when the buyer is a company rather than
        # a user.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            checkout_configuration_id: T.nilable(String),
            client_secret: T.nilable(String),
            created_at: String,
            last_setup_error: T.nilable(WhopSDK::SetupIntent::LastSetupError),
            member_id: T.nilable(String),
            metadata: T.nilable(T.anything),
            payment_instrument:
              T.nilable(WhopSDK::SetupIntent::PaymentInstrument),
            payment_method_id: T.nilable(String),
            payment_method_type:
              T.nilable(WhopSDK::PaymentMethodTypes::TaggedSymbol),
            return_url: T.nilable(String),
            status: WhopSDK::SetupIntent::Status::TaggedSymbol,
            three_ds_verified: T::Boolean,
            updated_at: String,
            user: T.nilable(WhopSDK::SetupIntent::User)
          }
        )
      end
      def to_hash
      end

      class LastSetupError < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::SetupIntent::LastSetupError,
              WhopSDK::Internal::AnyHash
            )
          end

        # A machine-readable classification of the failure, e.g. `enrollment_declined`.
        # Absent when the buyer simply abandoned the setup.
        sig { returns(T.nilable(String)) }
        attr_accessor :code

        # A human-readable explanation of the failure.
        sig { returns(T.nilable(String)) }
        attr_accessor :message

        # Why the setup ended where it did, or `null` when nothing has failed. Present on
        # `canceled` — a buyer who abandoned carries no code, one refused by the provider
        # does. Dropped once the setup succeeds.
        sig do
          params(code: T.nilable(String), message: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # A machine-readable classification of the failure, e.g. `enrollment_declined`.
          # Absent when the buyer simply abandoned the setup.
          code:,
          # A human-readable explanation of the failure.
          message:
        )
        end

        sig do
          override.returns(
            { code: T.nilable(String), message: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::SetupIntent::PaymentInstrument,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card payments only: the card's network, last four, and issuer identification
        # number.
        sig do
          returns(T.nilable(WhopSDK::SetupIntent::PaymentInstrument::Card))
        end
        attr_reader :card

        sig do
          params(
            card:
              T.nilable(WhopSDK::SetupIntent::PaymentInstrument::Card::OrHash)
          ).void
        end
        attr_writer :card

        # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        # method's own name ("Klarna").
        sig { returns(String) }
        attr_accessor :display_name

        # The standard icon set: square and card shapes, each in light and dark colorways.
        sig { returns(WhopSDK::SetupIntent::PaymentInstrument::Icons) }
        attr_reader :icons

        sig do
          params(
            icons: WhopSDK::SetupIntent::PaymentInstrument::Icons::OrHash
          ).void
        end
        attr_writer :icons

        # Installment methods only: how many payments the charge splits into. Data, not
        # copy — compose and translate the label client-side.
        sig { returns(T.nilable(Float)) }
        attr_accessor :installment_count

        # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
        sig { returns(String) }
        attr_accessor :payment_method_type

        # The method behind this setup shaped for display: a buyer-facing name, the
        # standard icon set, and the card's brand, last four, issuer identification
        # number, and expiry when it was a card. Null until a method was collected.
        sig do
          params(
            card:
              T.nilable(WhopSDK::SetupIntent::PaymentInstrument::Card::OrHash),
            display_name: String,
            icons: WhopSDK::SetupIntent::PaymentInstrument::Icons::OrHash,
            installment_count: T.nilable(Float),
            payment_method_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Card payments only: the card's network, last four, and issuer identification
          # number.
          card:,
          # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          # method's own name ("Klarna").
          display_name:,
          # The standard icon set: square and card shapes, each in light and dark colorways.
          icons:,
          # Installment methods only: how many payments the charge splits into. Data, not
          # copy — compose and translate the label client-side.
          installment_count:,
          # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          payment_method_type:
        )
        end

        sig do
          override.returns(
            {
              card: T.nilable(WhopSDK::SetupIntent::PaymentInstrument::Card),
              display_name: String,
              icons: WhopSDK::SetupIntent::PaymentInstrument::Icons,
              installment_count: T.nilable(Float),
              payment_method_type: String
            }
          )
        end
        def to_hash
        end

        class Card < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntent::PaymentInstrument::Card,
                WhopSDK::Internal::AnyHash
              )
            end

          # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
          # saved card payment methods. Null when the vault did not record the network.
          sig { returns(T.nilable(String)) }
          attr_accessor :brand

          # The card's expiry month, 1 to 12. Null when the vault did not record it.
          sig { returns(T.nilable(Float)) }
          attr_accessor :exp_month

          # The card's four-digit expiry year. Null when the vault did not record it.
          sig { returns(T.nilable(Float)) }
          attr_accessor :exp_year

          # The issuer identification number, also called the BIN: the card's leading six or
          # eight digits, which identify the issuing bank. Null when the processor did not
          # report it.
          sig { returns(T.nilable(String)) }
          attr_accessor :issuer_identification_number

          # The card's last four digits, when captured.
          sig { returns(T.nilable(String)) }
          attr_accessor :last4

          # Card payments only: the card's network, last four, and issuer identification
          # number.
          sig do
            params(
              brand: T.nilable(String),
              exp_month: T.nilable(Float),
              exp_year: T.nilable(Float),
              issuer_identification_number: T.nilable(String),
              last4: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
            # saved card payment methods. Null when the vault did not record the network.
            brand:,
            # The card's expiry month, 1 to 12. Null when the vault did not record it.
            exp_month:,
            # The card's four-digit expiry year. Null when the vault did not record it.
            exp_year:,
            # The issuer identification number, also called the BIN: the card's leading six or
            # eight digits, which identify the issuing bank. Null when the processor did not
            # report it.
            issuer_identification_number:,
            # The card's last four digits, when captured.
            last4:
          )
          end

          sig do
            override.returns(
              {
                brand: T.nilable(String),
                exp_month: T.nilable(Float),
                exp_year: T.nilable(Float),
                issuer_identification_number: T.nilable(String),
                last4: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Icons < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntent::PaymentInstrument::Icons,
                WhopSDK::Internal::AnyHash
              )
            end

          # The credit-card-proportioned tile (48x30).
          sig { returns(WhopSDK::SetupIntent::PaymentInstrument::Icons::Card) }
          attr_reader :card

          sig do
            params(
              card: WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::OrHash
            ).void
          end
          attr_writer :card

          # The square tile (32x32).
          sig do
            returns(WhopSDK::SetupIntent::PaymentInstrument::Icons::Square)
          end
          attr_reader :square

          sig do
            params(
              square:
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::OrHash
            ).void
          end
          attr_writer :square

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig do
            params(
              card:
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::OrHash,
              square:
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::OrHash
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
                card: WhopSDK::SetupIntent::PaymentInstrument::Icons::Card,
                square: WhopSDK::SetupIntent::PaymentInstrument::Icons::Square
              }
            )
          end
          def to_hash
          end

          class Card < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Card,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light::OrHash
              ).void
            end
            attr_writer :light

            # The credit-card-proportioned tile (48x30).
            sig do
              params(
                dark:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark::OrHash,
                light:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light::OrHash
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
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark,
                  light:
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark,
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
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light,
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
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Square,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The colorway for dark surfaces.
            sig do
              returns(
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark
              )
            end
            attr_reader :dark

            sig do
              params(
                dark:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark::OrHash
              ).void
            end
            attr_writer :dark

            # The colorway for light surfaces.
            sig do
              returns(
                WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light
              )
            end
            attr_reader :light

            sig do
              params(
                light:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light::OrHash
              ).void
            end
            attr_writer :light

            # The square tile (32x32).
            sig do
              params(
                dark:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark::OrHash,
                light:
                  WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light::OrHash
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
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark,
                  light:
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light
                }
              )
            end
            def to_hash
            end

            class Dark < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark,
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
                    WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light,
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

      # How far the setup has got. **A 201 or 200 means we answered, not that the method
      # was saved — always branch on this.** `requires_action` — the buyer has a step
      # outstanding; hand `client_secret` to the elements or poll Retrieve setup status.
      # `processing` — the processor is deciding. `succeeded` — the method is saved, and
      # only this one means saved. `canceled` — abandoned or refused; see
      # `last_setup_error`.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::SetupIntent::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(:processing, WhopSDK::SetupIntent::Status::TaggedSymbol)
        SUCCEEDED =
          T.let(:succeeded, WhopSDK::SetupIntent::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, WhopSDK::SetupIntent::Status::TaggedSymbol)
        REQUIRES_ACTION =
          T.let(:requires_action, WhopSDK::SetupIntent::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::SetupIntent::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::SetupIntent::User, WhopSDK::Internal::AnyHash)
          end

        # User ID, prefixed `user_`.
        sig { returns(String) }
        attr_accessor :id

        # Display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        sig { returns(WhopSDK::SetupIntent::User::ProfilePicture) }
        attr_reader :profile_picture

        sig do
          params(
            profile_picture: WhopSDK::SetupIntent::User::ProfilePicture::OrHash
          ).void
        end
        attr_writer :profile_picture

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # The user saving the payment method. Null when the buyer is a company rather than
        # a user.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            profile_picture: WhopSDK::SetupIntent::User::ProfilePicture::OrHash,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # User ID, prefixed `user_`.
          id:,
          # Display name.
          name:,
          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          profile_picture:,
          # Public username.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              profile_picture: WhopSDK::SetupIntent::User::ProfilePicture,
              username: String
            }
          )
        end
        def to_hash
        end

        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::SetupIntent::User::ProfilePicture,
                WhopSDK::Internal::AnyHash
              )
            end

          # Avatar image URL. Always present — a generated placeholder when the user set no
          # picture.
          sig { returns(String) }
          attr_accessor :url

          # Avatar wrapper; its `url` is always present, using a generated placeholder when
          # the user set no picture.
          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # Avatar image URL. Always present — a generated placeholder when the user set no
            # picture.
            url:
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
