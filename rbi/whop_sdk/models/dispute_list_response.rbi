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

      # The amount of the dispute (formatted).
      sig { returns(Float) }
      attr_accessor :amount

      # The company the dispute is against.
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

      # The currency of the dispute.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Whether or not the dispute data can be edited.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :editable

      # The last date the dispute is allow to be submitted by.
      sig { returns(T.nilable(Time)) }
      attr_accessor :needs_response_by

      # The payment that got disputed
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Payment)) }
      attr_reader :payment

      sig do
        params(
          payment:
            T.nilable(WhopSDK::Models::DisputeListResponse::Payment::OrHash)
        ).void
      end
      attr_writer :payment

      # The plan that got disputed
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::DisputeListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The product that got disputed
      sig { returns(T.nilable(WhopSDK::Models::DisputeListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::DisputeListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The reason for the dispute
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The status of the dispute (mimics stripe's dispute status).
      sig { returns(WhopSDK::DisputeStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether or not the dispute is a Visa Rapid Dispute Resolution.
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
        # The amount of the dispute (formatted).
        amount:,
        # The company the dispute is against.
        company:,
        # The datetime the dispute was created.
        created_at:,
        # The currency of the dispute.
        currency:,
        # Whether or not the dispute data can be edited.
        editable:,
        # The last date the dispute is allow to be submitted by.
        needs_response_by:,
        # The payment that got disputed
        payment:,
        # The plan that got disputed
        plan:,
        # The product that got disputed
        product:,
        # The reason for the dispute
        reason:,
        # The status of the dispute (mimics stripe's dispute status).
        status:,
        # Whether or not the dispute is a Visa Rapid Dispute Resolution.
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

        # The company the dispute is against.
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

        # The payment that got disputed
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

        # The plan that got disputed
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

        # The product that got disputed
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
