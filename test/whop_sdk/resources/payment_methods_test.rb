# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentMethodsTest < WhopSDK::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.payment_methods.retrieve("payt_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::PaymentMethodRetrieveResponse
    end

    assert_pattern do
      case response
      in WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod
      end
    end

    assert_pattern do
      case response
      in {
        typename: :BasePaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :CardPaymentMethod,
        id: String,
        card: WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card,
        created_at: Time,
        has_payer_document: WhopSDK::Internal::Type::Boolean,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :UsBankAccountPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        us_bank_account: WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount
      }
      in {
        typename: :CashappPaymentMethod,
        id: String,
        cashapp: WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Cashapp,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::CashappPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :IdealPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Icons,
        ideal: WhopSDK::Models::PaymentMethodRetrieveResponse::IdealPaymentMethod::Ideal,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :SepaDebitPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        sepa_debit: WhopSDK::Models::PaymentMethodRetrieveResponse::SepaDebitPaymentMethod::SepaDebit
      }
      in {
        typename: :PlatformBalancePaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        platform_balance: WhopSDK::Models::PaymentMethodRetrieveResponse::PlatformBalancePaymentMethod::PlatformBalance
      }
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.payment_methods.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::PaymentMethodListResponse
    end

    assert_pattern do
      case row
      in WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod
      in WhopSDK::Models::PaymentMethodListResponse::PlatformBalancePaymentMethod
      end
    end

    assert_pattern do
      case row
      in {
        typename: :BasePaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::BasePaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :CardPaymentMethod,
        id: String,
        card: WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card,
        created_at: Time,
        has_payer_document: WhopSDK::Internal::Type::Boolean,
        icons: WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :UsBankAccountPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        us_bank_account: WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount
      }
      in {
        typename: :CashappPaymentMethod,
        id: String,
        cashapp: WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Cashapp,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::CashappPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :IdealPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Icons,
        ideal: WhopSDK::Models::PaymentMethodListResponse::IdealPaymentMethod::Ideal,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :SepaDebitPaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        sepa_debit: WhopSDK::Models::PaymentMethodListResponse::SepaDebitPaymentMethod::SepaDebit
      }
      in {
        typename: :PlatformBalancePaymentMethod,
        id: String,
        created_at: Time,
        icons: WhopSDK::Models::PaymentMethodListResponse::PlatformBalancePaymentMethod::Icons,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        platform_balance: WhopSDK::Models::PaymentMethodListResponse::PlatformBalancePaymentMethod::PlatformBalance
      }
      end
    end
  end
end
