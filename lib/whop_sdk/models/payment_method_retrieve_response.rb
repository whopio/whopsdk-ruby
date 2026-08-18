# frozen_string_literal: true

module WhopSDK
  module Models
    # A saved payment method with no type-specific details available.
    #
    # @see WhopSDK::Resources::PaymentMethods#retrieve
    module PaymentMethodRetrieveResponse
      extend WhopSDK::Internal::Type::Union

      discriminator :typename

      # A saved payment method with no type-specific details available.
      variant :BasePaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod }

      # A saved card payment method, including brand, last four digits, and expiration details.
      variant :CardPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod }

      # A saved US bank account payment method, including bank name, last four digits, and account type.
      variant :UsBankAccountPaymentMethod,
              -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod }

      # A saved Cash App payment method, including the buyer's cashtag and unique identifier.
      variant :CashappPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod }

      # A saved iDEAL payment method, including the customer's bank name and BIC code.
      variant :IdealPaymentMethod, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod }

      # A saved SEPA Direct Debit payment method, including the bank code, country, and last four IBAN digits.
      variant :SepaDebitPaymentMethod,
              -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod }

      # The buyer's Whop balance, offered as a payment method. Charged by naming its ledger id on a `saved` confirmation token — it is a live wallet, not a stored credential, so it cannot be vaulted or charged off-session.
      variant :PlatformBalancePaymentMethod,
              -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod }

      class BasePaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :BasePaymentMethod]
        required :typename, const: :BasePaymentMethod

        # @!method initialize(id:, created_at:, icons:, payment_method_type:, typename: :BasePaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod} for more
        #   details.
        #
        #   A saved payment method with no type-specific details available.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param typename [Symbol, :BasePaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card]
          required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square]
          required :square, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end
      end

      class CardPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute card
        #   The card-specific details for this payment method, including brand, last four
        #   digits, and expiration.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card]
        required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card }

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute has_payer_document
        #   Whether this card has the payer identity document required by its payment
        #   provider.
        #
        #   @return [Boolean]
        required :has_payer_document, WhopSDK::Internal::Type::Boolean

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :CardPaymentMethod]
        required :typename, const: :CardPaymentMethod

        # @!method initialize(id:, card:, created_at:, has_payer_document:, icons:, payment_method_type:, typename: :CardPaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod} for more
        #   details.
        #
        #   A saved card payment method, including brand, last four digits, and expiration
        #   details.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card] The card-specific details for this payment method, including brand, last four di
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param has_payer_document [Boolean] Whether this card has the payer identity document required by its payment provid
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param typename [Symbol, :CardPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   Possible card brands that a payment token can have
          #
          #   @return [Symbol, WhopSDK::Models::CardBrands, nil]
          required :brand, enum: -> { WhopSDK::CardBrands }, nil?: true

          # @!attribute exp_month
          #   The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @return [Integer, nil]
          required :exp_month, Integer, nil?: true

          # @!attribute exp_year
          #   The two-digit expiration year of the card (e.g., 27 for 2027). Null if not
          #   available.
          #
          #   @return [Integer, nil]
          required :exp_year, Integer, nil?: true

          # @!attribute last4
          #   The last four digits of the card number. Null if not available.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!attribute three_ds_verified
          #   Whether this card was verified with 3D Secure, either when it was saved or on a
          #   payment that used it.
          #
          #   @return [Boolean]
          required :three_ds_verified, WhopSDK::Internal::Type::Boolean

          # @!method initialize(brand:, exp_month:, exp_year:, last4:, three_ds_verified:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card} for
          #   more details.
          #
          #   The card-specific details for this payment method, including brand, last four
          #   digits, and expiration.
          #
          #   @param brand [Symbol, WhopSDK::Models::CardBrands, nil] Possible card brands that a payment token can have
          #
          #   @param exp_month [Integer, nil] The two-digit expiration month of the card (1-12). Null if not available.
          #
          #   @param exp_year [Integer, nil] The two-digit expiration year of the card (e.g., 27 for 2027). Null if not avail
          #
          #   @param last4 [String, nil] The last four digits of the card number. Null if not available.
          #
          #   @param three_ds_verified [Boolean] Whether this card was verified with 3D Secure, either when it was saved or on a
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card]
          required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square]
          required :square, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end
      end

      class UsBankAccountPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :UsBankAccountPaymentMethod]
        required :typename, const: :UsBankAccountPaymentMethod

        # @!attribute us_bank_account
        #   The bank account-specific details for this payment method, including bank name
        #   and last four digits.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount]
        required :us_bank_account,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount }

        # @!method initialize(id:, created_at:, icons:, payment_method_type:, us_bank_account:, typename: :UsBankAccountPaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod} for
        #   more details.
        #
        #   A saved US bank account payment method, including bank name, last four digits,
        #   and account type.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param us_bank_account [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount] The bank account-specific details for this payment method, including bank name a
        #
        #   @param typename [Symbol, :UsBankAccountPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card]
          required :card,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square]
          required :square,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod#us_bank_account
        class UsBankAccount < WhopSDK::Internal::Type::BaseModel
          # @!attribute account_type
          #   The type of bank account (e.g., checking, savings).
          #
          #   @return [String]
          required :account_type, String

          # @!attribute bank_name
          #   The name of the financial institution holding the account.
          #
          #   @return [String]
          required :bank_name, String

          # @!attribute last4
          #   The last four digits of the bank account number.
          #
          #   @return [String]
          required :last4, String

          # @!method initialize(account_type:, bank_name:, last4:)
          #   The bank account-specific details for this payment method, including bank name
          #   and last four digits.
          #
          #   @param account_type [String] The type of bank account (e.g., checking, savings).
          #
          #   @param bank_name [String] The name of the financial institution holding the account.
          #
          #   @param last4 [String] The last four digits of the bank account number.
        end
      end

      class CashappPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute cashapp
        #   The Cash App-specific details for this payment method, including cashtag and
        #   buyer ID.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp]
        required :cashapp, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp }

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :CashappPaymentMethod]
        required :typename, const: :CashappPaymentMethod

        # @!method initialize(id:, cashapp:, created_at:, icons:, payment_method_type:, typename: :CashappPaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod} for more
        #   details.
        #
        #   A saved Cash App payment method, including the buyer's cashtag and unique
        #   identifier.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param cashapp [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp] The Cash App-specific details for this payment method, including cashtag and buy
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param typename [Symbol, :CashappPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod#cashapp
        class Cashapp < WhopSDK::Internal::Type::BaseModel
          # @!attribute buyer_id
          #   The unique and immutable identifier assigned by Cash App to the buyer. Null if
          #   not available.
          #
          #   @return [String, nil]
          required :buyer_id, String, nil?: true

          # @!attribute cashtag
          #   The public cashtag handle of the buyer on Cash App. Null if not available.
          #
          #   @return [String, nil]
          required :cashtag, String, nil?: true

          # @!method initialize(buyer_id:, cashtag:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp}
          #   for more details.
          #
          #   The Cash App-specific details for this payment method, including cashtag and
          #   buyer ID.
          #
          #   @param buyer_id [String, nil] The unique and immutable identifier assigned by Cash App to the buyer. Null if n
          #
          #   @param cashtag [String, nil] The public cashtag handle of the buyer on Cash App. Null if not available.
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card]
          required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square]
          required :square,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end
      end

      class IdealPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons }

        # @!attribute ideal
        #   The iDEAL-specific details for this payment method, including bank name and BIC.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal]
        required :ideal, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :IdealPaymentMethod]
        required :typename, const: :IdealPaymentMethod

        # @!method initialize(id:, created_at:, icons:, ideal:, payment_method_type:, typename: :IdealPaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod} for more
        #   details.
        #
        #   A saved iDEAL payment method, including the customer's bank name and BIC code.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param ideal [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal] The iDEAL-specific details for this payment method, including bank name and BIC.
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param typename [Symbol, :IdealPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card]
          required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square]
          required :square, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod#ideal
        class Ideal < WhopSDK::Internal::Type::BaseModel
          # @!attribute bank
          #   The name of the customer's bank used for the iDEAL transaction. Null if not
          #   available.
          #
          #   @return [String, nil]
          required :bank, String, nil?: true

          # @!attribute bic
          #   The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not
          #   available.
          #
          #   @return [String, nil]
          required :bic, String, nil?: true

          # @!method initialize(bank:, bic:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal} for
          #   more details.
          #
          #   The iDEAL-specific details for this payment method, including bank name and BIC.
          #
          #   @param bank [String, nil] The name of the customer's bank used for the iDEAL transaction. Null if not avai
          #
          #   @param bic [String, nil] The Bank Identifier Code (BIC/SWIFT) of the customer's bank. Null if not availab
        end
      end

      class SepaDebitPaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons]
        required :icons, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute sepa_debit
        #   The SEPA Direct Debit-specific details for this payment method, including bank
        #   code and last four IBAN digits.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit]
        required :sepa_debit,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :SepaDebitPaymentMethod]
        required :typename, const: :SepaDebitPaymentMethod

        # @!method initialize(id:, created_at:, icons:, payment_method_type:, sepa_debit:, typename: :SepaDebitPaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod} for
        #   more details.
        #
        #   A saved SEPA Direct Debit payment method, including the bank code, country, and
        #   last four IBAN digits.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param sepa_debit [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit] The SEPA Direct Debit-specific details for this payment method, including bank c
        #
        #   @param typename [Symbol, :SepaDebitPaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card]
          required :card, -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square]
          required :square,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod#sepa_debit
        class SepaDebit < WhopSDK::Internal::Type::BaseModel
          # @!attribute bank_code
          #   The bank code of the financial institution associated with this SEPA account.
          #   Null if not available.
          #
          #   @return [String, nil]
          required :bank_code, String, nil?: true

          # @!attribute branch_code
          #   The branch code of the financial institution associated with this SEPA account.
          #   Null if not available.
          #
          #   @return [String, nil]
          required :branch_code, String, nil?: true

          # @!attribute country
          #   The two-letter ISO country code where the bank account is located. Null if not
          #   available.
          #
          #   @return [String, nil]
          required :country, String, nil?: true

          # @!attribute last4
          #   The last four digits of the IBAN associated with this SEPA account. Null if not
          #   available.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(bank_code:, branch_code:, country:, last4:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit}
          #   for more details.
          #
          #   The SEPA Direct Debit-specific details for this payment method, including bank
          #   code and last four IBAN digits.
          #
          #   @param bank_code [String, nil] The bank code of the financial institution associated with this SEPA account. Nu
          #
          #   @param branch_code [String, nil] The branch code of the financial institution associated with this SEPA account.
          #
          #   @param country [String, nil] The two-letter ISO country code where the bank account is located. Null if not a
          #
          #   @param last4 [String, nil] The last four digits of the IBAN associated with this SEPA account. Null if not
        end
      end

      class PlatformBalancePaymentMethod < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute icons
        #   Every rendition of the icon to display this payment method with. A saved card
        #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
        #   art.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons]
        required :icons,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons }

        # @!attribute payment_method_type
        #   The type of payment instrument stored on file (e.g., card, us_bank_account,
        #   cashapp, ideal, sepa_debit).
        #
        #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes]
        required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }

        # @!attribute platform_balance
        #   What is available to spend, and whether the account may spend it.
        #
        #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance]
        required :platform_balance,
                 -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance }

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :PlatformBalancePaymentMethod]
        required :typename, const: :PlatformBalancePaymentMethod

        # @!method initialize(id:, created_at:, icons:, payment_method_type:, platform_balance:, typename: :PlatformBalancePaymentMethod)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod}
        #   for more details.
        #
        #   The buyer's Whop balance, offered as a payment method. Charged by naming its
        #   ledger id on a `saved` confirmation token — it is a live wallet, not a stored
        #   credential, so it cannot be vaulted or charged off-session.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param created_at [Time] The time of the event in ISO 8601 UTC format with millisecond precision
        #
        #   @param icons [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons] Every rendition of the icon to display this payment method with. A saved card ca
        #
        #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes] The type of payment instrument stored on file (e.g., card, us_bank_account, cash
        #
        #   @param platform_balance [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance] What is available to spend, and whether the account may spend it.
        #
        #   @param typename [Symbol, :PlatformBalancePaymentMethod] The typename of this object

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card]
          required :card,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square]
          required :square,
                   -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square }

          # @!method initialize(card:, square:)
          #   Every rendition of the icon to display this payment method with. A saved card
          #   carries its brand's icon (Visa, Mastercard, ...) rather than the generic card
          #   art.
          #
          #   @param card [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Card#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end

          # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Dark]
            required :dark,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Light]
            required :light,
                     -> { WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square#dark
            class Dark < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for dark surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end

            # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons::Square#light
            class Light < WhopSDK::Internal::Type::BaseModel
              # @!attribute png_1x
              #   Raster fallback at the shape's native size.
              #
              #   @return [String]
              required :png_1x, String

              # @!attribute png_2x
              #   Raster fallback at double density.
              #
              #   @return [String]
              required :png_2x, String

              # @!attribute png_4x
              #   Raster fallback at quadruple density.
              #
              #   @return [String]
              required :png_4x, String

              # @!attribute svg
              #   The vector file. Prefer this everywhere SVG renders.
              #
              #   @return [String]
              required :svg, String

              # @!method initialize(png_1x:, png_2x:, png_4x:, svg:)
              #   The colorway for light surfaces.
              #
              #   @param png_1x [String] Raster fallback at the shape's native size.
              #
              #   @param png_2x [String] Raster fallback at double density.
              #
              #   @param png_4x [String] Raster fallback at quadruple density.
              #
              #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
            end
          end
        end

        # @see WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod#platform_balance
        class PlatformBalance < WhopSDK::Internal::Type::BaseModel
          # @!attribute balances
          #   Available amount per currency. Read from the balance cache, so it is indicative
          #   — the charge revalidates against settled funds and may still refuse.
          #
          #   @return [Array<WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance::Balance>]
          required :balances,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance::Balance] }

          # @!attribute spendable
          #   Whether this balance can pay right now, which here means only whether it holds
          #   funds — an account blocked from spending is not listed at all. A zero balance is
          #   still returned so a client can show it as an option the buyer could top up.
          #
          #   @return [Boolean]
          required :spendable, WhopSDK::Internal::Type::Boolean

          # @!method initialize(balances:, spendable:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance}
          #   for more details.
          #
          #   What is available to spend, and whether the account may spend it.
          #
          #   @param balances [Array<WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance::Balance>] Available amount per currency. Read from the balance cache, so it is indicative
          #
          #   @param spendable [Boolean] Whether this balance can pay right now, which here means only whether it holds f

          class Balance < WhopSDK::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount in major units, as an exact decimal string — `"10.00"` is ten
            #   dollars. A string so no float rounds it in transit.
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   Three-letter ISO 4217 currency code, lowercase.
            #
            #   @return [Symbol, WhopSDK::Models::Currency]
            required :currency, enum: -> { WhopSDK::Currency }

            # @!attribute decimals
            #   How many decimal places the amount CARRIES — the precision the charge itself
            #   runs at.
            #
            #   @return [Integer]
            required :decimals, Integer

            # @!attribute display_decimals
            #   How many decimal places to SHOW. Usually equal to `decimals`, and deliberately
            #   not always: COP is charged in centavos but written in whole pesos, so it is `2`
            #   and `0`. Format the number in your own locale using this.
            #
            #   @return [Integer]
            required :display_decimals, Integer

            # @!method initialize(amount:, currency:, decimals:, display_decimals:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance::Balance}
            #   for more details.
            #
            #   An amount of money. Never a bare number, because a bare number cannot answer the
            #   two questions a client has to answer to render it: what currency is this, and
            #   how many digits do I write? The second is stated twice rather than derived,
            #   because the digits the amount CARRIES and the digits to SHOW differ in COP —
            #   charged in centavos, written in whole pesos. Formatting is deliberately left to
            #   the caller: the number belongs in the buyer's locale, and this API does not know
            #   it.
            #
            #   @param amount [String] The amount in major units, as an exact decimal string — `"10.00"` is ten dollars
            #
            #   @param currency [Symbol, WhopSDK::Models::Currency] Three-letter ISO 4217 currency code, lowercase.
            #
            #   @param decimals [Integer] How many decimal places the amount CARRIES — the precision the charge itself run
            #
            #   @param display_decimals [Integer] How many decimal places to SHOW. Usually equal to `decimals`, and deliberately n
          end
        end
      end

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod, WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod)]
    end
  end
end
