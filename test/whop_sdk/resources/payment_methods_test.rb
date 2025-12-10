# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::PaymentMethodsTest < WhopSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_methods.retrieve("payt_xxxxxxxxxxxxx", member_id: "mber_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::PaymentMethodRetrieveResponse
    end

    assert_pattern do
      case response
      in WhopSDK::Models::PaymentMethodRetrieveResponse::BasePaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod
      in WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod
      end
    end

    assert_pattern do
      case response
      in {typename: :BasePaymentMethod, id: String, created_at: Time, payment_method_type: WhopSDK::PaymentMethodTypes}
      in {
        typename: :CardPaymentMethod,
        id: String,
        card: WhopSDK::Models::PaymentMethodRetrieveResponse::CardPaymentMethod::Card,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :UsBankAccountPaymentMethod,
        id: String,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        us_bank_account: WhopSDK::Models::PaymentMethodRetrieveResponse::UsBankAccountPaymentMethod::UsBankAccount
      }
      end
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @whop.payment_methods.list(member_id: "mber_xxxxxxxxxxxxx")

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
      end
    end

    assert_pattern do
      case row
      in {typename: :BasePaymentMethod, id: String, created_at: Time, payment_method_type: WhopSDK::PaymentMethodTypes}
      in {
        typename: :CardPaymentMethod,
        id: String,
        card: WhopSDK::Models::PaymentMethodListResponse::CardPaymentMethod::Card,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes
      }
      in {
        typename: :UsBankAccountPaymentMethod,
        id: String,
        created_at: Time,
        payment_method_type: WhopSDK::PaymentMethodTypes,
        us_bank_account: WhopSDK::Models::PaymentMethodListResponse::UsBankAccountPaymentMethod::UsBankAccount
      }
      end
    end
  end
end
