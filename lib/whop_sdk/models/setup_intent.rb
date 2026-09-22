# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SetupIntents#retrieve
    class SetupIntent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Setup intent ID, prefixed `sint_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The account the payment method is saved for, prefixed `biz_`.
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute checkout_configuration_id
      #   The checkout configuration this setup was created through, prefixed `ch_`. Null
      #   for a setup created through this API rather than a hosted checkout.
      #
      #   @return [String, nil]
      required :checkout_configuration_id, String, nil?: true

      # @!attribute client_secret
      #   The credential a buyer's surface presents to poll this setup and set its return
      #   URL — hand it to the elements' `handleNextAction`. Only on setups created
      #   through this API, and always null in list responses — retrieve the setup intent
      #   for it.
      #
      #   @return [String, nil]
      required :client_secret, String, nil?: true

      # @!attribute created_at
      #   When the setup intent was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute last_setup_error
      #   Why the setup ended where it did, or `null` when nothing has failed. Present on
      #   `canceled` — a buyer who abandoned carries no code, one refused by the provider
      #   does. Dropped once the setup succeeds.
      #
      #   @return [WhopSDK::Models::SetupIntent::LastSetupError, nil]
      required :last_setup_error, -> { WhopSDK::SetupIntent::LastSetupError }, nil?: true

      # @!attribute member_id
      #   The buyer's member record on the account, prefixed `mber_`. Null without the
      #   member:basic:read permission, unless the caller is the buyer.
      #
      #   @return [String, nil]
      required :member_id, String, nil?: true

      # @!attribute metadata
      #   Your own key-value data attached when the setup intent was created.
      #
      #   @return [Object, nil]
      required :metadata, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute payment_instrument
      #   The method behind this setup shaped for display: a buyer-facing name, the
      #   standard icon set, and the card's brand, last four, issuer identification
      #   number, and expiry when it was a card. Null until a method was collected.
      #
      #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument, nil]
      required :payment_instrument, -> { WhopSDK::SetupIntent::PaymentInstrument }, nil?: true

      # @!attribute payment_method_id
      #   The saved payment method, prefixed `payt_`, ready to charge with Create Payment.
      #   Null until the setup has `succeeded`.
      #
      #   @return [String, nil]
      required :payment_method_id, String, nil?: true

      # @!attribute payment_method_type
      #   The different types of payment methods that can be used.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentMethodTypes, nil]
      required :payment_method_type, enum: -> { WhopSDK::PaymentMethodTypes }, nil?: true

      # @!attribute return_url
      #   Where the buyer lands after completing an off-site step, or `null` to leave them
      #   where they are.
      #
      #   @return [String, nil]
      required :return_url, String, nil?: true

      # @!attribute status
      #   How far the setup has got. **A 201 or 200 means we answered, not that the method
      #   was saved — always branch on this.** `requires_action` — the buyer has a step
      #   outstanding; hand `client_secret` to the elements or poll Retrieve setup status.
      #   `processing` — the processor is deciding. `succeeded` — the method is saved, and
      #   only this one means saved. `canceled` — abandoned or refused; see
      #   `last_setup_error`.
      #
      #   @return [Symbol, WhopSDK::Models::SetupIntent::Status]
      required :status, enum: -> { WhopSDK::SetupIntent::Status }

      # @!attribute three_ds_verified
      #   True when the buyer completed 3D Secure while saving this payment method.
      #
      #   @return [Boolean]
      required :three_ds_verified, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the setup intent was last updated, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute user
      #   The user saving the payment method. Null when the buyer is a company rather than
      #   a user.
      #
      #   @return [WhopSDK::Models::SetupIntent::User, nil]
      required :user, -> { WhopSDK::SetupIntent::User }, nil?: true

      # @!method initialize(id:, account_id:, checkout_configuration_id:, client_secret:, created_at:, last_setup_error:, member_id:, metadata:, payment_instrument:, payment_method_id:, payment_method_type:, return_url:, status:, three_ds_verified:, updated_at:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SetupIntent} for more details.
      #
      #   @param id [String] Setup intent ID, prefixed `sint_`.
      #
      #   @param account_id [String, nil] The account the payment method is saved for, prefixed `biz_`.
      #
      #   @param checkout_configuration_id [String, nil] The checkout configuration this setup was created through, prefixed `ch_`. Null
      #
      #   @param client_secret [String, nil] The credential a buyer's surface presents to poll this setup and set its return
      #
      #   @param created_at [String] When the setup intent was created, as an ISO 8601 timestamp.
      #
      #   @param last_setup_error [WhopSDK::Models::SetupIntent::LastSetupError, nil] Why the setup ended where it did, or `null` when nothing has failed. Present on
      #
      #   @param member_id [String, nil] The buyer's member record on the account, prefixed `mber_`. Null without the mem
      #
      #   @param metadata [Object, nil] Your own key-value data attached when the setup intent was created.
      #
      #   @param payment_instrument [WhopSDK::Models::SetupIntent::PaymentInstrument, nil] The method behind this setup shaped for display: a buyer-facing name, the standa
      #
      #   @param payment_method_id [String, nil] The saved payment method, prefixed `payt_`, ready to charge with Create Payment.
      #
      #   @param payment_method_type [Symbol, WhopSDK::Models::PaymentMethodTypes, nil] The different types of payment methods that can be used.
      #
      #   @param return_url [String, nil] Where the buyer lands after completing an off-site step, or `null` to leave them
      #
      #   @param status [Symbol, WhopSDK::Models::SetupIntent::Status] How far the setup has got. \*\*A 201 or 200 means we answered, not that the
      #   method
      #
      #   @param three_ds_verified [Boolean] True when the buyer completed 3D Secure while saving this payment method.
      #
      #   @param updated_at [String] When the setup intent was last updated, as an ISO 8601 timestamp.
      #
      #   @param user [WhopSDK::Models::SetupIntent::User, nil] The user saving the payment method. Null when the buyer is a company rather than

      # @see WhopSDK::Models::SetupIntent#last_setup_error
      class LastSetupError < WhopSDK::Internal::Type::BaseModel
        # @!attribute code
        #   A machine-readable classification of the failure, e.g. `enrollment_declined`.
        #   Absent when the buyer simply abandoned the setup.
        #
        #   @return [String, nil]
        required :code, String, nil?: true

        # @!attribute message
        #   A human-readable explanation of the failure.
        #
        #   @return [String, nil]
        required :message, String, nil?: true

        # @!method initialize(code:, message:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::SetupIntent::LastSetupError} for more details.
        #
        #   Why the setup ended where it did, or `null` when nothing has failed. Present on
        #   `canceled` — a buyer who abandoned carries no code, one refused by the provider
        #   does. Dropped once the setup succeeds.
        #
        #   @param code [String, nil] A machine-readable classification of the failure, e.g. `enrollment_declined`. Ab
        #
        #   @param message [String, nil] A human-readable explanation of the failure.
      end

      # @see WhopSDK::Models::SetupIntent#payment_instrument
      class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
        # @!attribute card
        #   Card payments only: the card's network, last four, and issuer identification
        #   number.
        #
        #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Card, nil]
        required :card, -> { WhopSDK::SetupIntent::PaymentInstrument::Card }, nil?: true

        # @!attribute display_name
        #   Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        #   method's own name ("Klarna").
        #
        #   @return [String]
        required :display_name, String

        # @!attribute icons
        #   The standard icon set: square and card shapes, each in light and dark colorways.
        #
        #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons]
        required :icons, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons }

        # @!attribute installment_count
        #   Installment methods only: how many payments the charge splits into. Data, not
        #   copy — compose and translate the label client-side.
        #
        #   @return [Float, nil]
        required :installment_count, Float, nil?: true

        # @!attribute payment_method_type
        #   The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
        #
        #   @return [String]
        required :payment_method_type, String

        # @!method initialize(card:, display_name:, icons:, installment_count:, payment_method_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::SetupIntent::PaymentInstrument} for more details.
        #
        #   The method behind this setup shaped for display: a buyer-facing name, the
        #   standard icon set, and the card's brand, last four, issuer identification
        #   number, and expiry when it was a card. Null until a method was collected.
        #
        #   @param card [WhopSDK::Models::SetupIntent::PaymentInstrument::Card, nil] Card payments only: the card's network, last four, and issuer identification num
        #
        #   @param display_name [String] Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
        #
        #   @param icons [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons] The standard icon set: square and card shapes, each in light and dark colorways.
        #
        #   @param installment_count [Float, nil] Installment methods only: how many payments the charge splits into. Data, not co
        #
        #   @param payment_method_type [String] The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.

        # @see WhopSDK::Models::SetupIntent::PaymentInstrument#card
        class Card < WhopSDK::Internal::Type::BaseModel
          # @!attribute brand
          #   The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
          #   saved card payment methods. Null when the vault did not record the network.
          #
          #   @return [String, nil]
          required :brand, String, nil?: true

          # @!attribute exp_month
          #   The card's expiry month, 1 to 12. Null when the vault did not record it.
          #
          #   @return [Float, nil]
          required :exp_month, Float, nil?: true

          # @!attribute exp_year
          #   The card's four-digit expiry year. Null when the vault did not record it.
          #
          #   @return [Float, nil]
          required :exp_year, Float, nil?: true

          # @!attribute issuer_identification_number
          #   The issuer identification number, also called the BIN: the card's leading six or
          #   eight digits, which identify the issuing bank. Null when the processor did not
          #   report it.
          #
          #   @return [String, nil]
          required :issuer_identification_number, String, nil?: true

          # @!attribute last4
          #   The card's last four digits, when captured.
          #
          #   @return [String, nil]
          required :last4, String, nil?: true

          # @!method initialize(brand:, exp_month:, exp_year:, issuer_identification_number:, last4:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::SetupIntent::PaymentInstrument::Card} for more details.
          #
          #   Card payments only: the card's network, last four, and issuer identification
          #   number.
          #
          #   @param brand [String, nil] The network identifier (`visa`, `amex`, …), matching `card.networks` entries and
          #
          #   @param exp_month [Float, nil] The card's expiry month, 1 to 12. Null when the vault did not record it.
          #
          #   @param exp_year [Float, nil] The card's four-digit expiry year. Null when the vault did not record it.
          #
          #   @param issuer_identification_number [String, nil] The issuer identification number, also called the BIN: the card's leading six or
          #
          #   @param last4 [String, nil] The card's last four digits, when captured.
        end

        # @see WhopSDK::Models::SetupIntent::PaymentInstrument#icons
        class Icons < WhopSDK::Internal::Type::BaseModel
          # @!attribute card
          #   The credit-card-proportioned tile (48x30).
          #
          #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card]
          required :card, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Card }

          # @!attribute square
          #   The square tile (32x32).
          #
          #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square]
          required :square, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Square }

          # @!method initialize(card:, square:)
          #   The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @param card [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card] The credit-card-proportioned tile (48x30).
          #
          #   @param square [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square] The square tile (32x32).

          # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons#card
          class Card < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card::Dark]
            required :dark, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card::Light]
            required :light, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Card::Light }

            # @!method initialize(dark:, light:)
            #   The credit-card-proportioned tile (48x30).
            #
            #   @param dark [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card#dark
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

            # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Card#light
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

          # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons#square
          class Square < WhopSDK::Internal::Type::BaseModel
            # @!attribute dark
            #   The colorway for dark surfaces.
            #
            #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square::Dark]
            required :dark, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Dark }

            # @!attribute light
            #   The colorway for light surfaces.
            #
            #   @return [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square::Light]
            required :light, -> { WhopSDK::SetupIntent::PaymentInstrument::Icons::Square::Light }

            # @!method initialize(dark:, light:)
            #   The square tile (32x32).
            #
            #   @param dark [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square::Dark] The colorway for dark surfaces.
            #
            #   @param light [WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square::Light] The colorway for light surfaces.

            # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square#dark
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

            # @see WhopSDK::Models::SetupIntent::PaymentInstrument::Icons::Square#light
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

      # How far the setup has got. **A 201 or 200 means we answered, not that the method
      # was saved — always branch on this.** `requires_action` — the buyer has a step
      # outstanding; hand `client_secret` to the elements or poll Retrieve setup status.
      # `processing` — the processor is deciding. `succeeded` — the method is saved, and
      # only this one means saved. `canceled` — abandoned or refused; see
      # `last_setup_error`.
      #
      # @see WhopSDK::Models::SetupIntent#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PROCESSING = :processing
        SUCCEEDED = :succeeded
        CANCELED = :canceled
        REQUIRES_ACTION = :requires_action

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::SetupIntent#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID, prefixed `user_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute profile_picture
        #   Avatar wrapper; its `url` is always present, using a generated placeholder when
        #   the user set no picture.
        #
        #   @return [WhopSDK::Models::SetupIntent::User::ProfilePicture]
        required :profile_picture, -> { WhopSDK::SetupIntent::User::ProfilePicture }

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, profile_picture:, username:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::SetupIntent::User} for more details.
        #
        #   The user saving the payment method. Null when the buyer is a company rather than
        #   a user.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param profile_picture [WhopSDK::Models::SetupIntent::User::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
        #
        #   @param username [String] Public username.

        # @see WhopSDK::Models::SetupIntent::User#profile_picture
        class ProfilePicture < WhopSDK::Internal::Type::BaseModel
          # @!attribute url
          #   Avatar image URL. Always present — a generated placeholder when the user set no
          #   picture.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::SetupIntent::User::ProfilePicture} for more details.
          #
          #   Avatar wrapper; its `url` is always present, using a generated placeholder when
          #   the user set no picture.
          #
          #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
        end
      end
    end
  end
end
