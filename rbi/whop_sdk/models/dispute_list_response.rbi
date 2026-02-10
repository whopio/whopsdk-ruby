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

      # Whether the dispute evidence can still be edited and submitted. Returns true
      # only when the dispute status requires a response.
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
        # Whether the dispute evidence can still be edited and submitted. Returns true
        # only when the dispute status requires a response.
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

        # The original payment that was disputed.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the payment.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
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
