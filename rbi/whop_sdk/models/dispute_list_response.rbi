# typed: strong

module WhopSDK
  module Models
    class DisputeListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DisputeListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the dispute.
      sig { returns(String) }
      attr_accessor :id

      # The disputed amount in the specified currency, formatted as a decimal.
      sig { returns(Float) }
      attr_accessor :amount

      # The company that the dispute was filed against.
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Company)) }
      attr_reader :company

      sig do
        params(
          company:
            T.nilable(WhopSDK::Models::DisputeListResponse::Company::OrHash)
        ).void
      end
      attr_writer :company

      # The datetime the dispute was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The three-letter ISO currency code for the disputed amount.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Whether the dispute evidence can still be edited and submitted.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :editable

      # The deadline by which dispute evidence must be submitted. Null if no response
      # deadline is set.
      sig { returns(T.nilable(Time)) }
      attr_accessor :needs_response_by

      # The original payment that was disputed.
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Payment)) }
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(WhopSDK::Models::DisputeListResponse::Payment::OrHash)
        ).void
      end
      attr_writer :payment

      # The plan associated with the disputed payment. Null if the dispute is not linked
      # to a specific plan.
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::DisputeListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The product associated with the disputed payment. Null if the dispute is not
      # linked to a specific product.
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::DisputeListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # A human-readable reason for the dispute.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The card network reason code for the dispute. Null when the payment processor
      # did not provide one.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason_code

      # The current status of the dispute lifecycle, such as needs_response,
      # under_review, won, or lost.
      sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether the dispute was automatically resolved through Visa Rapid Dispute
      # Resolution (RDR).
      sig { returns(T::Boolean) }
      attr_accessor :visa_rdr

      # A dispute is a chargeback or payment challenge filed against a company,
      # including evidence and response status.
      sig do
        params(
          id: String,
          amount: Float,
          company:
            T.nilable(WhopSDK::Models::DisputeListResponse::Company::OrHash),
          created_at: T.nilable(Time),
          currency: WhopSDK::Currency::OrSymbol,
          editable: T.nilable(T::Boolean),
          needs_response_by: T.nilable(Time),
          payment:
            T.nilable(WhopSDK::Models::DisputeListResponse::Payment::OrHash),
          plan: T.nilable(WhopSDK::Models::DisputeListResponse::Plan::OrHash),
          product:
            T.nilable(WhopSDK::Models::DisputeListResponse::Product::OrHash),
          reason: T.nilable(String),
          reason_code: T.nilable(String),
          status: WhopSDK::DisputeStatuses::OrSymbol,
          visa_rdr: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the dispute.
        id:,
        # The disputed amount in the specified currency, formatted as a decimal.
        amount:,
        # The company that the dispute was filed against.
        company:,
        # The datetime the dispute was created.
        created_at:,
        # The three-letter ISO currency code for the disputed amount.
        currency:,
        # Whether the dispute evidence can still be edited and submitted.
        editable:,
        # The deadline by which dispute evidence must be submitted. Null if no response
        # deadline is set.
        needs_response_by:,
        # The original payment that was disputed.
        payment:,
        # The plan associated with the disputed payment. Null if the dispute is not linked
        # to a specific plan.
        plan:,
        # The product associated with the disputed payment. Null if the dispute is not
        # linked to a specific product.
        product:,
        # A human-readable reason for the dispute.
        reason:,
        # The card network reason code for the dispute. Null when the payment processor
        # did not provide one.
        reason_code:,
        # The current status of the dispute lifecycle, such as needs_response,
        # under_review, won, or lost.
        status:,
        # Whether the dispute was automatically resolved through Visa Rapid Dispute
        # Resolution (RDR).
        visa_rdr:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            company: T.nilable(WhopSDK::Models::DisputeListResponse::Company),
            created_at: T.nilable(Time),
            currency: WhopSDK::Currency::TaggedSymbol,
            editable: T.nilable(T::Boolean),
            needs_response_by: T.nilable(Time),
            payment: T.nilable(WhopSDK::Models::DisputeListResponse::Payment),
            plan: T.nilable(WhopSDK::Models::DisputeListResponse::Plan),
            product: T.nilable(WhopSDK::Models::DisputeListResponse::Product),
            reason: T.nilable(String),
            reason_code: T.nilable(String),
            status: WhopSDK::DisputeStatuses::TaggedSymbol,
            visa_rdr: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The written name of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that the dispute was filed against.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The written name of the company.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class Payment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeListResponse::Payment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the payment.
        sig { returns(String) }
        attr_accessor :id

        # The instrument this payment was made with, shaped for display: the method type,
        # a buyer-facing name, the standard icon set, and the card facts when it was a
        # card. Null when the receipt names no payment method.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument
            )
          )
        end
        attr_reader :payment_instrument

        sig do
          params(
            payment_instrument:
              T.nilable(
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::OrHash
              )
          ).void
        end
        attr_writer :payment_instrument

        # The original payment that was disputed.
        sig do
          params(
            id: String,
            payment_instrument:
              T.nilable(
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the payment.
          id:,
          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the receipt names no payment method.
          payment_instrument:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              payment_instrument:
                T.nilable(
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument
                )
            }
          )
        end
        def to_hash
        end

        class PaymentInstrument < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument,
                WhopSDK::Internal::AnyHash
              )
            end

          # Buyer-facing instrument name — "Visa •••• 4242" when the card surfaced, else the
          # method's own name ("Klarna").
          sig { returns(String) }
          attr_accessor :display_name

          # The standard icon set: square and card shapes, each in light and dark colorways.
          sig do
            returns(
              WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons
            )
          end
          attr_reader :icons

          sig do
            params(
              icons:
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::OrHash
            ).void
          end
          attr_writer :icons

          # Installment methods only: how many payments the charge splits into. Data, not
          # copy — compose and translate the label client-side.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :installment_count

          # The payment method type identifier, e.g. `card`, `klarna`, `apple_pay`.
          sig { returns(String) }
          attr_accessor :payment_method_type

          # The instrument this payment was made with, shaped for display: the method type,
          # a buyer-facing name, the standard icon set, and the card facts when it was a
          # card. Null when the receipt names no payment method.
          sig do
            params(
              display_name: String,
              icons:
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::OrHash,
              installment_count: T.nilable(Integer),
              payment_method_type: String
            ).returns(T.attached_class)
          end
          def self.new(
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
                display_name: String,
                icons:
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons,
                installment_count: T.nilable(Integer),
                payment_method_type: String
              }
            )
          end
          def to_hash
          end

          class Icons < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons,
                  WhopSDK::Internal::AnyHash
                )
              end

            # The square tile (32x32).
            sig do
              returns(
                WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square
              )
            end
            attr_reader :square

            sig do
              params(
                square:
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::OrHash
              ).void
            end
            attr_writer :square

            # The standard icon set: square and card shapes, each in light and dark colorways.
            sig do
              params(
                square:
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The square tile (32x32).
              square:
            )
            end

            sig do
              override.returns(
                {
                  square:
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square
                }
              )
            end
            def to_hash
            end

            class Square < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # The colorway for dark surfaces.
              sig do
                returns(
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark
                )
              end
              attr_reader :dark

              sig do
                params(
                  dark:
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark::OrHash
                ).void
              end
              attr_writer :dark

              # The colorway for light surfaces.
              sig do
                returns(
                  WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light
                )
              end
              attr_reader :light

              sig do
                params(
                  light:
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light::OrHash
                ).void
              end
              attr_writer :light

              # The square tile (32x32).
              sig do
                params(
                  dark:
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark::OrHash,
                  light:
                    WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light::OrHash
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
                      WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark,
                    light:
                      WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light
                  }
                )
              end
              def to_hash
              end

              class Dark < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Dark,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for dark surfaces.
                sig { params(svg: String).returns(T.attached_class) }
                def self.new(
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig { override.returns({ svg: String }) }
                def to_hash
                end
              end

              class Light < WhopSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      WhopSDK::Models::DisputeListResponse::Payment::PaymentInstrument::Icons::Square::Light,
                      WhopSDK::Internal::AnyHash
                    )
                  end

                # The vector file. Prefer this everywhere SVG renders.
                sig { returns(String) }
                attr_accessor :svg

                # The colorway for light surfaces.
                sig { params(svg: String).returns(T.attached_class) }
                def self.new(
                  # The vector file. Prefer this everywhere SVG renders.
                  svg:
                )
                end

                sig { override.returns({ svg: String }) }
                def to_hash
                end
              end
            end
          end
        end
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeListResponse::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan associated with the disputed payment. Null if the dispute is not linked
        # to a specific plan.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the plan.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DisputeListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product associated with the disputed payment. Null if the dispute is not
        # linked to a specific product.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The display name of the product shown to customers on the product page and in
          # search results.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
