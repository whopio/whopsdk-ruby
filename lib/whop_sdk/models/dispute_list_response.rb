# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#list
    class DisputeListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the dispute.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company
      #   The company that the dispute was filed against.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::DisputeListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the dispute was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute currency
      #   The three-letter ISO currency code for the disputed amount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute editable
      #   Whether the dispute evidence can still be edited and submitted.
      #
      #   @return [Boolean, nil]
      required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute needs_response_by
      #   The deadline by which dispute evidence must be submitted. Null if no response
      #   deadline is set.
      #
      #   @return [Time, nil]
      required :needs_response_by, Time, nil?: true

      # @!attribute payment
      #   The original payment that was disputed.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::DisputeListResponse::Payment }, nil?: true

      # @!attribute plan
      #   The plan associated with the disputed payment. Null if the dispute is not linked
      #   to a specific plan.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Plan, nil]
      required :plan, -> { WhopSDK::Models::DisputeListResponse::Plan }, nil?: true

      # @!attribute product
      #   The product associated with the disputed payment. Null if the dispute is not
      #   linked to a specific product.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::DisputeListResponse::Product }, nil?: true

      # @!attribute reason
      #   A human-readable reason for the dispute.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute reason_code
      #   The card network reason code for the dispute. Null when the payment processor
      #   did not provide one.
      #
      #   @return [String, nil]
      required :reason_code, String, nil?: true

      # @!attribute status
      #   The current status of the dispute lifecycle, such as needs_response,
      #   under_review, won, or lost.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
      required :status, enum: -> { WhopSDK::DisputeStatuses }

      # @!attribute visa_rdr
      #   Whether the dispute was automatically resolved through Visa Rapid Dispute
      #   Resolution (RDR).
      #
      #   @return [Boolean]
      required :visa_rdr, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount:, company:, created_at:, currency:, editable:, needs_response_by:, payment:, plan:, product:, reason:, reason_code:, status:, visa_rdr:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeListResponse} for more details.
      #
      #   A dispute is a chargeback or payment challenge filed against a company,
      #   including evidence and response status.
      #
      #   @param id [String] The unique identifier for the dispute.
      #
      #   @param amount [Float] The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @param company [WhopSDK::Models::DisputeListResponse::Company, nil] The company that the dispute was filed against.
      #
      #   @param created_at [Time, nil] The datetime the dispute was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the disputed amount.
      #
      #   @param editable [Boolean, nil] Whether the dispute evidence can still be edited and submitted.
      #
      #   @param needs_response_by [Time, nil] The deadline by which dispute evidence must be submitted. Null if no response de
      #
      #   @param payment [WhopSDK::Models::DisputeListResponse::Payment, nil] The original payment that was disputed.
      #
      #   @param plan [WhopSDK::Models::DisputeListResponse::Plan, nil] The plan associated with the disputed payment. Null if the dispute is not linked
      #
      #   @param product [WhopSDK::Models::DisputeListResponse::Product, nil] The product associated with the disputed payment. Null if the dispute is not lin
      #
      #   @param reason [String, nil] A human-readable reason for the dispute.
      #
      #   @param reason_code [String, nil] The card network reason code for the dispute. Null when the payment processor di
      #
      #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The current status of the dispute lifecycle, such as needs_response, under_revie
      #
      #   @param visa_rdr [Boolean] Whether the dispute was automatically resolved through Visa Rapid Dispute Resolu

      # @see WhopSDK::Models::DisputeListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that the dispute was filed against.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::DisputeListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!attribute payment_instrument
        #   The instrument this payment was made with, shaped for display: the method type,
        #   a buyer-facing name, the standard icon set, and the card facts when it was a
        #   card. Null when the receipt names no payment method.
        #
        #   @return [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument, nil]
        required :payment_instrument,
                 -> { WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument },
                 nil?: true

        # @!method initialize(id:, payment_instrument:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DisputeListResponse::Payment} for more details.
        #
        #   The original payment that was disputed.
        #
        #   @param id [String] The unique identifier for the payment.
        #
        #   @param payment_instrument [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument, nil] The instrument this payment was made with, shaped for display: the method type,

        # @see WhopSDK::Models::DisputeListResponse::Payment#payment_instrument
        class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
          # @!attribute display_name
          #   Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          #   method's own name ("Klarna").
          #
          #   @return [String]
          required :display_name, String

          # @!attribute icons
          #   The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @return [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons]
          required :icons, -> { WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons }

          # @!attribute installment_count
          #   Installment methods only: how many payments the charge splits into. Data, not
          #   copy — compose and translate the label client-side.
          #
          #   @return [Integer, nil]
          required :installment_count, Integer, nil?: true

          # @!attribute payment_method_type
          #   The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          #
          #   @return [String]
          required :payment_method_type, String

          # @!method initialize(display_name:, icons:, installment_count:, payment_method_type:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument} for more
          #   details.
          #
          #   The instrument this payment was made with, shaped for display: the method type,
          #   a buyer-facing name, the standard icon set, and the card facts when it was a
          #   card. Null when the receipt names no payment method.
          #
          #   @param display_name [String] Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          #
          #   @param icons [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons] The standard icon set: square and card shapes, each in light and dark colorways.
          #
          #   @param installment_count [Integer, nil] Installment methods only: how many payments the charge splits into. Data, not co
          #
          #   @param payment_method_type [String] The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.

          # @see WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument#icons
          class Icons < WhopSDK::Internal::Type::BaseModel
            # @!attribute square
            #   The square tile (32x32).
            #
            #   @return [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square]
            required :square, -> { WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square }

            # @!method initialize(square:)
            #   The standard icon set: square and card shapes, each in light and dark colorways.
            #
            #   @param square [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square] The square tile (32x32).

            # @see WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons#square
            class Square < WhopSDK::Internal::Type::BaseModel
              # @!attribute dark
              #   The colorway for dark surfaces.
              #
              #   @return [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark]
              required :dark,
                       -> { WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark }

              # @!attribute light
              #   The colorway for light surfaces.
              #
              #   @return [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light]
              required :light,
                       -> { WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light }

              # @!method initialize(dark:, light:)
              #   The square tile (32x32).
              #
              #   @param dark [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark] The colorway for dark surfaces.
              #
              #   @param light [WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light] The colorway for light surfaces.

              # @see WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square#dark
              class Dark < WhopSDK::Internal::Type::BaseModel
                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(svg:)
                #   The colorway for dark surfaces.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end

              # @see WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square#light
              class Light < WhopSDK::Internal::Type::BaseModel
                # @!attribute svg
                #   The vector file. Prefer this everywhere SVG renders.
                #
                #   @return [String]
                required :svg, String

                # @!method initialize(svg:)
                #   The colorway for light surfaces.
                #
                #   @param svg [String] The vector file. Prefer this everywhere SVG renders.
              end
            end
          end
        end
      end

      # @see WhopSDK::Models::DisputeListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan associated with the disputed payment. Null if the dispute is not linked
        #   to a specific plan.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::DisputeListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DisputeListResponse::Product} for more details.
        #
        #   The product associated with the disputed payment. Null if the dispute is not
        #   linked to a specific product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end
    end
  end
end
