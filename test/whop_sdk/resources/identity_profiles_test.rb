# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::IdentityProfilesTest < WhopSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.create(kind: :individual, ledger_account_id: "ldgr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Models::IdentityProfileCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        last_error_code: WhopSDK::VerificationErrorCode | nil,
        last_error_reason: String | nil,
        session_url: String | nil,
        status: WhopSDK::VerificationStatus
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.retrieve("idpf_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::IdentityProfile
    end

    assert_pattern do
      response => {
        id: String,
        business_address: WhopSDK::IdentityProfile::BusinessAddress | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: Time,
        date_of_birth: String | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        linked_companies: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::LinkedCompany]),
        personal_address: WhopSDK::IdentityProfile::PersonalAddress | nil,
        phone: String | nil,
        profile_type: String,
        status: WhopSDK::IdentityProfileStatus,
        updated_at: Time,
        verifications: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::Verification])
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.list

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::IdentityProfileListResponse
    end

    assert_pattern do
      row => {
        id: String,
        business_address: WhopSDK::Models::IdentityProfileListResponse::BusinessAddress | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: Time,
        date_of_birth: String | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        linked_companies: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::IdentityProfileListResponse::LinkedCompany]),
        personal_address: WhopSDK::Models::IdentityProfileListResponse::PersonalAddress | nil,
        phone: String | nil,
        profile_type: String,
        status: WhopSDK::IdentityProfileStatus,
        updated_at: Time,
        verifications: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::IdentityProfileListResponse::Verification])
      }
    end
  end

  def test_attach_required_params
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.attach("identity_profile_id", ledger_account_id: "ldgr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::IdentityProfile
    end

    assert_pattern do
      response => {
        id: String,
        business_address: WhopSDK::IdentityProfile::BusinessAddress | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: Time,
        date_of_birth: String | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        linked_companies: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::LinkedCompany]),
        personal_address: WhopSDK::IdentityProfile::PersonalAddress | nil,
        phone: String | nil,
        profile_type: String,
        status: WhopSDK::IdentityProfileStatus,
        updated_at: Time,
        verifications: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::Verification])
      }
    end
  end

  def test_list_verifications
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.list_verifications("idpf_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::Internal::CursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => WhopSDK::Models::IdentityProfileListVerificationsResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        last_error_code: WhopSDK::VerificationErrorCode | nil,
        last_error_reason: String | nil,
        session_url: String | nil,
        status: WhopSDK::VerificationStatus
      }
    end
  end

  def test_unlink_required_params
    skip("Mock server tests are disabled")

    response = @whop.identity_profiles.unlink("idpf_xxxxxxxxxxxxx", ledger_account_id: "ldgr_xxxxxxxxxxxxx")

    assert_pattern do
      response => WhopSDK::IdentityProfile
    end

    assert_pattern do
      response => {
        id: String,
        business_address: WhopSDK::IdentityProfile::BusinessAddress | nil,
        business_name: String | nil,
        business_structure: String | nil,
        country: String | nil,
        created_at: Time,
        date_of_birth: String | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        linked_companies: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::LinkedCompany]),
        personal_address: WhopSDK::IdentityProfile::PersonalAddress | nil,
        phone: String | nil,
        profile_type: String,
        status: WhopSDK::IdentityProfileStatus,
        updated_at: Time,
        verifications: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::IdentityProfile::Verification])
      }
    end
  end
end
