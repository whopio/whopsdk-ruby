# Reference
## AccessTokens
<details><summary><code>client.access_tokens.<a href="/lib/whop_sdk/access_tokens/client.rb">create</a>(request) -> Whop_sdk::Types::AccessToken</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a short-lived access token for authenticating API requests. When using API key authentication, provide company_id or user_id. When using OAuth, the user is derived from the token. Use this token with Whop's web and mobile embedded components.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.access_tokens.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to generate the token for, starting with 'biz_'. The API key must have permission to access this company.
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — The expiration timestamp for the access token. Defaults to 1 hour from now, with a maximum of 3 hours.
    
</dd>
</dl>

<dl>
<dd>

**scoped_actions:** `Internal::Types::Array[String]` — An array of permission scopes to grant to the access token. If empty or omitted, all permissions from the authenticating credential are inherited. Must be a subset of the credential's permissions.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The unique identifier of the user to generate the token for, starting with 'user_'. The API key must have permission to access this user.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AccessTokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AccountLinks
<details><summary><code>client.account_links.<a href="/lib/whop_sdk/account_links/client.rb">create</a>(request) -> Whop_sdk::Types::AccountLink</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generate a URL that directs a sub-merchant to their account portal, such as the hosted payouts dashboard or the KYC onboarding flow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.account_links.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  refresh_url: "refresh_url",
  return_url: "return_url",
  use_case: "account_onboarding"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to generate the link for, starting with 'biz_'. Must be a sub-merchant of the API key's company.
    
</dd>
</dl>

<dl>
<dd>

**refresh_url:** `String` — The URL to redirect the user to if the session expires and needs to be re-authenticated, such as 'https://example.com/refresh'.
    
</dd>
</dl>

<dl>
<dd>

**return_url:** `String` — The URL to redirect the user to when they want to return to your site, such as 'https://example.com/return'.
    
</dd>
</dl>

<dl>
<dd>

**use_case:** `Whop_sdk::Types::AccountLinkUseCases` — The purpose of the account link, such as hosted payouts portal or hosted KYC onboarding.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AccountLinks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Accounts
<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">list</a>() -> Whop_sdk::Accounts::Types::ListAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists accounts visible to the credential. User tokens return the user's business accounts; Account API keys return the requesting account and its connected accounts. Pass `parent_account_id` to return only that parent account's connected accounts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**first:** `Integer` — The number of accounts to return (default 10, max 50).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns accounts after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of accounts to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns accounts before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Accounts::Types::ListAccountsRequestOrder` — The field to sort accounts by. `volume` requires `stats:read` on the parent account.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Accounts::Types::ListAccountsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Accounts::Types::ListAccountsRequestStatus` — Return only accounts with this status: `active` (includes accounts that have not entered payments review) or `suspended`.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Free-text filter on account title or ID. `%` and `_` match literally.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Return only accounts created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Return only accounts created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**volume_min:** `Integer` — Return only accounts whose lifetime USD volume is at least this value. Requires `stats:read` on the parent account.
    
</dd>
</dl>

<dl>
<dd>

**volume_max:** `Integer` — Return only accounts whose lifetime USD volume is at most this value. Requires `stats:read` on the parent account.
    
</dd>
</dl>

<dl>
<dd>

**parent_account_id:** `String` — For platforms: the parent account ID whose direct connected accounts to return. Requires `payout:account:read` on the parent account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">create</a>(request) -> Whop_sdk::Types::Account</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an account. User tokens create business accounts; Account API keys create connected accounts. Tax fields (`tax_remitted_by`, `tax_type`, `product_tax_code_id`, `business_address`, `tax_identifiers`) are configured with Update Account, not at creation.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**affiliate_code:** `String` — The username, if any, of the partner who referred this account
    
</dd>
</dl>

<dl>
<dd>

**blueprint_id:** `String` — The blueprint App ID, prefixed `app_`. Creates a hosted website for the account and queues its deployment asynchronously; the Account response does not report deployment completion.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — The ISO 3166-1 alpha-2 country code where the account's business is located (e.g. `US`). Defaults to the parent account's country for connected accounts.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — The email address of the account owner. Required for Account API key requests.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Arbitrary key/value metadata to store on the account.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the account. Defaults to `metadata.external_id` or the owner's email when omitted.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">me</a>() -> Whop_sdk::Types::Account</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the account associated with the current Account API key.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.me
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Account</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single account by ID or public route when it is visible to the credential, including its crypto wallet. The reserved id `me` retrieves the account associated with the current Account API key; user tokens have no single account, so they must address one by ID or route.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Account ID, prefixed `biz_`, its public route, or `me` for the account associated with the current API key.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Account</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an account. User tokens can update business accounts; Account API keys can update connected accounts. The reserved id `me` — accepted on Retrieve Account — resolves to the requesting account, which an Account API key cannot edit, so updates must name the connected account by its `biz_` id.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_application_required:** `Internal::Types::Boolean` — Whether prospective affiliates must submit an application before promoting this account.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_instructions:** `String` — Guidelines shown to affiliates promoting this account.
    
</dd>
</dl>

<dl>
<dd>

**banner_image:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestBannerImage` — Account banner image, used as the cover photo when creating a Whop-managed Facebook page. Image files up to 10 MB, except `image/gif`. Pass a JSON object containing an `id` from [Create File](/api-reference/files/create-file).
    
</dd>
</dl>

<dl>
<dd>

**business_address:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestBusinessAddress` — Account business address used to calculate tax. A complete address in a supported country is required when `tax_remitted_by` is `self`.
    
</dd>
</dl>

<dl>
<dd>

**business_name:** `String` — The legal business name used with the account's tax address.
    
</dd>
</dl>

<dl>
<dd>

**business_type:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestBusinessType` — High-level business category for the account. See the [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary) for valid values.
    
</dd>
</dl>

<dl>
<dd>

**collect_vat_id:** `Internal::Types::Boolean` — Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does not require a VAT ID to purchase.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country where the account is located.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Account promotional description. When creating a Whop-managed Facebook page, it is truncated to 155 characters and used as the About text.
    
</dd>
</dl>

<dl>
<dd>

**featured_affiliate_product_id:** `String` — The ID of the product to feature for affiliates. Pass `null` to clear.
    
</dd>
</dl>

<dl>
<dd>

**home_preferences:** `Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestHomePreferencesItem]` — Public account home page preferences.
    
</dd>
</dl>

<dl>
<dd>

**industry_group:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestIndustryGroup` — Account industry group. See the [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary) for valid values.
    
</dd>
</dl>

<dl>
<dd>

**industry_type:** `String` — Specific industry vertical for the account. See the [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary) for valid values.
    
</dd>
</dl>

<dl>
<dd>

**invoice_prefix:** `String` — Prefix used for account invoices.
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestLogo` — Account logo, used as the profile picture when creating a Whop-managed Facebook page. Image files up to 5 MB. Pass a JSON object containing an `id` from [Create File](/api-reference/files/create-file).
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Arbitrary key/value metadata to store on the account.
    
</dd>
</dl>

<dl>
<dd>

**onboarding_type:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestOnboardingType` — The type of onboarding the account has completed.
    
</dd>
</dl>

<dl>
<dd>

**opengraph_image:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestOpengraphImage` — Open Graph preview media used when the account is shared. Image and video files up to 5 MB. Pass a JSON object containing an `id` from [Create File](/api-reference/files/create-file).
    
</dd>
</dl>

<dl>
<dd>

**opengraph_image_variant:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestOpengraphImageVariant` — The account Open Graph image variant.
    
</dd>
</dl>

<dl>
<dd>

**other_business_description:** `String` — The description of the business type when business_type is other.
    
</dd>
</dl>

<dl>
<dd>

**other_industry_description:** `String` — The description of the industry type when industry_type is other.
    
</dd>
</dl>

<dl>
<dd>

**product_tax_code_id:** `String` — ID of the tax classification code applied by default to the account's products. See the available [product categories](https://docs.numeral.com/essentials/product-categories).
    
</dd>
</dl>

<dl>
<dd>

**require2fa:** `Internal::Types::Boolean` — Whether the account requires authorized users to have two-factor authentication enabled.
    
</dd>
</dl>

<dl>
<dd>

**route:** `String` — The unique URL slug for the account.
    
</dd>
</dl>

<dl>
<dd>

**send_customer_emails:** `Internal::Types::Boolean` — Whether Whop sends transactional emails to customers on behalf of this account.
    
</dd>
</dl>

<dl>
<dd>

**show_joined_whops:** `Internal::Types::Boolean` — Whether the account appears in joined whops on other accounts.
    
</dd>
</dl>

<dl>
<dd>

**show_reviews_dtc:** `Internal::Types::Boolean` — Whether reviews are displayed on direct-to-consumer product pages.
    
</dd>
</dl>

<dl>
<dd>

**show_user_directory:** `Internal::Types::Boolean` — Whether the account shows users in the user directory.
    
</dd>
</dl>

<dl>
<dd>

**social_links:** `Internal::Types::Array[Internal::Types::Hash[String, Object]]` — The full list of social links to display for the account.
    
</dd>
</dl>

<dl>
<dd>

**store_page_config:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestStorePageConfig` — Account store page display configuration.
    
</dd>
</dl>

<dl>
<dd>

**target_audience:** `String` — The target audience for this account.
    
</dd>
</dl>

<dl>
<dd>

**tax_collection_enabled_states:** `Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxCollectionEnabledStatesItem]` — US state codes (50 states plus `DC`) where the account collects tax. Replaces the full set on update. Only settable when `tax_remitted_by` is `self`.
    
</dd>
</dl>

<dl>
<dd>

**tax_identifiers:** `Internal::Types::Array[Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxIdentifiersItem]` — Account tax/VAT registrations to add or update. When `tax_remitted_by` is `self`, tax is calculated and collected only in the countries where the account holds a registration.
    
</dd>
</dl>

<dl>
<dd>

**tax_remitted_by:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxRemittedBy` — Determines whether Whop or the account calculates and remits tax. The account must provide a supported-country business address when it self-remits.
    
</dd>
</dl>

<dl>
<dd>

**tax_type:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxType` — Determines whether tax is included in the listed price or added at checkout.
    
</dd>
</dl>

<dl>
<dd>

**three_ds_level:** `Whop_sdk::Accounts::Types::UpdateAccountsRequestThreeDsLevel` — Account-level 3D Secure behavior. Set `mandate_challenge` to require cardholder verification on supported card payments, or `null` to use the standard checkout flow.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the account.
    
</dd>
</dl>

<dl>
<dd>

**use_logo_as_opengraph_image_fallback:** `Internal::Types::Boolean` — Whether the account uses its logo as the fallback Open Graph image.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">form_company</a>(id:, request) -> Whop_sdk::Accounts::Types::FormCompanyAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts an LLC or C-Corp formation for a business account. Defaults to an LLC; set `entity_type` to `c_corp` to form a C-Corp, which additionally requires `share_structure` and officer `roles` on every founder. On submission, the application is validated and the response returns a hosted checkout URL. Once paid, the filing is submitted. Track progress through the account's [`company_formation`](/api-reference/beta/accounts/retrieve-account) field on Retrieve Account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.form_company(
  id: "id",
  business_address: {
    city: "Austin",
    country: "US",
    line1: "4180 Burnet Rd",
    line2: "Suite 2",
    postal_code: "78756",
    state: "TX"
  },
  business_name: "Shine Time Auto Detailing",
  business_phone: "+15125550142",
  business_type: "brick_and_mortar",
  business_website: "https://shinetime.example",
  entity_suffix: "LLC",
  entity_type: "llc",
  expedite_ein: true,
  formation_state: "TX",
  founders: [{
    address: {
      city: "Austin",
      country: "US",
      line1: "907 Ridgemont Dr",
      line2: "Apt 4",
      postal_code: "78704",
      state: "TX"
    },
    date_of_birth: "1988-03-14",
    email: "marcus@shinetime.example",
    first_name: "Marcus",
    is_primary: true,
    last_name: "Webb",
    ownership_percentage: 100,
    phone: "+15125550142",
    roles: ["president"],
    ssn: "123-45-6789"
  }],
  industry_group: "automotive",
  industry_type: "car_wash",
  share_structure: {
    number_of_shares: 123,
    value: 123
  },
  use_registered_agent: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**business_address:** `Whop_sdk::Accounts::Types::FormCompanyAccountsRequestBusinessAddress` — Company mailing address. Required unless `use_registered_agent` is `true`.
    
</dd>
</dl>

<dl>
<dd>

**business_name:** `String` — Legal name for the new company.
    
</dd>
</dl>

<dl>
<dd>

**business_phone:** `String` — Business phone number in E.164 format, for example `+12125550100`. Required unless `use_registered_agent` is `true`.
    
</dd>
</dl>

<dl>
<dd>

**business_type:** `String` — High-level business category, from the Whop business taxonomy. Valid values are listed on [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary).
    
</dd>
</dl>

<dl>
<dd>

**business_website:** `String` — Company website URL.
    
</dd>
</dl>

<dl>
<dd>

**entity_suffix:** `Whop_sdk::Accounts::Types::FormCompanyAccountsRequestEntitySuffix` — Legal entity ending appended to `business_name`. LLC formations accept `LLC`, `L.L.C`, `L.L.C.` or `Limited Liability Company` and default to `LLC`; C-Corp formations accept `Inc`, `Inc.`, `Incorporated`, `Corp.`, `Corporation`, `C Corp`, `C Corporation`, `CCorp` or `Company` and default to `Inc.`. Unrecognized values fall back to the default for the entity type.
    
</dd>
</dl>

<dl>
<dd>

**entity_type:** `Whop_sdk::Accounts::Types::FormCompanyAccountsRequestEntityType` — Legal entity type to form. Defaults to `llc`.
    
</dd>
</dl>

<dl>
<dd>

**expedite_ein:** `Internal::Types::Boolean` — Request expedited EIN processing for an additional fee. Available only when no founder supplies an SSN.
    
</dd>
</dl>

<dl>
<dd>

**formation_state:** `Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFormationState` — Two-letter code of the US state (or `DC`) to form the company in.
    
</dd>
</dl>

<dl>
<dd>

**founders:** `Internal::Types::Array[Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFoundersItem]` — The company's founders. Exactly one must be marked `is_primary` — the responsible party for the filing.
    
</dd>
</dl>

<dl>
<dd>

**industry_group:** `String` — Industry group, from the Whop business taxonomy. Valid values are listed on [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary).
    
</dd>
</dl>

<dl>
<dd>

**industry_type:** `String` — Specific industry vertical, from the Whop business taxonomy. Valid values are listed on [business types and industries glossary](/api-reference/beta/accounts/account#business-types-and-industries-glossary).
    
</dd>
</dl>

<dl>
<dd>

**share_structure:** `Whop_sdk::Accounts::Types::FormCompanyAccountsRequestShareStructure` — Authorized share structure. Required when `entity_type` is `c_corp`; ignored for LLCs.
    
</dd>
</dl>

<dl>
<dd>

**use_registered_agent:** `Internal::Types::Boolean` — Use the registered agent's address as the company address instead of `business_address`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.<a href="/lib/whop_sdk/accounts/client.rb">transfer_ownership</a>(id:, request) -> Whop_sdk::Accounts::Types::TransferOwnershipAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Transfers ownership of the account to another user, identified by user ID or email address. If the recipient already holds the owner role, ownership moves immediately; otherwise they get an invite and ownership moves when they accept.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.transfer_ownership(
  id: "id",
  identifier: "marcus@shinetime.example"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**as_partner:** `Internal::Types::Boolean` — If true, the current owner is credited as the account's Whop partner, earning partner commission on its sales. Requires the current owner to already be an enrolled Whop partner. Skipped if the account already has an active partner.
    
</dd>
</dl>

<dl>
<dd>

**identifier:** `String` — The user to transfer ownership to: a user ID (`user_*`) or an email address. An email address with no Whop account yet is sent an invite to create one.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Ad Campaigns
<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">list</a>() -> Whop_sdk::AdCampaigns::Types::ListAdCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the ad campaigns for an account, with stats over the requested window.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account the campaigns belong to. Defaults to the account-scoped key's own account.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestStatus` — Only return campaigns with this status.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Filter campaigns by a title or ID substring.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestOrder` — The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestDirection` — The sort direction. Defaults to desc.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return campaigns created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return campaigns created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window. Defaults to all-time.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::AdCampaigns::Types::ListAdCampaignsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of campaigns to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of campaigns to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">create</a>(request) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an ad campaign for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.create(
  objective: "awareness",
  platform: "meta",
  title: "Now hiring mobile detailers — Austin"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to create the campaign under. Defaults to the account-scoped key's own account.
    
</dd>
</dl>

<dl>
<dd>

**bid_type:** `Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBidType` — How delivery bids in the ad auction: `minimum_cost` gets the most results for the budget, `average_target` holds an average cost per result, `maximum_target` never bids above a cap. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**budget_amount:** `Integer` — The campaign's budget, in the ad account's currency. Required when budget_optimization is `ad_campaign`; omit when each ad group sets its own budget.
    
</dd>
</dl>

<dl>
<dd>

**budget_optimization:** `Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBudgetOptimization` — Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group individually (`ad_group`). Defaults to `ad_group`.
    
</dd>
</dl>

<dl>
<dd>

**budget_type:** `Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestBudgetType` — Whether the budget is spent per day (`daily`) or over the campaign's full run (`lifetime`). Defaults to `daily`.
    
</dd>
</dl>

<dl>
<dd>

**desired_cost_per_result:** `Integer` — Cost per result to aim for (`average_target`) or never exceed (`maximum_target`). Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `String` — When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**objective:** `Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestObjective` — The goal the campaign optimizes toward.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestPlatform` — The ad network the campaign runs on.
    
</dd>
</dl>

<dl>
<dd>

**special_ad_categories:** `Internal::Types::Array[Whop_sdk::AdCampaigns::Types::CreateAdCampaignsRequestSpecialAdCategoriesItem]` — Regulated categories the campaign falls under. Ads in these categories are subject to extra targeting restrictions.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `String` — When the campaign starts delivering, as an ISO 8601 timestamp. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single ad campaign with stats over the requested window.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone the stats window is interpreted in. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::AdCampaigns::Types::RetrieveAdCampaignsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">delete</a>(id:) -> Whop_sdk::AdCampaigns::Types::DeleteAdCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an ad campaign and archives it on the ad platform (cascades to ad groups and ads).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">update</a>(id:, request) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an ad campaign's editable fields (title, budget, schedule, bid strategy, special ad categories, and, before launch, budget type and budget optimization), and launches a draft campaign by setting status to active. Objective and desired cost per result are fixed at creation and cannot be changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**bid_type:** `Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBidType` — How delivery bids in the ad auction: `minimum_cost` gets the most results for the budget, `average_target` holds an average cost per result, `maximum_target` never bids above a cap. Switching to `minimum_cost` clears the cap amounts stored on the campaign's ad groups. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**budget_amount:** `Integer` — The campaign budget, in the account's currency. Interpreted as daily or lifetime per the campaign's budget type, including a budget_type sent in the same request.
    
</dd>
</dl>

<dl>
<dd>

**budget_optimization:** `Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBudgetOptimization` — Which level owns the budget: the whole campaign (`ad_campaign`) or each ad group individually (`ad_group`). Only changeable before the campaign is live on the ad network; switching to `ad_campaign` requires budget_amount in the same request, and switching to `ad_group` clears the campaign budget.
    
</dd>
</dl>

<dl>
<dd>

**budget_type:** `Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestBudgetType` — Whether `budget_amount` is spent per day (`daily`) or over the campaign's full run (`lifetime`). Only changeable while the campaign is a draft; send budget_amount in the same request so the amount lands on the new type.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `String` — When the campaign stops delivering, as an ISO 8601 timestamp. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**special_ad_categories:** `Internal::Types::Array[Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestSpecialAdCategoriesItem]` — Regulated categories the campaign falls under. Editable on any campaign, draft or launched; pass an empty array to clear.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `String` — When the campaign starts delivering, as an ISO 8601 timestamp. Only for campaigns that own the budget.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AdCampaigns::Types::UpdateAdCampaignsRequestStatus` — Set to active to launch a draft campaign (moderates and pushes it live). Live-campaign pause and resume use the pause and unpause actions.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The name of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">duplicate</a>(id:, request) -> Whop_sdk::AdCampaigns::Types::DuplicateAdCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates copies of the campaign in `duplicating` status and returns them; each copy transitions to `draft` once duplication completes. Poll each returned campaign until it leaves `duplicating` — a copy that could not be completed is deleted and returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.duplicate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — Number of copies to create (1-10). Defaults to 1.
    
</dd>
</dl>

<dl>
<dd>

**preserve_engagement:** `Internal::Types::Boolean` — Whether the copied ads keep the original posts' engagement (likes, comments, shares). Defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">pause</a>(id:) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses an active ad campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.pause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">retry_payment</a>(id:) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retries billing for an ad campaign whose payment previously failed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.retry_payment(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_campaigns.<a href="/lib/whop_sdk/ad_campaigns/client.rb">unpause</a>(id:) -> Whop_sdk::Types::AdCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resumes a paused ad campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_campaigns.unpause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad campaign ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Ad Groups
<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">list</a>() -> Whop_sdk::AdGroups::Types::ListAdGroupsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists ad groups for the account, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.list(ad_campaign_ids: ["adcamp_xxxxxxxxxxxxxx"])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account whose ad groups to list. Defaults to the authenticated account.
    
</dd>
</dl>

<dl>
<dd>

**ad_campaign_id:** `String` — Filter to ad groups in this campaign.
    
</dd>
</dl>

<dl>
<dd>

**ad_campaign_ids:** `String` — Filter to ad groups in these campaigns (max 100). Repeat the parameter for each id (ad_campaign_ids=a&ad_campaign_ids=b).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AdGroups::Types::ListAdGroupsRequestStatus` — Filter to ad groups with this status.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Filter ad groups by a title or ID substring.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::AdGroups::Types::ListAdGroupsRequestOrder` — The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::AdGroups::Types::ListAdGroupsRequestDirection` — The sort direction. Defaults to desc.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return ad groups created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return ad groups created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window. Defaults to all-time.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::AdGroups::Types::ListAdGroupsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of ad groups to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of ad groups to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">create</a>(request) -> Whop_sdk::Types::AdGroup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an ad group (ad set) in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.create(ad_campaign_id: "adcamp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ad_campaign_id:** `String` — The ad campaign to create the ad group in, prefixed `adcamp_`.
    
</dd>
</dl>

<dl>
<dd>

**audiences:** `Whop_sdk::Types::AdGroupAudiencesBody` — Saved audiences to deliver to or exclude. Can't be combined with demographics.automatic.
    
</dd>
</dl>

<dl>
<dd>

**bid_type:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestBidType` — How delivery bids are set in the ad auction. Target-based strategies use `desired_cost_per_result`.
    
</dd>
</dl>

<dl>
<dd>

**budget_amount:** `Integer` — This ad group's budget, in the ad account's currency. Omit when the budget is set on the campaign instead.
    
</dd>
</dl>

<dl>
<dd>

**budget_type:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestBudgetType` — Whether budget_amount is spent per day (`daily`) or over the ad group's full run (`lifetime`).
    
</dd>
</dl>

<dl>
<dd>

**conversion_event:** `Whop_sdk::Types::ConversionEvent` 
    
</dd>
</dl>

<dl>
<dd>

**conversion_location:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestConversionLocation` — Where the outcome being optimized for occurs, such as a website visit, social-profile visit, messaging conversation, ad interaction, or lead-form submission. The lead form itself is set on the ad.
    
</dd>
</dl>

<dl>
<dd>

**demographics:** `Whop_sdk::Types::AdGroupDemographicsBody` — Age, gender, and automatic-audience targeting.
    
</dd>
</dl>

<dl>
<dd>

**desired_cost_per_result:** `Integer` — Cost per result to aim for (`average_target`) or never exceed (`maximum_target`).
    
</dd>
</dl>

<dl>
<dd>

**detailed_targeting:** `Whop_sdk::Types::AdGroupDetailedTargetingBody` — Interest, behavior, and demographic targeting, using categories from the ad platform's targeting taxonomy. Entries across interests, behaviors, and demographics are OR'd together (anyone matching any entry is reached), matching Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be combined with demographics.automatic, and unavailable to campaigns with special_ad_categories. Send the complete intended state — a section you omit is cleared.
    
</dd>
</dl>

<dl>
<dd>

**devices:** `Whop_sdk::Types::AdGroupDevicesBody` — Device platforms and operating systems to target.
    
</dd>
</dl>

<dl>
<dd>

**dynamic_creative:** `Internal::Types::Boolean` — Let the ad platform automatically mix and match this ad group's creatives and copy to find the best-performing combinations. Set at creation; can't be changed afterward.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `String` — When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until paused.
    
</dd>
</dl>

<dl>
<dd>

**frequency_cap:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestFrequencyCap` — Cap on how often one person sees ads from this ad group. Only available on campaigns with the `awareness` objective.
    
</dd>
</dl>

<dl>
<dd>

**languages:** `Internal::Types::Array[String]` — Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted targets all languages.
    
</dd>
</dl>

<dl>
<dd>

**message_apps:** `Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestMessageAppsItem]` — Apps the conversation opens in. Required when setting `conversion_location` to `messaging`, and rejected unless the ad group's conversion location is `messaging`.
    
</dd>
</dl>

<dl>
<dd>

**minimum_daily_spend:** `Integer` — Minimum the ad group tries to spend each day.
    
</dd>
</dl>

<dl>
<dd>

**optimization_goal:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestOptimizationGoal` — The result the ad group's delivery is optimized to get the most of.
    
</dd>
</dl>

<dl>
<dd>

**placements:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestPlacements` 

`automatic` to let the ad platform choose placements, or the list of platforms and positions to target. Omit a platform's positions to target all of them.

Valid positions per platform:

- `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`, `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`, `facebook_reels_overlay`, `biz_disco_feed`
- `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`, `profile_feed`, `profile_reels`, `ig_search`
- `messenger`: `story`
- `audience_network`: `classic`, `rewarded_video`
- `threads`: `threads_stream`
- `whatsapp`: `status`
    
</dd>
</dl>

<dl>
<dd>

**regions:** `Whop_sdk::Types::AdGroupRegionsBody` — Locations to target and exclude.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `String` — When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as soon as it's active.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AdGroups::Types::CreateAdGroupsRequestStatus` — Initial status (default: `active`).
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the ad group.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">estimate_reach</a>(request) -> Whop_sdk::Types::ReachEstimate</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Estimates how many people a draft targeting spec can reach, before an ad group is created. The body takes the same targeting fields as creating an ad group — `regions`, `demographics`, `detailed_targeting`, `audiences`, `languages`, and `devices` — and nothing is persisted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.estimate_reach(platform: "meta")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account to estimate on behalf of. Defaults to the authenticated account.
    
</dd>
</dl>

<dl>
<dd>

**audiences:** `Whop_sdk::Types::AdGroupAudiencesBody` — Saved audiences to deliver to or exclude. Can't be combined with demographics.automatic.
    
</dd>
</dl>

<dl>
<dd>

**demographics:** `Whop_sdk::Types::AdGroupDemographicsBody` — Age, gender, and automatic-audience targeting.
    
</dd>
</dl>

<dl>
<dd>

**detailed_targeting:** `Whop_sdk::Types::AdGroupDetailedTargetingBody` — Interest, behavior, and demographic targeting, using categories from the ad platform's targeting taxonomy. At most 100 entries per section.
    
</dd>
</dl>

<dl>
<dd>

**devices:** `Whop_sdk::Types::AdGroupDevicesBody` — Device platforms and operating systems to target.
    
</dd>
</dl>

<dl>
<dd>

**languages:** `Internal::Types::Array[String]` — Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted targets all languages.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::AdGroups::Types::EstimateReachAdGroupsRequestPlatform` — The ad network the estimate runs on.
    
</dd>
</dl>

<dl>
<dd>

**regions:** `Whop_sdk::Types::AdGroupRegionsBody` — Locations to target and exclude.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">search_targeting_options</a>() -> Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Searches the ad platform's targeting taxonomy for options to target an ad group with. Each result comes back in the exact shape the ad-group body accepts for its `type`, so it can be used in `detailed_targeting`, `regions`, or `languages` as-is. A blank `query` browses the small fixed lists (behaviors, browse demographic categories, languages); interests, work employers, job titles, schools, majors, and locations need a search term.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.search_targeting_options(platform: "meta")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account to search on behalf of. Defaults to the authenticated account.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestPlatform` — The ad network whose targeting taxonomy to search.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — The search term. Blank browses the fixed lists; interests, work employers, job titles, schools, majors, and locations return nothing without one.
    
</dd>
</dl>

<dl>
<dd>

**types:** `Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestTypesItem` — Kinds of targeting options to search. Defaults to all of them.
    
</dd>
</dl>

<dl>
<dd>

**location_types:** `Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestLocationTypesItem` — Narrow location results to these kinds of places. Only applies when `types` includes `locations`.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Narrow location results to one country, as an ISO 3166-1 code such as `US`. Only applies when `types` includes `locations`.
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of results per requested type.
    
</dd>
</dl>

<dl>
<dd>

**special_ad_categories:** `Whop_sdk::AdGroups::Types::SearchTargetingOptionsAdGroupsRequestSpecialAdCategoriesItem` — The campaign's declared special ad categories. Under `housing`, `employment`, or `financial_products` the ad platform allows interests only, drawn from a short approved list, so results are narrowed to what such a campaign can launch with and other kinds return nothing. Blank `query` browses that approved list instead of the usual fixed lists.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AdGroup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single ad group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone the stats window is interpreted in. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::AdGroups::Types::RetrieveAdGroupsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">delete</a>(id:) -> Whop_sdk::AdGroups::Types::DeleteAdGroupsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an ad group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">update</a>(id:, request) -> Whop_sdk::Types::AdGroup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an ad group's editable fields. Only the keys you send are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**audiences:** `Whop_sdk::Types::AdGroupAudiencesBody` — Saved audiences to deliver to or exclude. Can't be combined with demographics.automatic.
    
</dd>
</dl>

<dl>
<dd>

**bid_type:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestBidType` — How delivery bids are set in the ad auction. Target-based strategies use `desired_cost_per_result`.
    
</dd>
</dl>

<dl>
<dd>

**budget_amount:** `Integer` — This ad group's budget, in the ad account's currency. Omit when the budget is set on the campaign instead.
    
</dd>
</dl>

<dl>
<dd>

**budget_type:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestBudgetType` — Whether budget_amount is spent per day (`daily`) or over the ad group's full run (`lifetime`).
    
</dd>
</dl>

<dl>
<dd>

**conversion_event:** `Whop_sdk::Types::ConversionEvent` 
    
</dd>
</dl>

<dl>
<dd>

**conversion_location:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestConversionLocation` — Where the outcome being optimized for occurs, such as a website visit, social-profile visit, messaging conversation, ad interaction, or lead-form submission. The lead form itself is set on the ad.
    
</dd>
</dl>

<dl>
<dd>

**demographics:** `Whop_sdk::Types::AdGroupDemographicsBody` — Age, gender, and automatic-audience targeting.
    
</dd>
</dl>

<dl>
<dd>

**desired_cost_per_result:** `Integer` — Cost per result to aim for (`average_target`) or never exceed (`maximum_target`).
    
</dd>
</dl>

<dl>
<dd>

**detailed_targeting:** `Whop_sdk::Types::AdGroupDetailedTargetingBody` — Interest, behavior, and demographic targeting, using categories from the ad platform's targeting taxonomy. Entries across interests, behaviors, and demographics are OR'd together (anyone matching any entry is reached), matching Ads Manager's detailed-targeting box. At most 100 entries per section. Can't be combined with demographics.automatic, and unavailable to campaigns with special_ad_categories. Send the complete intended state — a section you omit is cleared.
    
</dd>
</dl>

<dl>
<dd>

**devices:** `Whop_sdk::Types::AdGroupDevicesBody` — Device platforms and operating systems to target.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `String` — When the ad group stops delivering, as an ISO 8601 timestamp. Omit to run until paused.
    
</dd>
</dl>

<dl>
<dd>

**frequency_cap:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestFrequencyCap` — Cap on how often one person sees ads from this ad group. Only available on campaigns with the `awareness` objective.
    
</dd>
</dl>

<dl>
<dd>

**languages:** `Internal::Types::Array[String]` — Languages to target, as ISO 639 codes such as `en` or `es`. Empty or omitted targets all languages.
    
</dd>
</dl>

<dl>
<dd>

**message_apps:** `Internal::Types::Array[Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestMessageAppsItem]` — Apps the conversation opens in. Required when setting `conversion_location` to `messaging`, and rejected unless the ad group's conversion location is `messaging`.
    
</dd>
</dl>

<dl>
<dd>

**minimum_daily_spend:** `Integer` — Minimum the ad group tries to spend each day.
    
</dd>
</dl>

<dl>
<dd>

**optimization_goal:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestOptimizationGoal` — The result the ad group's delivery is optimized to get the most of.
    
</dd>
</dl>

<dl>
<dd>

**placements:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestPlacements` 

`automatic` to let the ad platform choose placements, or the list of platforms and positions to target. Omit a platform's positions to target all of them.

Valid positions per platform:

- `facebook`: `feed`, `right_hand_column`, `marketplace`, `search`, `profile_feed`, `notification`, `story`, `instream_video`, `facebook_reels`, `facebook_reels_overlay`, `biz_disco_feed`
- `instagram`: `stream`, `story`, `explore`, `explore_home`, `reels`, `profile_feed`, `profile_reels`, `ig_search`
- `messenger`: `story`
- `audience_network`: `classic`, `rewarded_video`
- `threads`: `threads_stream`
- `whatsapp`: `status`
    
</dd>
</dl>

<dl>
<dd>

**regions:** `Whop_sdk::Types::AdGroupRegionsBody` — Locations to target and exclude.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `String` — When the ad group starts delivering, as an ISO 8601 timestamp. Omit to start as soon as it's active.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AdGroups::Types::UpdateAdGroupsRequestStatus` — Initial status (default: `active`).
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the ad group.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">duplicate</a>(id:, request) -> Whop_sdk::AdGroups::Types::DuplicateAdGroupsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates copies of the ad group in `duplicating` status and returns them — into its own campaign, or into target_ad_campaign_id (which must belong to the same account and be compatible with the ad group's targeting and goals); each copy transitions to its final status (matching the source's active/paused state) once duplication completes. Poll each returned ad group until it leaves `duplicating` — a copy that could not be completed is deleted and returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.duplicate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — Number of copies to create (1-10). Defaults to 1.
    
</dd>
</dl>

<dl>
<dd>

**preserve_engagement:** `Internal::Types::Boolean` — Whether the copied ads keep the original posts' engagement (likes, comments, shares). Defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**target_ad_campaign_id:** `String` — Campaign to duplicate into. Defaults to the ad group's own campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">pause</a>(id:) -> Whop_sdk::Types::AdGroup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses delivery of an ad group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.pause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ad_groups.<a href="/lib/whop_sdk/ad_groups/client.rb">unpause</a>(id:) -> Whop_sdk::Types::AdGroup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resumes delivery of a paused ad group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_groups.unpause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad group ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdGroups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AdReports
<details><summary><code>client.ad_reports.<a href="/lib/whop_sdk/ad_reports/client.rb">retrieve</a>() -> Whop_sdk::Types::AdReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Performance report for a company, ad campaigns, ad groups, or ads. Always returns aggregate `summary` totals summed across the scope. Set `granularity` to additionally get a time series, or set `breakdown` (`campaign`/`ad_group`/`ad`) to additionally get per-entity rows inside the requested scope. Exactly one of `companyId`, `adCampaignIds`, `adGroupIds`, or `adIds` must be provided.

Required permissions:
 - `ad_campaign:stats:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ad_reports.retrieve(
  company_id: "biz_xxxxxxxxxxxxxx",
  from: "2023-12-01T05:00:00Z",
  to: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ad_campaign_ids:** `String` — Scope the report to these ad campaigns (max 100); stats are summed across them. Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
    
</dd>
</dl>

<dl>
<dd>

**ad_group_ids:** `String` — Scope the report to these ad groups (max 100); stats are summed across them. Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
    
</dd>
</dl>

<dl>
<dd>

**ad_ids:** `String` — Scope the report to these ads (max 100); stats are summed across them. Mutually exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
    
</dd>
</dl>

<dl>
<dd>

**breakdown:** `Whop_sdk::Types::AdReportBreakdownLevels` 
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of a company. Mutually exclusive with `adCampaignIds`, `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every campaign, ad group, or ad in the company without paging.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — ISO 4217 currency code to report `spend` in. Defaults to the company's ads reporting currency.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Inclusive start of the reporting window.
    
</dd>
</dl>

<dl>
<dd>

**granularity:** `Whop_sdk::Types::Granularities` 
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Inclusive end of the reporting window.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AdReports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Ads
<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">list</a>() -> Whop_sdk::Ads::Types::ListAdsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the ads for an account, with stats over the requested window.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.list(
  ad_campaign_ids: ["adcamp_xxxxxxxxxxxxxx"],
  ad_group_ids: ["adgrp_xxxxxxxxxxxxxx"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account the ads belong to. Defaults to the account-scoped key's own account.
    
</dd>
</dl>

<dl>
<dd>

**ad_campaign_id:** `String` — Only return ads in this ad campaign.
    
</dd>
</dl>

<dl>
<dd>

**ad_campaign_ids:** `String` — Only return ads in these ad campaigns (max 100). Repeat the parameter for each id (ad_campaign_ids=a&ad_campaign_ids=b).
    
</dd>
</dl>

<dl>
<dd>

**ad_group_id:** `String` — Only return ads in this ad group.
    
</dd>
</dl>

<dl>
<dd>

**ad_group_ids:** `String` — Only return ads in these ad groups (max 100). Repeat the parameter for each id (ad_group_ids=a&ad_group_ids=b).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Ads::Types::ListAdsRequestStatus` — Only return ads with this status.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Filter ads by a title or ID substring.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Ads::Types::ListAdsRequestOrder` — The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Ads::Types::ListAdsRequestDirection` — The sort direction. Defaults to desc.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return ads created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return ads created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window. Defaults to all-time.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::Ads::Types::ListAdsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of ads to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of ads to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">create</a>(request) -> Whop_sdk::Types::Ad</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an ad in an ad group.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ad_group:** `Internal::Types::Hash[String, Object]` — An inline ad group to create (same shape as POST /ad_groups, including ad_campaign_id). Creates the ad group and the ad together. Provide this OR ad_group_id.
    
</dd>
</dl>

<dl>
<dd>

**ad_group_id:** `String` — The existing ad group to create the ad in. Provide this OR ad_group, not both.
    
</dd>
</dl>

<dl>
<dd>

**call_to_action:** `Whop_sdk::Ads::Types::CreateAdsRequestCallToAction` — The call-to-action button shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**creatives:** `Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestCreativesItem]` — The ad's creative assets. Each entry is an uploaded file id with an optional format; omit format for the original asset. Two or more entries with no format become a carousel (2-10 attachments), in order, sharing the ad's copy.
    
</dd>
</dl>

<dl>
<dd>

**descriptions:** `Internal::Types::Array[String]` — The description variants shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**existing_post_id:** `String` — Promote a post you already published instead of uploading creatives — a Facebook post or Instagram media id. Mutually exclusive with creatives. Pair with post_source.
    
</dd>
</dl>

<dl>
<dd>

**headlines:** `Internal::Types::Array[String]` — The headline variants shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**lead_form:** `Whop_sdk::Ads::Types::CreateAdsRequestLeadForm` — Instant lead form for the ad. Only allowed when the ad group's conversion_location is an instant-form destination (instant_forms, instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with lead_form_id.
    
</dd>
</dl>

<dl>
<dd>

**lead_form_id:** `String` — Use an existing instant form instead of creating one — the form's platform ID, from a form already on the ad's Facebook page. Only allowed when the ad group's conversion_location is an instant-form destination. Mutually exclusive with lead_form.
    
</dd>
</dl>

<dl>
<dd>

**messaging_config:** `Whop_sdk::Ads::Types::CreateAdsRequestMessagingConfig` — Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt (keyword).
    
</dd>
</dl>

<dl>
<dd>

**multi_advertiser_ads:** `Internal::Types::Boolean` — Whether the ad can appear alongside other advertisers' ads in the same unit. Defaults to true.
    
</dd>
</dl>

<dl>
<dd>

**post_source:** `Whop_sdk::Ads::Types::CreateAdsRequestPostSource` — Identifies the network that owns `existing_post_id`. The source is inferred from the ID shape when omitted.
    
</dd>
</dl>

<dl>
<dd>

**primary_texts:** `Internal::Types::Array[String]` — The primary text variants shown in the ad body.
    
</dd>
</dl>

<dl>
<dd>

**social_accounts:** `Internal::Types::Array[Whop_sdk::Ads::Types::CreateAdsRequestSocialAccountsItem]` — The social accounts the ad runs under — a connected Facebook page and, optionally, an Instagram profile.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the ad.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL the ad links to. Query parameters are merged into url_parameters, so the stored URL is always bare.
    
</dd>
</dl>

<dl>
<dd>

**url_parameters:** `Internal::Types::Hash[String, Object]` — Query parameters to append to the destination URL, keyed by parameter name. Merged with any query string on `url`. Whop adds its own click-attribution parameters; those are reserved and rejected if you set them (utm_meta_ad_id, utm_meta_adset_id, utm_meta_campaign_id, utm_source, utm_placement, utm_medium, utm_content, utm_adset, utm_whop, wacid, wasid, waid, tw_source, tw_adid).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Ad</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single ad with stats over the requested window.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**stats_from:** `String` — Start of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**stats_to:** `String` — End of the stats window.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone the stats window is interpreted in. Defaults to UTC.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::Ads::Types::RetrieveAdsRequestAttributionModel` — Attribution model the conversion stats count under (defaults to last_touch). Under both models a journey with any whop ad touch attributes to whop; the model picks which whop touch credits the entity and which non-whop source wins otherwise.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">delete</a>(id:) -> Whop_sdk::Ads::Types::DeleteAdsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Ad</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an ad's editable fields.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**call_to_action:** `Whop_sdk::Ads::Types::UpdateAdsRequestCallToAction` — The call-to-action button shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**creatives:** `Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestCreativesItem]` — The ad's creative assets. Each entry is an uploaded file id with an optional format; omit format for the original asset. Replaces a live ad's creative on the platform. Two or more entries with no format replace it with a carousel (2-10 attachments), in order, sharing the ad's copy.
    
</dd>
</dl>

<dl>
<dd>

**descriptions:** `Internal::Types::Array[String]` — The description variants shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**existing_post_id:** `String` — Promote a post you already published instead of uploading creatives — a Facebook post or Instagram media id. Mutually exclusive with creatives. Pair with post_source.
    
</dd>
</dl>

<dl>
<dd>

**headlines:** `Internal::Types::Array[String]` — The headline variants shown on the ad.
    
</dd>
</dl>

<dl>
<dd>

**lead_form:** `Whop_sdk::Ads::Types::UpdateAdsRequestLeadForm` — Instant lead form for the ad. Only allowed when the ad group's conversion_location is an instant-form destination (instant_forms, instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with lead_form_id.
    
</dd>
</dl>

<dl>
<dd>

**lead_form_id:** `String` — Use an existing instant form instead of creating one — the form's platform ID, from a form already on the ad's Facebook page. Only allowed when the ad group's conversion_location is an instant-form destination. Mutually exclusive with lead_form. Replaces a stored lead_form.
    
</dd>
</dl>

<dl>
<dd>

**messaging_config:** `Whop_sdk::Ads::Types::UpdateAdsRequestMessagingConfig` — Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt (keyword).
    
</dd>
</dl>

<dl>
<dd>

**multi_advertiser_ads:** `Internal::Types::Boolean` — Whether the ad can appear alongside other advertisers' ads in the same unit. Defaults to true.
    
</dd>
</dl>

<dl>
<dd>

**post_source:** `Whop_sdk::Ads::Types::UpdateAdsRequestPostSource` — Identifies the network that owns `existing_post_id`. The source is inferred from the ID shape when omitted.
    
</dd>
</dl>

<dl>
<dd>

**primary_texts:** `Internal::Types::Array[String]` — The primary text variants shown in the ad body.
    
</dd>
</dl>

<dl>
<dd>

**social_accounts:** `Internal::Types::Array[Whop_sdk::Ads::Types::UpdateAdsRequestSocialAccountsItem]` — The social accounts the ad runs under — a connected Facebook page and, optionally, an Instagram profile.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the ad.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL the ad links to. Query parameters are merged into url_parameters, so the stored URL is always bare.
    
</dd>
</dl>

<dl>
<dd>

**url_parameters:** `Internal::Types::Hash[String, Object]` — Query parameters to append to the destination URL, keyed by parameter name. Merged with any query string on `url`. Whop adds its own click-attribution parameters; those are reserved and rejected if you set them (utm_meta_ad_id, utm_meta_adset_id, utm_meta_campaign_id, utm_source, utm_placement, utm_medium, utm_content, utm_adset, utm_whop, wacid, wasid, waid, tw_source, tw_adid).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">duplicate</a>(id:, request) -> Whop_sdk::Ads::Types::DuplicateAdsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Copies the ad into its own ad group, or into target_ad_group_id (which must belong to the same account and be compatible with the ad). Copies keep the source ad's active/paused state.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.duplicate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — Number of copies to create (1-10). Defaults to 1.
    
</dd>
</dl>

<dl>
<dd>

**preserve_engagement:** `Internal::Types::Boolean` — Whether the copies keep the original post's engagement (likes, comments, shares). Defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**target_ad_group_id:** `String` — Ad group to duplicate into. Defaults to the ad's own ad group.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">pause</a>(id:) -> Whop_sdk::Types::Ad</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses an active ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.pause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ads.<a href="/lib/whop_sdk/ads/client.rb">unpause</a>(id:) -> Whop_sdk::Types::Ad</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resumes a paused ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ads.unpause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ad ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Ads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Affiliates
<details><summary><code>client.affiliates.<a href="/lib/whop_sdk/affiliates/client.rb">list</a>() -> Whop_sdk::Affiliates::Types::ListAffiliatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of affiliates for the actor in context, with optional filtering by status, search, and sorting.

Required permissions:
 - `affiliate:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list affiliates for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Types::AffiliatesSortableColumns` 
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search affiliates by username.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Types::Status` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.<a href="/lib/whop_sdk/affiliates/client.rb">create</a>(request) -> Whop_sdk::Types::Affiliate</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or finds an affiliate for a company and user.

Required permissions:
 - `affiliate:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  user_identifier: "user_identifier"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The ID of the company to create the affiliate for.
    
</dd>
</dl>

<dl>
<dd>

**user_identifier:** `String` — The user identifier (username, email, user ID, or Discord ID).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.<a href="/lib/whop_sdk/affiliates/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Affiliate</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing affiliate.

Required permissions:
 - `affiliate:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.retrieve(id: "aff_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the affiliate.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.<a href="/lib/whop_sdk/affiliates/client.rb">archive</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives an existing Affiliate

Required permissions:
 - `affiliate:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.archive(id: "aff_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The internal ID of the affiliate to archive.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.<a href="/lib/whop_sdk/affiliates/client.rb">unarchive</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unarchives an existing Affiliate

Required permissions:
 - `affiliate:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.unarchive(id: "aff_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The internal ID of the affiliate to archive.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AiChats
<details><summary><code>client.ai_chats.<a href="/lib/whop_sdk/ai_chats/client.rb">list</a>() -> Whop_sdk::AiChats::Types::ListAiChatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of AI chat threads for the current authenticated user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ai_chats.list(
  first: 42,
  last: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**only_active_crons:** `Internal::Types::Boolean` — When true, returns only chats with an active cron schedule
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AiChats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ai_chats.<a href="/lib/whop_sdk/ai_chats/client.rb">create</a>(request) -> Whop_sdk::Types::AiChat</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new AI chat thread and send the first message to the AI agent.

Required permissions:
 - `ai_chat:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ai_chats.create(message_text: "message_text")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**current_company_id:** `String` — The unique identifier of the company to set as context for the AI chat (e.g., "biz_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**message_attachments:** `Internal::Types::Array[Whop_sdk::AiChats::Types::CreateAiChatsRequestMessageAttachmentsItem]` — A list of previously uploaded file attachments to include with the first message.
    
</dd>
</dl>

<dl>
<dd>

**message_source:** `Whop_sdk::Types::AiChatMessageSourceTypes` — The source of the message.
    
</dd>
</dl>

<dl>
<dd>

**message_text:** `String` — The text content of the first message to send to the AI agent.
    
</dd>
</dl>

<dl>
<dd>

**suggestion_type:** `String` — The type of suggestion prompt that was clicked, when message_source is 'suggestion'.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — An optional display title for the AI chat thread (e.g., "Help with billing").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AiChats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ai_chats.<a href="/lib/whop_sdk/ai_chats/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AiChat</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing AI chat.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ai_chats.retrieve(id: "aich_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the AI chat to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AiChats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ai_chats.<a href="/lib/whop_sdk/ai_chats/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an AI chat thread so it no longer appears in the user's chat list.

Required permissions:
 - `ai_chat:delete`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ai_chats.delete(id: "aich_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the AI chat to delete (e.g., "ai_chat_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AiChats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ai_chats.<a href="/lib/whop_sdk/ai_chats/client.rb">update</a>(id:, request) -> Whop_sdk::Types::AiChat</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an AI chat's title, notification preferences, or associated company context.

Required permissions:
 - `ai_chat:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ai_chats.update(id: "aich_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the AI chat to update (e.g., "ai_chat_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**current_company_id:** `String` — The unique identifier of the company to set as context for the AI chat (e.g., "biz_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**notification_preference:** `Whop_sdk::Types::AiChatNotificationPreferences` — The notification preference for the AI chat.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The new display title for the AI chat thread (e.g., "Help with billing").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AiChats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## API Keys
<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">list</a>() -> Whop_sdk::APIKeys::Types::ListAPIKeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the API keys of an account or app, newest first. Responses never include the full secret — only its obfuscated form.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.list(
  resource_id: "resource_id",
  resource_type: "account"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**resource_id:** `String` — The account (`biz_`) or app (`app_`) tag to list API keys for.
    
</dd>
</dl>

<dl>
<dd>

**resource_type:** `Whop_sdk::APIKeys::Types::ListAPIKeysRequestResourceType` — The type of resource that owns the API keys.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `Whop_sdk::Types::ListAPIKeysRequestCreatedBefore` — Only return API keys created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `Whop_sdk::Types::ListAPIKeysRequestCreatedAfter` — Only return API keys created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of API keys to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns API keys after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of API keys to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns API keys before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::APIKeys::Types::ListAPIKeysRequestOrder` — The field to sort API keys by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::APIKeys::Types::ListAPIKeysRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">create</a>(request) -> Whop_sdk::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an API key for an account or app. The response is the only place the full `secret_key` is returned — store it immediately. Requires a user session; API keys cannot manage API keys.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.create(
  name: "Shine Time Booking (production)",
  permissions: {},
  resource_id: "biz_xxxxxxxxxxxxxx",
  resource_type: "account"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_version_date:** `Whop_sdk::APIKeys::Types::CreateAPIKeysRequestAPIVersionDate` — Dated API version used when requests authenticated with this key omit the `Api-Version-Date` header. New keys default to the latest version.
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — When the API key should stop working, as an ISO 8601 timestamp. Omit (or pass `null` on update) for a key that never expires.
    
</dd>
</dl>

<dl>
<dd>

**ip_allowlist:** `Internal::Types::Array[String]` — IPv4/IPv6 CIDR ranges allowed to use this key, for example `["203.0.113.0/24"]`. Empty or `null` allows any IP.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — A human-readable name for the API key, such as 'Production API Key'.
    
</dd>
</dl>

<dl>
<dd>

**permissions:** `Whop_sdk::APIKeys::Types::CreateAPIKeysRequestPermissions` — The permissions policy for the API key: explicit permission statements, or a system role to inherit from. Statements without a `resources` array default to the owning account (Account API keys) or every key-addressable resource (App API keys).
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — The account (`biz_`) or app (`app_`) tag to create the API key for.
    
</dd>
</dl>

<dl>
<dd>

**resource_type:** `Whop_sdk::APIKeys::Types::CreateAPIKeysRequestResourceType` — The type of resource that will own this API key.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">list_permissions</a>() -> Whop_sdk::APIKeys::Types::ListPermissionsAPIKeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the catalog of permission actions that can be granted to users, apps, and API keys — the source for the dashboard's permission pickers. Small and returned in full on one page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.list_permissions
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an API key with its effective permission grants. The full secret is never returned — rotate the key if it was lost.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — API key ID, prefixed `apik_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">delete</a>(id:) -> Whop_sdk::APIKeys::Types::DeleteAPIKeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently revokes an API key; requests using its secret stop authenticating immediately. Default and agent-backend keys cannot be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — API key ID, prefixed `apik_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">update</a>(id:, request) -> Whop_sdk::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an API key's name, permissions, API version, expiration, or IP allowlist. Fields that are omitted keep their current value; default keys cannot be modified.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — API key ID, prefixed `apik_`.
    
</dd>
</dl>

<dl>
<dd>

**api_version_date:** `Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestAPIVersionDate` — Dated API version used when requests authenticated with this key omit the `Api-Version-Date` header. New keys default to the latest version.
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — When the API key should stop working, as an ISO 8601 timestamp. Omit (or pass `null` on update) for a key that never expires.
    
</dd>
</dl>

<dl>
<dd>

**ip_allowlist:** `Internal::Types::Array[String]` — IPv4/IPv6 CIDR ranges allowed to use this key, for example `["203.0.113.0/24"]`. Empty or `null` allows any IP.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — A new human-readable name for the API key.
    
</dd>
</dl>

<dl>
<dd>

**permissions:** `Whop_sdk::APIKeys::Types::UpdateAPIKeysRequestPermissions` — The permissions policy for the API key: explicit permission statements, or a system role to inherit from. Statements without a `resources` array default to the owning account (Account API keys) or every key-addressable resource (App API keys).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.api_keys.<a href="/lib/whop_sdk/api_keys/client.rb">rotate</a>(id:) -> Whop_sdk::Types::APIKey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Rotates the API key's secret, invalidating the previous secret immediately. The response is the only place the new `secret_key` is returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.api_keys.rotate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — API key ID, prefixed `apik_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::APIKeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## App Builds
<details><summary><code>client.app_builds.<a href="/lib/whop_sdk/app_builds/client.rb">list</a>() -> Whop_sdk::AppBuilds::Types::ListAppBuildsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of build artifacts for an app, newest first, with optional platform, status, and creation-date filters.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.app_builds.list(app_id: "app_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `String` — The app to list builds for, prefixed `app_`.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::AppBuilds::Types::ListAppBuildsRequestPlatform` — Filter builds by target platform.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::AppBuilds::Types::ListAppBuildsRequestStatus` — Filter builds by review status.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `Whop_sdk::Types::ListAppBuildsRequestCreatedBefore` — Only return builds created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `Whop_sdk::Types::ListAppBuildsRequestCreatedAfter` — Only return builds created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of builds to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns builds after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of builds to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns builds before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AppBuilds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.app_builds.<a href="/lib/whop_sdk/app_builds/client.rb">create</a>(request) -> Whop_sdk::Types::AppBuild</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Uploads a new build artifact for an app. Upload the file first (POST /files or a direct upload), then reference it here; iOS and Android take a .zip bundle, web takes a JavaScript file or a .zip archive of the hosted site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.app_builds.create(
  attachment: {},
  checksum: "xxxxxxxxxxxxxxx",
  platform: "ios"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ai_prompt_id:** `String` — The AI prompt that generated this build, if applicable.
    
</dd>
</dl>

<dl>
<dd>

**app_id:** `String` — The app to create the build for, prefixed `app_`. Defaults to the app behind the presented credential.
    
</dd>
</dl>

<dl>
<dd>

**attachment:** `Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestAttachment` — The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }` for a completed direct upload.
    
</dd>
</dl>

<dl>
<dd>

**checksum:** `String` — A client-generated checksum of the build file, used to verify file integrity when unpacked.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestPlatform` — The target platform for the build.
    
</dd>
</dl>

<dl>
<dd>

**source_attachment:** `Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestSourceAttachment` — An optional compressed archive (.zip or .gz) of the source code that produced this build, stored alongside the build so it can be downloaded later. Referenced like `attachment`, and must be a different file.
    
</dd>
</dl>

<dl>
<dd>

**supported_app_view_types:** `Internal::Types::Array[Whop_sdk::AppBuilds::Types::CreateAppBuildsRequestSupportedAppViewTypesItem]` — The view types this build supports. Only list the ones its code implements.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AppBuilds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.app_builds.<a href="/lib/whop_sdk/app_builds/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AppBuild</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing app build.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.app_builds.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App build ID, prefixed `abld_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AppBuilds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.app_builds.<a href="/lib/whop_sdk/app_builds/client.rb">promote</a>(id:) -> Whop_sdk::Types::AppBuild</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Promotes a draft or approved app build to production so it becomes the active version served to users. Draft builds enter review first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.app_builds.promote(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App build ID, prefixed `abld_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AppBuilds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Apps
<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">list</a>() -> Whop_sdk::Apps::Types::ListAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists apps on the Whop platform: the app store's live apps, or — with `account_id` and developer access to that account — every app the account owns. Requires authentication except for Whop's public app and website discovery lists. Public website discovery includes built official blueprints (verified apps with a product) and built, live community blueprints that Whop recommends.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Only return apps created by this account (`biz_` tag). With developer access to the account this includes its unlisted and hidden apps.
    
</dd>
</dl>

<dl>
<dd>

**app_type:** `Whop_sdk::Apps::Types::ListAppsRequestAppType` — Filter apps by the type of end-user they are built for. Apps of type `website` are left out unless you ask for them by name.
    
</dd>
</dl>

<dl>
<dd>

**view_type:** `Whop_sdk::Apps::Types::ListAppsRequestViewType` — Only return apps supporting this view type, such as `dashboard` or `hub`.
    
</dd>
</dl>

<dl>
<dd>

**verified:** `Internal::Types::Boolean` — Only return apps whose Whop verification status matches this value. Omit this filter to include every verification status the caller can see.
    
</dd>
</dl>

<dl>
<dd>

**verified_apps_only:** `Internal::Types::Boolean` — Legacy compatibility filter. Use `verified` for field equality. `true` returns verified apps; clients pinned before `2026-08-25-2` retain the earlier public website discovery behavior.
    
</dd>
</dl>

<dl>
<dd>

**recommended:** `Internal::Types::Boolean` — Only return apps Whop recommends (or, with `false`, only those it does not), independently of verification status.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — A search string matched against app names.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Apps::Types::ListAppsRequestOrder` — The field to sort apps by. Defaults to discoverable_at, showing the most recently published apps first. `template_usage` ranks Whop-verified apps first, then apps with a banner image, then by how many apps were created from each app as a template.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Apps::Types::ListAppsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of apps to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns apps after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of apps to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns apps before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">create</a>(request) -> Whop_sdk::Types::App</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a new app on the Whop developer platform. Apps provide custom experiences that can be added to products.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.create(name: "Shine Time Booking")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to create the app for (`biz_` tag). Defaults to the account behind the presented credential.
    
</dd>
</dl>

<dl>
<dd>

**app_type:** `Whop_sdk::Apps::Types::CreateAppsRequestAppType` — The type of app to create. Defaults to `b2c_app`.
    
</dd>
</dl>

<dl>
<dd>

**base_url:** `String` — The base production URL where the app is hosted, such as `https://myapp.example.com`.
    
</dd>
</dl>

<dl>
<dd>

**icon:** `Whop_sdk::Apps::Types::CreateAppsRequestIcon` — The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new direct upload.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The display name for the app, shown to users on the app store and product pages.
    
</dd>
</dl>

<dl>
<dd>

**redirect_uris:** `Internal::Types::Array[String]` — The whitelisted OAuth callback URLs that users are redirected to after authorizing the app.
    
</dd>
</dl>

<dl>
<dd>

**route:** `String` — The subdomain route where the app's hosted web builds are served, such as `myapp` for myapp.whop.site.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">update_permissions_app</a>(app_id:, request) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the permission requirements for an app

Required permissions:
 - `developer:update_app_authorization`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.update_permissions_app(
  app_id: "app_id",
  requested_permissions: [{
    action: "action",
    is_required: true,
    justification: "justification"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `String` — The ID of the app the permission requirements are being updated for
    
</dd>
</dl>

<dl>
<dd>

**requested_permissions:** `Internal::Types::Array[Whop_sdk::Apps::Types::UpdatePermissionsAppRequestRequestedPermissionsItem]` — The permissions that the app will request off of users when a user installs the app.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::App</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an app by ID, claimed route, or proxy domain id. Credential fields (api_key, default_api_key, secrets) render `null` unless the caller has the corresponding developer permission on the owning account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App ID (prefixed `app_`), the app's claimed route, or its proxy domain id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">delete</a>(id:) -> Whop_sdk::Apps::Types::DeleteAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an app. The app stops resolving within seconds — a website's site stops serving, and any claimed subdomain is reserved for a month before it can be claimed again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App ID (prefixed `app_`), the app's claimed route, or its proxy domain id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">update</a>(id:, request) -> Whop_sdk::Types::App</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the settings, metadata, or status of an app. Fields that are omitted keep their current value.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App ID (prefixed `app_`), the app's claimed route, or its proxy domain id.
    
</dd>
</dl>

<dl>
<dd>

**app_store_description:** `String` — The detailed description shown on the app store's in-depth app view page.
    
</dd>
</dl>

<dl>
<dd>

**app_type:** `Whop_sdk::Apps::Types::UpdateAppsRequestAppType` — The type of end-user the app is built for. Cannot be changed on an app whose type is already `website`.
    
</dd>
</dl>

<dl>
<dd>

**base_url:** `String` — The base production URL where the app is hosted. Set to `null` to take the app proxy offline.
    
</dd>
</dl>

<dl>
<dd>

**dashboard_path:** `String` — The URL path for the account dashboard view.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A short description of the app shown in listings and search results.
    
</dd>
</dl>

<dl>
<dd>

**discover_path:** `String` — The URL path for the discover view.
    
</dd>
</dl>

<dl>
<dd>

**experience_path:** `String` — The URL path for the member-facing hub view, such as `/experiences/[experienceId]`.
    
</dd>
</dl>

<dl>
<dd>

**icon:** `Whop_sdk::Apps::Types::UpdateAppsRequestIcon` — The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new direct upload.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The display name for the app, shown to users on the app store and product pages.
    
</dd>
</dl>

<dl>
<dd>

**oauth_client_type:** `Whop_sdk::Apps::Types::UpdateAppsRequestOauthClientType` — How the app authenticates at the OAuth token endpoint.
    
</dd>
</dl>

<dl>
<dd>

**openapi_path:** `String` — The URL path to the app's OpenAPI spec file (requires the ai_chat capability).
    
</dd>
</dl>

<dl>
<dd>

**production_android_build_id:** `String` — The app build (`abld_` tag) to serve as the Android production build, or `null` to unassign it. Same rules as `production_web_build_id`.
    
</dd>
</dl>

<dl>
<dd>

**production_ios_build_id:** `String` — The app build (`abld_` tag) to serve as the iOS production build, or `null` to unassign it. Same rules as `production_web_build_id`.
    
</dd>
</dl>

<dl>
<dd>

**production_web_build_id:** `String` — The app build (`abld_` tag) to serve as the web production build, or `null` to unassign it. The build must belong to this app, target web, and be in the draft or approved status; a draft build is queued for approval and takes over once approved. Requires the `developer:manage_builds` scope.
    
</dd>
</dl>

<dl>
<dd>

**redirect_uris:** `Internal::Types::Array[String]` — The whitelisted OAuth callback URLs users are redirected to after authorizing the app.
    
</dd>
</dl>

<dl>
<dd>

**required_scopes:** `Internal::Types::Array[String]` — The OAuth scopes the app requests from users when they install it.
    
</dd>
</dl>

<dl>
<dd>

**route:** `String` — The subdomain route where the app's hosted web builds are served.
    
</dd>
</dl>

<dl>
<dd>

**secrets:** `Internal::Types::Hash[String, Object]` — Secrets to add or overwrite on the app, as an object of string values. Keys not included are left untouched; pass null or an empty string as the value to delete a secret. Encrypted at rest and injected into the app's hosted server runtime.
    
</dd>
</dl>

<dl>
<dd>

**skills_path:** `String` — The URL path to the app's skills directory (requires the ai_chat capability).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Apps::Types::UpdateAppsRequestStatus` — Controls whether the app is published on Whop discovery or accessible only through its direct link. Publishing requires a name, icon, and description.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">deploy</a>(id:, request) -> Whop_sdk::Types::AppDeployment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Builds the app's current source and ships it. Returns the run it started, so the caller can render progress from this response and then follow it on the app's `deployment` field. Only one deployment runs per app at a time — calling this while one is in flight reports that run rather than starting a second, and calling it with nothing to publish reports that instead of starting one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.deploy(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The app to deploy, prefixed `app_`.
    
</dd>
</dl>

<dl>
<dd>

**draft:** `Internal::Types::Boolean` — Upload the build without making it live. Defaults to `false`, which deploys and promotes in one step.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">logs</a>(id:) -> Whop_sdk::Apps::Types::LogsAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a hosted app's server runtime logs, most recent first: console output, uncaught exceptions, and failed-request summaries captured on whop.site hosting. Logs are retained for 7 days.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.logs(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the app, which will look like app_*************.
    
</dd>
</dl>

<dl>
<dd>

**app_build_id:** `String` — Only return logs from this build.
    
</dd>
</dl>

<dl>
<dd>

**level:** `Whop_sdk::Apps::Types::LogsAppsRequestLevel` — Only return console lines of this level.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Only return logs whose message contains this text (case-insensitive).
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before created_before.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — End of the time window as an ISO 8601 timestamp. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of log lines to return (max 500).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor for fetching logs after a previous page.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor for fetching logs before a later page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.apps.<a href="/lib/whop_sdk/apps/client.rb">update_permissions</a>(id:, request) -> Whop_sdk::Types::App</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the set of permissions the app requests from users when they install it. Requires a user session: the `developer:update_app_authorization` scope cannot be delegated to API keys. Sensitive permissions require step-up verification.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.apps.update_permissions(
  id: "id",
  requested_permissions: [{
    action: "company:basic:read",
    is_required: true,
    justification: "Reads basic account info to render the dashboard home."
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — App ID, prefixed `app_`.
    
</dd>
</dl>

<dl>
<dd>

**requested_permissions:** `Internal::Types::Array[Whop_sdk::Apps::Types::UpdatePermissionsAppsRequestRequestedPermissionsItem]` — The full set of permissions the app requests on install; permissions not listed are removed.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Apps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Audiences
<details><summary><code>client.audiences.<a href="/lib/whop_sdk/audiences/client.rb">list</a>() -> Whop_sdk::Audiences::Types::ListAudiencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists uploaded customer-list audiences for an account. Pass `audience_id` to return a specific audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**audience_id:** `String` — Audience ID, prefixed `adaud_`, used to filter the response to one audience.
    
</dd>
</dl>

<dl>
<dd>

**audience_type:** `Whop_sdk::Audiences::Types::ListAudiencesRequestAudienceType` — Filter by audience type: `custom` (uploaded lists) or `lookalike`.
    
</dd>
</dl>

<dl>
<dd>

**source_type:** `Whop_sdk::Audiences::Types::ListAudiencesRequestSourceType` — Filter by member source: `csv_upload` (uploaded lists) or `people_filter` (automatic audiences built from saved People filters).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of audiences to return. Defaults to 20; maximum 100.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor for the next page of audiences.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/whop_sdk/audiences/client.rb">create</a>(request) -> Whop_sdk::Audiences::Types::CreateAudiencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an audience. Default (`audience_type` omitted or `custom`): creates one audience from an uploaded customer identity CSV file (`name`, `column_mapping`, and `file_id` required) and starts processing it; responds with the audience object. With `filters`: creates an audience from saved People filters (`name` required) — membership is built from the account's People data, and `auto_refresh` decides whether it keeps tracking the filters or keeps whoever matched at creation. With `audience_type: lookalike`: creates a ladder of Meta lookalike audiences from an existing ready custom audience (`source_audience_id`, `count`, and `percentage` required) — `count` equal similarity bands slicing the top `percentage`% (3 audiences at 6% = 0–2%, 2–4%, 4–6%), each returned as its own audience in a `{ data: [...] }` envelope.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.create(account_id: "biz_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**audience_type:** `Whop_sdk::Audiences::Types::CreateAudiencesRequestAudienceType` — What to create. Defaults to `custom` (CSV upload).
    
</dd>
</dl>

<dl>
<dd>

**auto_refresh:** `Internal::Types::Boolean` — Filter audiences only, and set only at creation. `true` (the default) rebuilds membership from the filters twice a day. `false` keeps whoever matched at creation and never rebuilds.
    
</dd>
</dl>

<dl>
<dd>

**column_mapping:** `Whop_sdk::Audiences::Types::CreateAudiencesRequestColumnMapping` — Custom audiences only. Maps supported identity fields to CSV column headers. Map at least one of `email` or `phone`.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — Lookalikes only. Number of lookalike audiences to create (1–6).
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — Custom audiences only. The uploaded customer CSV — a file id (`file_...`) returned by `POST /files`.
    
</dd>
</dl>

<dl>
<dd>

**filters:** `Internal::Types::Hash[String, Object]` — Filter audiences only. The People filters that define membership, keyed exactly as `GET /people` accepts them — for example `{"os": "iOS", "country": "US"}`. Date filters must be rolling windows — `first_seen_within_days` or `last_seen_within_days` — so the audience re-anchors on every refresh; fixed dates such as `first_seen_after` are rejected. Source values are canonical source paths (`whop:<campaign>:<group>:<ad>`, `ext:<platform>:...`, `referrer:<domain>`, `direct`), exact or with a trailing `:*` wildcard.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Audience display name. Required for custom audiences; lookalike names are generated from the source audience.
    
</dd>
</dl>

<dl>
<dd>

**percentage:** `Integer` — Lookalikes only. Total similarity reach as a whole percent (1–20), sliced evenly across `count` — must be divisible by `count`.
    
</dd>
</dl>

<dl>
<dd>

**source_audience_id:** `String` — Lookalikes only. The ready custom audience (`adaud_`) to build from; it needs at least 100 matched people.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/whop_sdk/audiences/client.rb">delete</a>(id:) -> Whop_sdk::Audiences::Types::DeleteAudiencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an audience so it is no longer available for targeting.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Audience ID, prefixed `adaud_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/whop_sdk/audiences/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Audience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Renames an audience. For an audience built from People filters that keeps itself up to date, pass `filters` to replace them, which rebuilds membership immediately. Whether an audience auto refreshes is set when it is created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Audience ID, prefixed `adaud_`.
    
</dd>
</dl>

<dl>
<dd>

**filters:** `Internal::Types::Hash[String, Object]` — Replaces the People filters that define membership. The whole definition is replaced rather than merged, so send every filter you want to keep — a filter you leave out stops applying. Keys and values are the ones `GET /people` accepts, such as an `os` of `iOS` or a `country` of `US`, and at least one filter is required. Date filters must be rolling windows — `first_seen_within_days` or `last_seen_within_days` — so the audience re-anchors every time it rebuilds; fixed dates such as `first_seen_after` are rejected, as is `audience_id`. An array value holds at most 500 items, and each value at most 10 KB. Only an audience with a `source_type` of `people_filter` and `auto_refresh` of `true` accepts filters: an uploaded list has no filters to replace, and with auto refresh off the audience keeps the people it matched when it was built, so create a new audience instead.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — New audience display name. A blank value is ignored rather than clearing the name.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/whop_sdk/audiences/client.rb">add_people</a>(id:, request) -> Whop_sdk::Types::Audience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds users from a new CSV file to an existing uploaded custom audience. The file uses the audience's saved column mapping, processing happens in the background, and existing audience members remain unchanged.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.add_people(
  id: "id",
  file_id: "file_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Audience ID, prefixed `adaud_`.
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` — The new customer CSV — a file id (`file_...`) returned by `POST /files`. Its headers must match the audience's saved column mapping.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AuthorizedUsers
<details><summary><code>client.authorized_users.<a href="/lib/whop_sdk/authorized_users/client.rb">list</a>() -> Whop_sdk::AuthorizedUsers::Types::ListAuthorizedUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of authorized team members for a company, with optional filtering by user, role, and creation date.

Required permissions:
 - `company:authorized_user:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_users.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list authorized users for.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Filter results to a specific user to check if they are an authorized team member.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::Types::AuthorizedUserRoles` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return authorized users created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return authorized users created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AuthorizedUsers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.authorized_users.<a href="/lib/whop_sdk/authorized_users/client.rb">create</a>(request) -> Whop_sdk::Types::AuthorizedUser</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new authorized user to a company.

Required permissions:
 - `authorized_user:create`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_users.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  role: "owner",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The ID of the company to add the authorized user to.
    
</dd>
</dl>

<dl>
<dd>

**elevation:** `Whop_sdk::AuthorizedUsers::Types::CreateAuthorizedUsersRequestElevation` — Re-authentication proof required to perform this sensitive action.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::Types::GrantableAuthorizedUserRoles` — The role to assign to the authorized user within the company. Supported roles: 'moderator', 'sales_manager'.
    
</dd>
</dl>

<dl>
<dd>

**send_emails:** `Internal::Types::Boolean` — Whether to send notification emails to the user on creation.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The ID of the user to add as an authorized user.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AuthorizedUsers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.authorized_users.<a href="/lib/whop_sdk/authorized_users/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AuthorizedUser</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing authorized user.

Required permissions:
 - `company:authorized_user:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_users.retrieve(id: "ausr_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the authorized user to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AuthorizedUsers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.authorized_users.<a href="/lib/whop_sdk/authorized_users/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove an authorized user from a company.

Required permissions:
 - `authorized_user:delete`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_users.delete(
  id: "ausr_xxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the authorized user or user to remove.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The ID of the company the authorized user belongs to. Optional if the authorized user ID is provided.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::AuthorizedUsers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Bounties
<details><summary><code>client.bounties.<a href="/lib/whop_sdk/bounties/client.rb">list</a>() -> Whop_sdk::Bounties::Types::ListBountiesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists bounties visible to the credential — for an account API key, the account's bounties including scheduled drafts; for a user token, the bounties the user can see and work.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Scope the list to this account (`biz_` tag). Requires read access to the account; account API keys may pass their own account or a connected account.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — List the bounties this user participated in (`user_` tag). Must be the authenticated user.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Bounties::Types::ListBountiesRequestStatus` — Filter by lifecycle state.
    
</dd>
</dl>

<dl>
<dd>

**business_goal_type:** `Whop_sdk::Bounties::Types::ListBountiesRequestBusinessGoalType` — Filter by the poster's declared goal. Bounties created before the goal taxonomy carry no goal and never match this filter.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Only bounties workable from this country, as an ISO 3166-1 alpha-2 code. Bounties with no country targeting are workable worldwide and always match.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Only bounties posted to this forum experience, prefixed `exp_`. An unknown experience, or one outside the caller's scope, matches nothing.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Substring match on the bounty title or ID.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only bounties created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only bounties created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Bounties::Types::ListBountiesRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Bounties::Types::ListBountiesRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of bounties to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of bounties to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounties.<a href="/lib/whop_sdk/bounties/client.rb">create</a>(request) -> Whop_sdk::Types::Bounty</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a bounty and escrows its reward pool. Publishes immediately, or as a scheduled draft when you set `publish_at`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.create(
  description: "Record one continuous pass of a full interior detail, dash to trunk, on a customer vehicle.",
  gross_reward_amount: 40,
  title: "Record interior detailing passes"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**accepted_submissions_limit:** `Integer` — Number of submissions that can be accepted (winner slots). Defaults to 1. The escrowed total is `gross_reward_amount` times this limit and must be at least $5.
    
</dd>
</dl>

<dl>
<dd>

**accepted_submissions_per_user_limit:** `Integer` — How many winner slots one worker can win. Defaults to `1`. Wins plus proofs awaiting review never exceed this number, and a worker runs one attempt at a time. Cannot exceed `accepted_submissions_limit`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account whose balance funds the bounty pool (`biz_` tag). Defaults to the caller's personal balance. Requires permission to move the account's funds.
    
</dd>
</dl>

<dl>
<dd>

**allowed_country_codes:** `Internal::Types::Array[String]` — Countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty means worldwide.
    
</dd>
</dl>

<dl>
<dd>

**business_goal_type:** `Whop_sdk::Bounties::Types::CreateBountiesRequestBusinessGoalType` — What the poster wants the work to achieve, declared once here.
    
</dd>
</dl>

<dl>
<dd>

**capture_spec:** `Whop_sdk::Bounties::Types::CreateBountiesRequestCaptureSpec` — Per-bounty overrides of the served capture contract. Only accepted when `business_goal_type` is `data_capture`; omitted fields keep the platform defaults, and the resulting contract is echoed back as `capture_spec` on the bounty.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Full task instructions shown to workers.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Experience to host the bounty in (`exp_` tag). Any visibility — public for an open bounty, private for an invited one. Required unless account_id is set, in which case the bounty anchors in that account's public forum.
    
</dd>
</dl>

<dl>
<dd>

**frequency:** `Whop_sdk::Bounties::Types::CreateBountiesRequestFrequency` — How often the schedule creates a new bounty. Each occurrence is a separate bounty. Defaults to `once`; only applies with `publish_at`.
    
</dd>
</dl>

<dl>
<dd>

**gross_reward_amount:** `Integer` — Gross bounty-pool amount (USD) escrowed per accepted submission, in whole dollars. Platform fees and affiliate shares are paid from this amount.
    
</dd>
</dl>

<dl>
<dd>

**publish_at:** `String` — ISO 8601 time to publish the bounty. When set, the bounty is created as a hidden draft and funded + published at this time instead of immediately.
    
</dd>
</dl>

<dl>
<dd>

**publish_at_timezone:** `String` — IANA timezone for recurring occurrences. Required when publish_at is set.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Short name of the task shown to workers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounties.<a href="/lib/whop_sdk/bounties/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Bounty</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a bounty by ID. Authentication is optional: a request with no credential reads the bounty when it is publicly visible — published or completed, and not restricted to a private experience's members. Bounties outside the caller's scope, and bounties not publicly visible to an anonymous caller, return `404`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Bounty ID (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounties.<a href="/lib/whop_sdk/bounties/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Bounty</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a bounty. A published bounty accepts title, description, and country targeting while it is still open with nothing under review. A scheduled (not-yet-published) draft additionally accepts the reward, winner slots, and schedule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Bounty ID (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**accepted_submissions_limit:** `Integer` — Scheduled drafts only. Number of submissions that can be accepted (winner slots).
    
</dd>
</dl>

<dl>
<dd>

**accepted_submissions_per_user_limit:** `Integer` — How many winner slots one worker can win. Defaults to `1`. Wins plus proofs awaiting review never exceed this number, and a worker runs one attempt at a time. Cannot exceed `accepted_submissions_limit`. Editable while the bounty is still open with nothing under review.
    
</dd>
</dl>

<dl>
<dd>

**allowed_country_codes:** `Internal::Types::Array[String]` — Replace the countries whose residents can work the bounty, as ISO 3166 alpha-2 codes. Empty means worldwide.
    
</dd>
</dl>

<dl>
<dd>

**business_goal_type:** `Whop_sdk::Bounties::Types::UpdateBountiesRequestBusinessGoalType` — What the poster wants the work to achieve, declared once here.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — New full task instructions.
    
</dd>
</dl>

<dl>
<dd>

**frequency:** `Whop_sdk::Bounties::Types::UpdateBountiesRequestFrequency` — Scheduled drafts only. How often the schedule creates a new bounty.
    
</dd>
</dl>

<dl>
<dd>

**gross_reward_amount:** `Integer` — Scheduled drafts only. Gross bounty-pool amount (USD) escrowed per accepted submission. The escrowed total (this times accepted_submissions_limit) must stay at least $5.
    
</dd>
</dl>

<dl>
<dd>

**publish_at:** `String` — Scheduled drafts only. New ISO 8601 time to publish the draft. Must be in the future.
    
</dd>
</dl>

<dl>
<dd>

**publish_at_timezone:** `String` — Scheduled drafts only. IANA timezone for recurring occurrences.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — New short name of the task.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounties.<a href="/lib/whop_sdk/bounties/client.rb">cancel</a>(id:) -> Whop_sdk::Types::Bounty</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels a bounty. With no in-flight work, it cancels immediately and refunds the funder. Otherwise it stops new submissions and cancels once the in-flight work resolves and pays out. Repeating the request is a no-op. A bounty that already paid out every slot returns `400`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.cancel(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Bounty ID (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Bounty Submissions
<details><summary><code>client.bounty_submissions.<a href="/lib/whop_sdk/bounty_submissions/client.rb">list</a>() -> Whop_sdk::BountySubmissions::Types::ListBountySubmissionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists bounty submissions visible to the credential — for a user token, the submissions they authored plus those on bounties they posted; for an account API key, the submissions on the account's bounties. For the anonymous view of one bounty's reviewed work, use the submissions list under the bounty instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounty_submissions.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Scope the list to submissions on this account's bounties (`biz_` tag). Requires read access to the account.
    
</dd>
</dl>

<dl>
<dd>

**bounty_id:** `String` — Only submissions on this bounty (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestStatus` — Filter by lifecycle state.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only submissions created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only submissions created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of submissions to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of submissions to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::BountySubmissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounty_submissions.<a href="/lib/whop_sdk/bounty_submissions/client.rb">create</a>(request) -> Whop_sdk::Types::BountySubmission</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a submission on a workforce bounty. Include a `deliverable` payload — any combination of links and uploaded files, with at least one of the two — and the submission goes straight to review; create is the only step. For `data_capture` bounties, omit the deliverable: this starts a claimed attempt whose proof accumulates server-side, and the separate submit endpoint sends it to review once complete. Requires a user credential — account API keys cannot author submissions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounty_submissions.create(bounty_id: "bnty_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**affiliate_code:** `String` — Affiliate code crediting the referrer, when the worker arrived through one.
    
</dd>
</dl>

<dl>
<dd>

**bounty_id:** `String` — The bounty to submit to (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**deliverable:** `Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequestDeliverable` — The submitted work. Combine `urls`, `file_ids`, and `caption` freely; at least one link or file is required.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequestMetadata` — Optional capture metadata describing where and how the footage was recorded. Persisted on the submission. On a `data_capture` bounty every field except `fov` is required whenever metadata is provided.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::BountySubmissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounty_submissions.<a href="/lib/whop_sdk/bounty_submissions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::BountySubmission</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves one bounty submission the credential can see — one the caller authored, or one on a bounty they posted or their account owns. Reading another member's work on an account's bounty takes `account_id`, the same way the list does.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounty_submissions.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The bounty submission to act on (`btys_` tag).
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Read the submission as this account (`biz_` tag), scoping the lookup to its bounties rather than the caller's own work. Requires read access to the account. Without it the lookup covers only what the credential owns — the submissions the caller authored plus those on bounties they posted.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::BountySubmissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounty_submissions.<a href="/lib/whop_sdk/bounty_submissions/client.rb">delete</a>(id:) -> Whop_sdk::BountySubmissions::Types::DeleteBountySubmissionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels the caller's own active attempt on a bounty and discards any accumulated capture clips. Only the worker who started the attempt can cancel it — account API keys cannot.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounty_submissions.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The bounty submission to act on (`btys_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::BountySubmissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounty_submissions.<a href="/lib/whop_sdk/bounty_submissions/client.rb">submit</a>(id:, request) -> Whop_sdk::Types::BountySubmission</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits a claimed attempt for review. A livestream attempt needs an ended proof stream and can attach an optional `deliverable` — links, files, and a caption in any combination; if the attempt already went to review when its stream ended, the payload attaches to it once, until reviewers start voting. A data capture attempt instead needs enough validated clip time and takes no payload. Only the worker who started the attempt can submit it — account API keys cannot.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounty_submissions.submit(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The claimed attempt to submit for review (`btys_` tag).
    
</dd>
</dl>

<dl>
<dd>

**deliverable:** `Whop_sdk::BountySubmissions::Types::SubmitBountySubmissionsRequestDeliverable` — Work to attach to the submission. Combine `urls`, `file_ids`, and `caption` freely; all are optional.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::BountySubmissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CardTransactions
<details><summary><code>client.card_transactions.<a href="/lib/whop_sdk/card_transactions/client.rb">list</a>() -> Whop_sdk::CardTransactions::Types::ListCardTransactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists an account's card transactions, newest first. Defaults to the account the credential belongs to. Covers every card the owner has ever had, including canceled cards and spend that predates a re-application, and team members only see transactions on the cards assigned to them. Pass `transaction_ids` to fetch specific transactions instead of paging for them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.card_transactions.list(
  transaction_ids: ["citx_xxxxxxxxxxxxxx"],
  card_id: ["icrd_xxxxxxxxxxxxxx"],
  cardholder_id: ["user_xxxxxxxxxxxxxx"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account whose card transactions to list, prefixed `biz_`. Defaults to the credential's account.
    
</dd>
</dl>

<dl>
<dd>

**transaction_ids:** `String` — Return only these card transactions, each prefixed `citx_`. Repeat the parameter, or pass one comma-separated value.
    
</dd>
</dl>

<dl>
<dd>

**card_id:** `String` — Return only transactions charged to these cards, each prefixed `icrd_`.
    
</dd>
</dl>

<dl>
<dd>

**cardholder_id:** `String` — Return only transactions on cards assigned to these users, each prefixed `user_`.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestStatus` — Return only transactions with this status.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Return only transactions authorized at or after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Return only transactions authorized at or before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestOrder` — The field to sort by. Defaults to `created_at`.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::CardTransactions::Types::ListCardTransactionsRequestDirection` — The sort direction. Defaults to `desc`.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of card transactions to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns card transactions after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of card transactions to return, counting back from the end.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns card transactions before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CardTransactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.card_transactions.<a href="/lib/whop_sdk/card_transactions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CardTransaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches a single card transaction by its `citx_` identifier. The owner defaults to the account the credential belongs to.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.card_transactions.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The card transaction ID, prefixed `citx_`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The account that owns the transaction, prefixed `biz_`. Defaults to the credential's account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CardTransactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Cards
<details><summary><code>client.cards.<a href="/lib/whop_sdk/cards/client.rb">list</a>() -> Whop_sdk::Cards::Types::ListCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the Whop cards of an account or user, including ones still being set up. Team members only see the cards assigned to them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/whop_sdk/cards/client.rb">create</a>(request) -> Whop_sdk::Cards::Types::CreateCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a virtual card, or apply for card issuing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**assigned_user_id:** `String` — The account member (a user_ identifier) to assign the card to. Required for business card issuing accounts.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — A display name for the card.
    
</dd>
</dl>

<dl>
<dd>

**spend_limit:** `Integer` — Spending limit amount, in dollars.
    
</dd>
</dl>

<dl>
<dd>

**spend_limit_frequency:** `Whop_sdk::Cards::Types::CreateCardsRequestSpendLimitFrequency` — The window the spend limit applies to.
    
</dd>
</dl>

<dl>
<dd>

**transaction_limit:** `Integer` — Per-transaction limit amount, in dollars.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/whop_sdk/cards/client.rb">retrieve</a>(id:) -> Whop_sdk::Cards::Types::RetrieveCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a single card.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Card ID to retrieve, prefixed `icrd_`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/whop_sdk/cards/client.rb">update</a>(id:, request) -> Whop_sdk::Cards::Types::UpdateCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update, freeze, or cancel a card. Updating the card's name, billing address, or limits requires both `payout:account:update` and `company:balance:read`; a card's assigned holder may update their own card's pin and frozen state with any user token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Card ID to retrieve, prefixed `icrd_`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**billing:** `Whop_sdk::Cards::Types::UpdateCardsRequestBilling` — New billing address. Requires line1, city, region, postal_code, and country_code. On an invited card, passing billing alone (as the invited user) completes onboarding and starts card provisioning.
    
</dd>
</dl>

<dl>
<dd>

**canceled:** `Internal::Types::Boolean` — Pass `true` to permanently cancel the card. A canceled card cannot be uncanceled. Cannot be combined with other fields.
    
</dd>
</dl>

<dl>
<dd>

**frozen:** `Internal::Types::Boolean` — Pass `true` to freeze the card, `false` to unfreeze it. The assigned cardholder may freeze their own card without the payout:account:update scope.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — A display name for the card.
    
</dd>
</dl>

<dl>
<dd>

**pin:** `String` — New 4-digit PIN. Can only be set on a card assigned to the acting user, who may set it without the payout:account:update scope.
    
</dd>
</dl>

<dl>
<dd>

**remove_limit:** `Internal::Types::Boolean` — Pass `true` to remove the spending limit (make the card unlimited).
    
</dd>
</dl>

<dl>
<dd>

**spend_limit:** `Integer` — Spending limit amount, in dollars.
    
</dd>
</dl>

<dl>
<dd>

**spend_limit_frequency:** `Whop_sdk::Cards::Types::UpdateCardsRequestSpendLimitFrequency` — The window the spend limit applies to.
    
</dd>
</dl>

<dl>
<dd>

**transaction_limit:** `Integer` — Per-transaction limit amount, in dollars.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ChatChannels
<details><summary><code>client.chat_channels.<a href="/lib/whop_sdk/chat_channels/client.rb">list</a>() -> Whop_sdk::ChatChannels::Types::ListChatChannelsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of chat channels within a specific company, with optional filtering by product.

Required permissions:
 - `chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat_channels.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  product_id: "prod_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list chat channels for.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of a product to filter by. When set, only chat channels connected to this product are returned.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ChatChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat_channels.<a href="/lib/whop_sdk/chat_channels/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::ChatChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing chat channel.

Required permissions:
 - `chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat_channels.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the chat channel or experience to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ChatChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.chat_channels.<a href="/lib/whop_sdk/chat_channels/client.rb">update</a>(id:, request) -> Whop_sdk::Types::ChatChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update moderation settings for a chat channel, such as who can post, banned words, and media restrictions.

Required permissions:
 - `chat:moderate`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.chat_channels.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the chat channel to update. Accepts either an experience ID (e.g. 'exp_xxxxx') or a chat channel ID.
    
</dd>
</dl>

<dl>
<dd>

**ban_media:** `Internal::Types::Boolean` — Whether media uploads such as images and videos are banned in this chat channel.
    
</dd>
</dl>

<dl>
<dd>

**ban_urls:** `Internal::Types::Boolean` — Whether URLs and links are banned from being posted in this chat channel.
    
</dd>
</dl>

<dl>
<dd>

**banned_words:** `Internal::Types::Array[String]` — A list of words that are automatically blocked from messages in this chat channel. For example, ['spam', 'scam'].
    
</dd>
</dl>

<dl>
<dd>

**user_posts_cooldown_seconds:** `Integer` — The minimum number of seconds a user must wait between sending messages in this chat channel.
    
</dd>
</dl>

<dl>
<dd>

**who_can_post:** `Whop_sdk::Types::WhoCanPostTypes` — Controls which roles are allowed to send messages in this chat channel.
    
</dd>
</dl>

<dl>
<dd>

**who_can_react:** `Whop_sdk::Types::WhoCanReactTypes` — Controls which roles are allowed to add reactions to messages in this chat channel.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ChatChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Checkout Configurations
<details><summary><code>client.checkout_configurations.<a href="/lib/whop_sdk/checkout_configurations/client.rb">list</a>() -> Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists checkout configurations for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.checkout_configurations.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**plan_id:** `String` — Only return checkout configurations for this plan ID, prefixed `plan_`.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return checkout configurations created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return checkout configurations created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsRequestOrder` — Field used to sort checkout configurations.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::CheckoutConfigurations::Types::ListCheckoutConfigurationsRequestDirection` — Sort direction. Defaults to `desc`.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of checkout configurations to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor for the next page of results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CheckoutConfigurations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.checkout_configurations.<a href="/lib/whop_sdk/checkout_configurations/client.rb">create</a>(request) -> Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a reusable checkout configuration for an existing or inline plan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.checkout_configurations.create(
  account_id: "biz_xxxxxxxxxxxxxx",
  plan_id: "plan_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_code:** `String` — Affiliate code to apply to the checkout.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Currency used for setup-mode payment method availability.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value metadata copied to payments and memberships.
    
</dd>
</dl>

<dl>
<dd>

**mode:** `Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestMode` — Controls whether checkout charges the buyer immediately or saves payment details for later. Defaults to `payment`.
    
</dd>
</dl>

<dl>
<dd>

**payment_method_configuration:** `Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPaymentMethodConfiguration` — Payment method overrides for this checkout. `null` uses the plan or platform defaults.
    
</dd>
</dl>

<dl>
<dd>

**plan:** `Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestPlan` — Plan attributes used to create or find a plan for this checkout configuration. Mutually exclusive with `plan_id`.
    
</dd>
</dl>

<dl>
<dd>

**plan_id:** `String` — Existing plan ID, prefixed `plan_`. Mutually exclusive with `plan`.
    
</dd>
</dl>

<dl>
<dd>

**redirect_url:** `String` — URL customers are sent to after checkout.
    
</dd>
</dl>

<dl>
<dd>

**three_ds_level:** `Whop_sdk::CheckoutConfigurations::Types::CreateCheckoutConfigurationsRequestThreeDsLevel` — 3D Secure behavior for this checkout.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CheckoutConfigurations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.checkout_configurations.<a href="/lib/whop_sdk/checkout_configurations/client.rb">retrieve</a>(id:) -> Whop_sdk::CheckoutConfigurations::Types::RetrieveCheckoutConfigurationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a checkout configuration by ID. This endpoint is public so a checkout page can load from the configuration URL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.checkout_configurations.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the checkout configuration.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CheckoutConfigurations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.checkout_configurations.<a href="/lib/whop_sdk/checkout_configurations/client.rb">delete</a>(id:) -> Whop_sdk::CheckoutConfigurations::Types::DeleteCheckoutConfigurationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a checkout configuration so its checkout URL can no longer be used.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.checkout_configurations.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the checkout configuration.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CheckoutConfigurations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Companies
<details><summary><code>client.companies.<a href="/lib/whop_sdk/companies/client.rb">list</a>() -> Whop_sdk::Companies::Types::ListCompaniesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of companies. When parent_company_id is provided, lists connected accounts under that platform. When omitted, lists companies the current user has access to.

Required permissions:
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.companies.list(
  first: 42,
  last: 42,
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**parent_company_id:** `String` — The unique identifier of the parent platform company. When provided, lists connected accounts under that platform. Omit to list the current user's own companies.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return companies created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return companies created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Companies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.companies.<a href="/lib/whop_sdk/companies/client.rb">create</a>(request) -> Whop_sdk::Types::Company</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new company. Pass parent_company_id to create a connected account under a platform, or omit it to create a company for the current user.

Required permissions:
 - `company:create`
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.companies.create(title: "title")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**country:** `Whop_sdk::Types::Countries` — The country the company is located in. Defaults to the parent company's country for connected accounts, or the owner's IP-derived country.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A promotional pitch displayed to potential customers on the company's store page.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — The email address of the user who will own the connected account. Required when parent_company_id is provided.
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Whop_sdk::Companies::Types::CreateCompaniesRequestLogo` — The company's logo image. Accepts PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — A key-value JSON object of custom metadata to store on the company.
    
</dd>
</dl>

<dl>
<dd>

**parent_company_id:** `String` — The unique identifier of the parent platform company. When provided, creates a connected account under that platform. Omit to create a company for the current user.
    
</dd>
</dl>

<dl>
<dd>

**send_customer_emails:** `Internal::Types::Boolean` — Whether Whop sends transactional emails to customers on behalf of this company. Only applies when creating a connected account.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the company shown to customers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Companies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.companies.<a href="/lib/whop_sdk/companies/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Company</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing company.

Required permissions:
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.companies.retrieve(id: "biz_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier or route slug of the company.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Companies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.companies.<a href="/lib/whop_sdk/companies/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Company</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a company's title, description, logo, and other settings.

Required permissions:
 - `company:update`
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.companies.update(id: "biz_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the company to update.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_application_required:** `Internal::Types::Boolean` — Whether prospective affiliates must submit an application before they can promote this company.
    
</dd>
</dl>

<dl>
<dd>

**affiliate_instructions:** `String` — Guidelines and instructions shown to affiliates explaining how to promote this company's products.
    
</dd>
</dl>

<dl>
<dd>

**banner_image:** `Whop_sdk::Companies::Types::UpdateCompaniesRequestBannerImage` — The company's banner image. Accepts PNG or JPEG format.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A promotional pitch displayed to potential customers on the company's store page.
    
</dd>
</dl>

<dl>
<dd>

**featured_affiliate_product_id:** `String` — The ID of the product to feature on this company's affiliate page. Pass null to clear.
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Whop_sdk::Companies::Types::UpdateCompaniesRequestLogo` — The company's logo image. Accepts PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**route:** `String` — The unique URL slug for the company's store page. Must be lowercase and can include hyphens (e.g., 'my-company'). If not provided, the route will remain unchanged.
    
</dd>
</dl>

<dl>
<dd>

**send_customer_emails:** `Internal::Types::Boolean` — Whether Whop sends transactional emails (receipts, renewals, cancelations) to customers on behalf of this company.
    
</dd>
</dl>

<dl>
<dd>

**social_links:** `Internal::Types::Array[Whop_sdk::Companies::Types::UpdateCompaniesRequestSocialLinksItem]` — The social media links to display on the company's store page. Pass the full list of desired social links — any existing links not included will be removed.
    
</dd>
</dl>

<dl>
<dd>

**target_audience:** `String` — The target audience for this company (e.g., 'beginner day traders aged 18-25 looking to learn options').
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the company shown to customers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Companies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.companies.<a href="/lib/whop_sdk/companies/client.rb">create_api_key</a>(parent_company_id:, request) -> Whop_sdk::Companies::Types::CreateAPIKeyCompaniesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an API key for a connected account (child company) owned by a parent company.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.companies.create_api_key(
  parent_company_id: "parent_company_id",
  child_company_id: "child_company_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**parent_company_id:** `String` — The unique identifier of the parent platform company (e.g. 'biz_xxx').
    
</dd>
</dl>

<dl>
<dd>

**child_company_id:** `String` — The unique identifier of the connected account to create the API key for (e.g. 'biz_xxx').
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — A human-readable name for the API key, such as 'Production API Key'.
    
</dd>
</dl>

<dl>
<dd>

**permissions:** `Internal::Types::Array[Whop_sdk::Companies::Types::CreateAPIKeyCompaniesRequestPermissionsItem]` — Granular permission statements defining which actions this API key can perform. Either permissions or role must be provided.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::Types::PermissionSystemRoles` — A system role to inherit permissions from (e.g. owner, admin, moderator). Either role or permissions must be provided.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Companies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CompanyTokenTransactions
<details><summary><code>client.company_token_transactions.<a href="/lib/whop_sdk/company_token_transactions/client.rb">list</a>() -> Whop_sdk::CompanyTokenTransactions::Types::ListCompanyTokenTransactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of token transactions for a user or company, depending on the authenticated actor, with optional filtering by user and transaction type.

Required permissions:
 - `company_token_transaction:read`
 - `member:basic:read`
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.company_token_transactions.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list token transactions for.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Filter transactions to only those involving this specific user.
    
</dd>
</dl>

<dl>
<dd>

**transaction_type:** `Whop_sdk::Types::CompanyTokenTransactionTypes` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CompanyTokenTransactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.company_token_transactions.<a href="/lib/whop_sdk/company_token_transactions/client.rb">create</a>(request) -> Whop_sdk::Types::CompanyTokenTransaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a token transaction to add, subtract, or transfer tokens for a member within a company.

Required permissions:
 - `company_token_transaction:create`
 - `member:basic:read`
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.company_token_transactions.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::CompanyTokenTransactions::Types::CreateCompanyTokenTransactionsRequest` — Parameters for CreateCompanyTokenTransaction
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CompanyTokenTransactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.company_token_transactions.<a href="/lib/whop_sdk/company_token_transactions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CompanyTokenTransaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing company token transaction.

Required permissions:
 - `company_token_transaction:read`
 - `member:basic:read`
 - `company:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.company_token_transactions.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the token transaction to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CompanyTokenTransactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourseChapters
<details><summary><code>client.course_chapters.<a href="/lib/whop_sdk/course_chapters/client.rb">list</a>() -> Whop_sdk::CourseChapters::Types::ListCourseChaptersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of chapters within a course, ordered by position.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_chapters.list(
  first: 42,
  last: 42,
  course_id: "cors_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**course_id:** `String` — The unique identifier of the course to list chapters for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseChapters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_chapters.<a href="/lib/whop_sdk/course_chapters/client.rb">create</a>(request) -> Whop_sdk::Types::CourseChapter</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new chapter within a course to organize lessons into sections.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_chapters.create(course_id: "cors_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**course_id:** `String` — The unique identifier of the course to create the chapter in (e.g., "course_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display title of the chapter (e.g., "Module 1: Introduction").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseChapters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_chapters.<a href="/lib/whop_sdk/course_chapters/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CourseChapter</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing course chapter.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_chapters.retrieve(id: "chap_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the chapter to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseChapters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_chapters.<a href="/lib/whop_sdk/course_chapters/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a chapter and all of its lessons from a course.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_chapters.delete(id: "chap_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the chapter to delete (e.g., "chap_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseChapters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_chapters.<a href="/lib/whop_sdk/course_chapters/client.rb">update</a>(id:, request) -> Whop_sdk::Types::CourseChapter</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a chapter's title within a course.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_chapters.update(
  id: "chap_xxxxxxxxxxxxx",
  title: "title"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the chapter to update (e.g., "chap_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The new display title of the chapter (e.g., "Module 1: Introduction").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseChapters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourseLessonInteractions
<details><summary><code>client.course_lesson_interactions.<a href="/lib/whop_sdk/course_lesson_interactions/client.rb">list</a>() -> Whop_sdk::CourseLessonInteractions::Types::ListCourseLessonInteractionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of lesson interactions, filtered by lesson, course, user, or completion status.

Required permissions:
 - `courses:read`
 - `course_analytics:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lesson_interactions.list(
  first: 42,
  last: 42,
  user_id: "user_xxxxxxxxxxxxx",
  lesson_id: "lesn_xxxxxxxxxxxxx",
  course_id: "cors_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The unique identifier of the user to filter lesson interactions for.
    
</dd>
</dl>

<dl>
<dd>

**lesson_id:** `String` — The unique identifier of the lesson to filter interactions for.
    
</dd>
</dl>

<dl>
<dd>

**course_id:** `String` — The unique identifier of the course to filter interactions for.
    
</dd>
</dl>

<dl>
<dd>

**completed:** `Internal::Types::Boolean` — Whether to filter for completed or in-progress lesson interactions.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessonInteractions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lesson_interactions.<a href="/lib/whop_sdk/course_lesson_interactions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CourseLessonInteraction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing course lesson interaction.

Required permissions:
 - `courses:read`
 - `course_analytics:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lesson_interactions.retrieve(id: "crsli_xxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lesson interaction to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessonInteractions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourseLessons
<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">list</a>() -> Whop_sdk::CourseLessons::Types::ListCourseLessonsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of lessons within a course or chapter, ordered by position.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.list(
  first: 42,
  last: 42,
  course_id: "cors_xxxxxxxxxxxxx",
  chapter_id: "chap_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**course_id:** `String` — The unique identifier of the course to return all lessons across all chapters.
    
</dd>
</dl>

<dl>
<dd>

**chapter_id:** `String` — The unique identifier of a chapter to return only its lessons.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">create</a>(request) -> Whop_sdk::Types::CourseLesson</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new lesson within a course chapter. Lessons can contain video, text, or assessment content.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.create(
  chapter_id: "chap_xxxxxxxxxxxxx",
  lesson_type: "text"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**chapter_id:** `String` — The unique identifier of the chapter to create the lesson in (e.g., "chap_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The Markdown content body of the lesson.
    
</dd>
</dl>

<dl>
<dd>

**days_from_course_start_until_unlock:** `Integer` — The number of days after a student starts the course before this lesson becomes accessible.
    
</dd>
</dl>

<dl>
<dd>

**embed_id:** `String` — The external video identifier for embedded content (e.g., a YouTube video ID or Loom share ID).
    
</dd>
</dl>

<dl>
<dd>

**embed_type:** `Whop_sdk::Types::EmbedTypes` — The type of video embed for this lesson, such as YouTube or Loom.
    
</dd>
</dl>

<dl>
<dd>

**lesson_type:** `Whop_sdk::Types::LessonTypes` — The content type of the lesson, such as video, text, quiz, or knowledge check.
    
</dd>
</dl>

<dl>
<dd>

**thumbnail:** `Whop_sdk::CourseLessons::Types::CreateCourseLessonsRequestThumbnail` — The thumbnail image for the lesson in PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display title of the lesson (e.g., "Getting Started with APIs").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CourseLesson</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing course lesson.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.retrieve(id: "lesn_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lesson to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a lesson and remove it from its chapter.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.delete(id: "lesn_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lesson to delete (e.g., "les_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">update</a>(id:, request) -> Whop_sdk::Types::CourseLesson</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a lesson's content, type, visibility, assessment questions, or media attachments.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.update(id: "lesn_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lesson to update (e.g., "les_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**assessment_completion_requirement:** `Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentCompletionRequirement` — The passing criteria for quiz or knowledge check lessons, such as minimum grade or correct answers.
    
</dd>
</dl>

<dl>
<dd>

**assessment_questions:** `Internal::Types::Array[Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAssessmentQuestionsItem]` — The full list of assessment questions for quiz or knowledge check lessons. Replaces all existing questions.
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestAttachmentsItem]` — File attachments for the lesson such as PDFs or documents. Replaces all existing attachments.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The Markdown content body of the lesson.
    
</dd>
</dl>

<dl>
<dd>

**days_from_course_start_until_unlock:** `Integer` — The number of days after a student starts the course before this lesson becomes accessible.
    
</dd>
</dl>

<dl>
<dd>

**embed_id:** `String` — The external video identifier for embedded content (e.g., a YouTube video ID or Loom share ID).
    
</dd>
</dl>

<dl>
<dd>

**embed_type:** `Whop_sdk::Types::EmbedTypes` — The type of video embed for this lesson, such as YouTube or Loom.
    
</dd>
</dl>

<dl>
<dd>

**lesson_type:** `Whop_sdk::Types::LessonTypes` — The content type of the lesson, such as video, text, quiz, or knowledge check.
    
</dd>
</dl>

<dl>
<dd>

**main_pdf:** `Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestMainPdf` — The primary PDF document attached to this lesson for student reference.
    
</dd>
</dl>

<dl>
<dd>

**max_attempts:** `Integer` — The maximum number of attempts a student is allowed for assessment lessons.
    
</dd>
</dl>

<dl>
<dd>

**mux_asset_id:** `String` — The identifier of a Mux video asset to attach to this lesson (e.g., "mux_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**thumbnail:** `Whop_sdk::CourseLessons::Types::UpdateCourseLessonsRequestThumbnail` — The thumbnail image for the lesson in PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display title of the lesson (e.g., "Getting Started with APIs").
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Types::LessonVisibilities` — Controls whether this lesson is visible to students or hidden as a draft.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">mark_as_completed</a>(lesson_id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark a lesson as completed for the current user after they finish the content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.mark_as_completed(lesson_id: "lesson_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lesson_id:** `String` — The unique identifier of the lesson to mark as completed (e.g., "les_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">start</a>(lesson_id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record that the current user has started viewing a lesson, creating progress tracking records.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.start(lesson_id: "lesson_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lesson_id:** `String` — The unique identifier of the lesson the user is starting (e.g., "les_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_lessons.<a href="/lib/whop_sdk/course_lessons/client.rb">submit_assessment</a>(lesson_id:, request) -> Whop_sdk::CourseLessons::Types::SubmitAssessmentCourseLessonsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submit answers for a quiz or knowledge check lesson and receive a graded result.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_lessons.submit_assessment(
  lesson_id: "lesson_id",
  answers: [{
    question_id: "question_id"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lesson_id:** `String` — The unique identifier of the quiz or knowledge check lesson to submit answers for (e.g., "les_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**answers:** `Internal::Types::Array[Whop_sdk::CourseLessons::Types::SubmitAssessmentCourseLessonsRequestAnswersItem]` — The list of answers to submit for each assessment question.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseLessons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CourseStudents
<details><summary><code>client.course_students.<a href="/lib/whop_sdk/course_students/client.rb">list</a>() -> Whop_sdk::CourseStudents::Types::ListCourseStudentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of students enrolled in a course, with optional name filtering.

Required permissions:
 - `courses:read`
 - `course_analytics:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_students.list(
  first: 42,
  last: 42,
  course_id: "cors_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**course_id:** `String` — The unique identifier of the course to list enrolled students for.
    
</dd>
</dl>

<dl>
<dd>

**keyword:** `String` — A search term to filter students by name or username.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseStudents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.course_students.<a href="/lib/whop_sdk/course_students/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::CourseStudent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing course student.

Required permissions:
 - `courses:read`
 - `course_analytics:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.course_students.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the course student record to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::CourseStudents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Courses
<details><summary><code>client.courses.<a href="/lib/whop_sdk/courses/client.rb">list</a>() -> Whop_sdk::Courses::Types::ListCoursesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of courses, filtered by either an experience or a company.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.courses.list(
  first: 42,
  last: 42,
  experience_id: "exp_xxxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — The unique identifier of the experience to list courses for.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list courses for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Courses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courses.<a href="/lib/whop_sdk/courses/client.rb">create</a>(request) -> Whop_sdk::Types::Course</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new course within an experience, with optional chapters, lessons, and a certificate.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.courses.create(
  experience_id: "exp_xxxxxxxxxxxxxx",
  title: "title"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**certificate_after_completion_enabled:** `Internal::Types::Boolean` — Whether the course awards students a PDF certificate after completing all lessons.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — The unique identifier of the experience to create the course in (e.g., "exp_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**order:** `String` — The decimal order position of the course within its experience. Use fractional values (e.g., "1.5") to place between existing courses.
    
</dd>
</dl>

<dl>
<dd>

**require_completing_lessons_in_order:** `Internal::Types::Boolean` — Whether students must complete each lesson sequentially before advancing to the next one.
    
</dd>
</dl>

<dl>
<dd>

**tagline:** `String` — A short tagline displayed beneath the course title (e.g., "Master the fundamentals of design").
    
</dd>
</dl>

<dl>
<dd>

**thumbnail:** `Whop_sdk::Courses::Types::CreateCoursesRequestThumbnail` — The thumbnail image for the course in PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display title of the course (e.g., "Introduction to Web Development").
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Types::CourseVisibilities` — Controls whether this course is visible to students or hidden as a draft.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Courses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courses.<a href="/lib/whop_sdk/courses/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Course</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing course.

Required permissions:
 - `courses:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.courses.retrieve(id: "cors_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the course to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Courses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courses.<a href="/lib/whop_sdk/courses/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a course and all of its chapters, lessons, and student progress.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.courses.delete(id: "cors_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the course to delete (e.g., "course_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Courses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.courses.<a href="/lib/whop_sdk/courses/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Course</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a course's title, description, visibility, thumbnail, or chapter ordering.

Required permissions:
 - `courses:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.courses.update(id: "cors_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the course to update (e.g., "course_XXXXX").
    
</dd>
</dl>

<dl>
<dd>

**certificate_after_completion_enabled:** `Internal::Types::Boolean` — Whether the course awards students a PDF certificate after completing all lessons.
    
</dd>
</dl>

<dl>
<dd>

**chapters:** `Internal::Types::Array[Whop_sdk::Courses::Types::UpdateCoursesRequestChaptersItem]` — A list of chapters with nested lessons to reorder or rename in bulk.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A short description of the course displayed to students on the course page.
    
</dd>
</dl>

<dl>
<dd>

**language:** `Whop_sdk::Types::Languages` — The primary language spoken in the video content of the course.
    
</dd>
</dl>

<dl>
<dd>

**order:** `String` — The decimal order position of the course within its experience. Use fractional values (e.g., "1.5") to place between existing courses.
    
</dd>
</dl>

<dl>
<dd>

**require_completing_lessons_in_order:** `Internal::Types::Boolean` — Whether students must complete each lesson sequentially before advancing to the next one.
    
</dd>
</dl>

<dl>
<dd>

**tagline:** `String` — A short tagline displayed beneath the course title (e.g., "Master the fundamentals of design").
    
</dd>
</dl>

<dl>
<dd>

**thumbnail:** `Whop_sdk::Courses::Types::UpdateCoursesRequestThumbnail` — The thumbnail image for the course in PNG, JPEG, or GIF format.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display title of the course (e.g., "Introduction to Web Development").
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Types::CourseVisibilities` — Controls whether this course is visible to students or hidden as a draft.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Courses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deposits
<details><summary><code>client.deposits.<a href="/lib/whop_sdk/deposits/client.rb">create</a>(request) -> Whop_sdk::Deposits::Types::CreateDepositsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the deposit methods for an account, including crypto and bank transfer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.deposits.create(destination: "destination")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` — Amount to prefill on hosted deposit page.
    
</dd>
</dl>

<dl>
<dd>

**destination:** `Whop_sdk::Deposits::Types::CreateDepositsRequestDestination` — Destination account ID or wallet address. Object form is supported for compatibility. Any business resolves by its account ID without authentication; a user account resolves only for that same authenticated user.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Metadata to include with the deposit response.
    
</dd>
</dl>

<dl>
<dd>

**network:** `Whop_sdk::Deposits::Types::CreateDepositsRequestNetwork` — Destination network override. Defaults to the destination wallet's own network.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Deposits::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Dispute alerts
<details><summary><code>client.dispute_alerts.<a href="/lib/whop_sdk/dispute_alerts/client.rb">list</a>() -> Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the dispute alerts and early fraud warnings across the accounts you can read.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dispute_alerts.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Only alerts on this account's payments (`biz_` tag). Omit it to cover every account you can read.
    
</dd>
</dl>

<dl>
<dd>

**payment_id:** `String` — Only alerts on this payment (`pay_` tag). A payment can carry several.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestType` — Only alerts of this kind. `early_fraud_warning` for issuer fraud reports, `dispute_alert` for pre-dispute notices, `rapid_dispute_resolution` for Visa RDR cases the network already closed.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of alerts to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns alerts after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of alerts to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns alerts before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestOrder` — The field to sort alerts by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::DisputeAlerts::Types::ListDisputeAlertsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only alerts Whop received before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only alerts Whop received after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DisputeAlerts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dispute_alerts.<a href="/lib/whop_sdk/dispute_alerts/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::DisputeAlert</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single dispute alert or early fraud warning by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dispute_alerts.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The dispute alert ID, prefixed `dspa_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DisputeAlerts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Disputes
<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">list</a>() -> Whop_sdk::Disputes::Types::ListDisputesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the disputes across the accounts you can read.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Only disputes filed against this account (`biz_` tag). Omit it to cover every account you can read.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of disputes to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns disputes after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of disputes to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns disputes before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Disputes::Types::ListDisputesRequestOrder` — The field to sort disputes by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Disputes::Types::ListDisputesRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Disputes::Types::ListDisputesRequestStatusItem` — Only disputes in these statuses. Repeat the parameter to pass several — one paginated list covers all of them. Covers both chargebacks and inquiries at each stage. A `needs_response` dispute whose evidence deadline has passed reports and filters as `under_review` instead.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Only disputes in this three-letter ISO currency.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only disputes opened before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only disputes opened after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">summary</a>() -> Whop_sdk::Disputes::Types::SummaryDisputesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Totals up the same disputes the list returns, so you can build status tabs and totals without paging through them.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.summary
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groups:** `Whop_sdk::Disputes::Types::SummaryDisputesRequestGroupsItem` — Which breakdowns to return, keyed by these names under `groups`. Repeat the parameter to ask for several; omit it for all of them.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Only disputes filed against this account (`biz_` tag). Omit it to cover every account you can read.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Disputes::Types::SummaryDisputesRequestStatusItem` — Only disputes in these statuses. Repeat the parameter to pass several. A `needs_response` dispute whose evidence deadline has passed reports and filters as `under_review` instead.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Only disputes in this three-letter ISO currency.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only disputes opened before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only disputes opened after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single dispute.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The dispute ID (`dspt_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Edits a dispute's evidence, while it is still editable. Sending it is a separate call.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The dispute ID (`dspt_` tag).
    
</dd>
</dl>

<dl>
<dd>

**evidence:** `Whop_sdk::Disputes::Types::UpdateDisputesRequestEvidence` — The evidence packet to send to the processor. Only the fields you provide are changed.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">submit</a>(id:) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends a dispute's evidence to the payment processor. This is final — it cannot be edited or sent again.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.submit(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The dispute ID (`dspt_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">submit_evidence_dispute</a>(id:) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submit a payment dispute to the payment processor for review. Once submitted, no further edits can be made.

Required permissions:
 - `payment:dispute`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `company:basic:read`
 - `payment:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.submit_evidence_dispute(id: "dspt_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the dispute to submit to the payment processor for review.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">update_evidence_dispute</a>(id:, request) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a dispute with evidence data to attempt to win the dispute.

Required permissions:
 - `payment:dispute`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `company:basic:read`
 - `payment:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.update_evidence_dispute(id: "dspt_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the dispute to update.
    
</dd>
</dl>

<dl>
<dd>

**access_activity_log:** `String` — An IP access activity log showing the customer used the service.
    
</dd>
</dl>

<dl>
<dd>

**billing_address:** `String` — The billing address associated with the customer's payment method.
    
</dd>
</dl>

<dl>
<dd>

**cancellation_policy_attachment:** `Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestCancellationPolicyAttachment` — A file upload containing the company's cancellation policy document.
    
</dd>
</dl>

<dl>
<dd>

**cancellation_policy_disclosure:** `String` — The company's cancellation policy text to submit as evidence.
    
</dd>
</dl>

<dl>
<dd>

**customer_communication_attachment:** `Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestCustomerCommunicationAttachment` — A file upload containing evidence of customer communication. Must be a JPEG, PNG, GIF, or PDF.
    
</dd>
</dl>

<dl>
<dd>

**customer_email_address:** `String` — The email address of the customer associated with the disputed payment.
    
</dd>
</dl>

<dl>
<dd>

**customer_name:** `String` — The full name of the customer associated with the disputed payment.
    
</dd>
</dl>

<dl>
<dd>

**notes:** `String` — Additional notes or context to submit as part of the dispute evidence.
    
</dd>
</dl>

<dl>
<dd>

**product_description:** `String` — A description of the product or service that was provided to the customer.
    
</dd>
</dl>

<dl>
<dd>

**refund_policy_attachment:** `Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestRefundPolicyAttachment` — A file upload containing the company's refund policy document.
    
</dd>
</dl>

<dl>
<dd>

**refund_policy_disclosure:** `String` — The company's refund policy text to submit as evidence.
    
</dd>
</dl>

<dl>
<dd>

**refund_refusal_explanation:** `String` — An explanation of why the refund request was refused.
    
</dd>
</dl>

<dl>
<dd>

**service_date:** `String` — The date when the product or service was delivered to the customer.
    
</dd>
</dl>

<dl>
<dd>

**uncategorized_attachment:** `Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequestUncategorizedAttachment` — A file upload for evidence that does not fit into the other categories.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.disputes.<a href="/lib/whop_sdk/disputes/client.rb">upload_evidence</a>(id:, request) -> Whop_sdk::Types::Dispute</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replaces the full set of uploaded evidence documents on a dispute, beyond the four fixed evidence slots. Upload files through `POST /files` and reference them by `id`, or send the files as multipart file parts to upload and attach in one call. Send every document the packet should carry — up to 10, 10MB each and 25MB in total; an empty list removes them all. Accepted content types: application/pdf, application/json, image/jpeg, image/png, image/webp — any other type is rejected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.disputes.upload_evidence(
  id: "id",
  documents: [{
    document_type: "return_policy"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The dispute ID (`dspt_` tag).
    
</dd>
</dl>

<dl>
<dd>

**documents:** `Internal::Types::Array[Whop_sdk::Disputes::Types::UploadEvidenceDisputesRequestDocumentsItem]` — The full set of evidence documents the dispute should carry. Replaces all previously uploaded documents.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Disputes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## DmChannels
<details><summary><code>client.dm_channels.<a href="/lib/whop_sdk/dm_channels/client.rb">list</a>() -> Whop_sdk::DmChannels::Types::ListDmChannelsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of DM channels for the currently authenticated user, sorted by most recently active.

Required permissions:
 - `dms:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_channels.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of a company to filter DM channels by. Only returns channels scoped to this company.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_channels.<a href="/lib/whop_sdk/dm_channels/client.rb">create</a>(request) -> Whop_sdk::Types::DmChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new DM channel between two or more users, optionally scoped to a specific company. Returns the existing channel if one already exists.

Required permissions:
 - `dms:channel:manage`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_channels.create(with_user_ids: ["with_user_ids"])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to scope this DM channel to. When set, the channel is visible only within that company context.
    
</dd>
</dl>

<dl>
<dd>

**custom_name:** `String` — A custom display name for the DM channel. For example, 'Project Discussion'.
    
</dd>
</dl>

<dl>
<dd>

**notifications_enabled:** `Internal::Types::Boolean` — Whether Whop app notifications are enabled for this direct message channel. Webhooks still fire.
    
</dd>
</dl>

<dl>
<dd>

**with_user_ids:** `Internal::Types::Array[String]` — The list of user identifiers to include in the DM channel. Each entry can be an email, username, or user ID (e.g. 'user_xxxxx').
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_channels.<a href="/lib/whop_sdk/dm_channels/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::DmChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing DM channel.

Required permissions (one of):
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_channels.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_channels.<a href="/lib/whop_sdk/dm_channels/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a DM channel and all of its messages. Only an admin of the channel can perform this action.

Required permissions (one of):
 - `dms:channel:manage`
 - `support_chat:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_channels.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_channels.<a href="/lib/whop_sdk/dm_channels/client.rb">update</a>(id:, request) -> Whop_sdk::Types::DmChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the settings of an existing DM channel, such as its display name. Only an admin of the channel can perform this action.

Required permissions (one of):
 - `dms:channel:manage`
 - `support_chat:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_channels.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel to update.
    
</dd>
</dl>

<dl>
<dd>

**custom_name:** `String` — A new custom display name for the DM channel. For example, 'Project Discussion'.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## DmMembers
<details><summary><code>client.dm_members.<a href="/lib/whop_sdk/dm_members/client.rb">list</a>() -> Whop_sdk::DmMembers::Types::ListDmMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of members in a specific DM channel, sorted by the date they were added.

Required permissions (one of):
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_members.list(
  first: 42,
  last: 42,
  channel_id: "channel_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**channel_id:** `String` — The unique identifier of the DM channel to list members for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_members.<a href="/lib/whop_sdk/dm_members/client.rb">create</a>(request) -> Whop_sdk::Types::DmMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new user to an existing DM channel. Only an admin of the channel can add members.

Required permissions (one of):
 - `dms:message:manage`
 - `support_chat:message:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_members.create(
  channel_id: "channel_id",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**channel_id:** `String` — The unique identifier of the DM channel to add the new member to.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The unique identifier of the user to add to the DM channel. For example, 'user_xxxxx'.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_members.<a href="/lib/whop_sdk/dm_members/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::DmMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing DM member.

Required permissions (one of):
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_members.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel member to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_members.<a href="/lib/whop_sdk/dm_members/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a user from a DM channel. An admin can remove any member, and a member can remove themselves.

Required permissions (one of):
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_members.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel member to remove.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.dm_members.<a href="/lib/whop_sdk/dm_members/client.rb">update</a>(id:, request) -> Whop_sdk::Types::DmMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a DM channel member's settings, such as their notification preferences or membership status.

Required permissions (one of):
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.dm_members.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the DM channel member to update.
    
</dd>
</dl>

<dl>
<dd>

**notification_preference:** `Whop_sdk::Types::DmsFeedMemberNotificationPreferences` — The notification setting for this member, controlling how they receive alerts for new messages in this channel.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Types::DmsFeedMemberStatuses` — The membership status for this member in the DM channel.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::DmMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Entries
<details><summary><code>client.entries.<a href="/lib/whop_sdk/entries/client.rb">list</a>() -> Whop_sdk::Entries::Types::ListEntriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of waitlist entries for a company, with optional filtering by product, plan, status, and creation date.

Required permissions:
 - `plan:waitlist:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.entries.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list waitlist entries for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Types::EntriesSortableColumns` 
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Filter entries to only those for specific products.
    
</dd>
</dl>

<dl>
<dd>

**plan_ids:** `String` — Filter entries to only those for specific plans.
    
</dd>
</dl>

<dl>
<dd>

**statuses:** `Whop_sdk::Types::EntryStatus` — Filter entries by their current status.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return entries created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return entries created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Entries::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.entries.<a href="/lib/whop_sdk/entries/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Entry</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing waitlist entry.

Required permissions:
 - `plan:waitlist:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.entries.retrieve(id: "entry_xxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the waitlist entry to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Entries::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.entries.<a href="/lib/whop_sdk/entries/client.rb">approve</a>(id:) -> Whop_sdk::Entries::Types::ApproveEntriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Approve a pending waitlist entry, triggering the checkout process to grant the user access to the plan.

Required permissions:
 - `plan:waitlist:manage`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.entries.approve(id: "entry_xxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the waitlist entry to approve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Entries::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.entries.<a href="/lib/whop_sdk/entries/client.rb">deny</a>(id:) -> Whop_sdk::Types::Entry</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deny a pending waitlist entry, preventing the user from gaining access to the plan.

Required permissions:
 - `plan:waitlist:manage`
 - `plan:basic:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.entries.deny(id: "entry_xxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the waitlist entry to deny.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Entries::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Events
<details><summary><code>client.events.<a href="/lib/whop_sdk/events/client.rb">list</a>() -> Whop_sdk::Events::Types::ListEventsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists identity-linked events, most recent first by default. Pass identifier for one person's journey, or omit it to list events for an account within an explicit time range. Pass direction=asc to read a journey forwards from where it starts. Events are shaped like the POST /events intake: attribution in context, identity in user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**identifier:** `String` — Any hard identifier of the person: a person ID (prsn_*), user ID, email, phone number, or a tracking cookie value (wuid, anonymous ID, fbp/fbc/ttp/ga). Omit to list recent events for the account.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Optional for account API keys; required for credentials that can access multiple accounts.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start of the time range as an ISO 8601 timestamp. Required when identifier is omitted.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the time range as an ISO 8601 timestamp. Required when identifier is omitted; otherwise defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of events to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor for fetching events after a previous page.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor for fetching events before a later page.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Events::Types::ListEventsRequestDirection` — The order events are returned in by time. Defaults to desc (most recent first); asc reads a journey forwards from where it starts. after and before always page forwards and backwards through that order.
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` — Full event names to filter by, comma-separated (payment.completed, pixel.lead, pixel.page, pixel.custom:<name>) — the same vocabulary the events / people metrics use.
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` — Canonical source path, exact or with a trailing :* prefix (whop:<campaign>:*, ext:meta:*, referrer:<domain>, direct). Restricts the list to conversion targets attributed to that source — the debuggability twin of a metric cell's source parameter.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::Events::Types::ListEventsRequestAttributionModel` — Attribution model for the source filter (defaults to last_touch).
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Country codes to filter by, comma-separated.
    
</dd>
</dl>

<dl>
<dd>

**city:** `String` — Cities to filter by, comma-separated.
    
</dd>
</dl>

<dl>
<dd>

**device:** `String` — Device families to filter by, comma-separated (e.g. iPhone, Mac).
    
</dd>
</dl>

<dl>
<dd>

**browser:** `String` — Browser families to filter by, comma-separated (e.g. Chrome, Mobile Safari).
    
</dd>
</dl>

<dl>
<dd>

**os:** `String` — Operating system families to filter by, comma-separated (e.g. iOS, Windows).
    
</dd>
</dl>

<dl>
<dd>

**utm_source:** `String` — utm_source values to filter by, comma-separated.
    
</dd>
</dl>

<dl>
<dd>

**hostname:** `String` — Page hostnames to filter by, comma-separated.
    
</dd>
</dl>

<dl>
<dd>

**page:** `String` — Page paths to filter by, comma-separated.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.events.<a href="/lib/whop_sdk/events/client.rb">create</a>(request) -> Whop_sdk::Events::Types::CreateEventsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Tracks a conversion or engagement event for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.create(
  account_id: "biz_xxxxxxxxxxxxxx",
  event_name: "coating_deposit_paid"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to associate with this event.
    
</dd>
</dl>

<dl>
<dd>

**action_source:** `Whop_sdk::Events::Types::CreateEventsRequestActionSource` — Where the event originated.
    
</dd>
</dl>

<dl>
<dd>

**app_build_id:** `String` — The build of the hosted app that served the page where the event occurred.
    
</dd>
</dl>

<dl>
<dd>

**app_id:** `String` — The hosted app that served the page where the event occurred.
    
</dd>
</dl>

<dl>
<dd>

**context:** `Whop_sdk::Events::Types::CreateEventsRequestContext` — Tracking and attribution context.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `Whop_sdk::Events::Types::CreateEventsRequestCurrency` — ISO 4217 currency code.
    
</dd>
</dl>

<dl>
<dd>

**custom_name:** `String` — Custom event name when event_name is 'custom'. Maximum 35 chars for this value.
    
</dd>
</dl>

<dl>
<dd>

**duration:** `Integer` — For 'leave' events: milliseconds the visitor spent on the page.
    
</dd>
</dl>

<dl>
<dd>

**event_id:** `String` — Client-provided identifier for deduplication. Generated if omitted.
    
</dd>
</dl>

<dl>
<dd>

**event_name:** `String` 

The type of event.

Use a standard event (lead, submit_application, contact, complete_registration, schedule, view_content, add_to_cart) or pass your own name directly for a custom event.
    
</dd>
</dl>

<dl>
<dd>

**event_time:** `String` — When the event occurred. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**plan_id:** `String` — The plan associated with the event.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The product associated with the event.
    
</dd>
</dl>

<dl>
<dd>

**referrer_url:** `String` — The referring URL.
    
</dd>
</dl>

<dl>
<dd>

**resumed:** `Internal::Types::Boolean` — For 'page' events: true when the page was restored from the back/forward cache.
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` — For 'identify' events: where the identity was captured (url, form, manual, iframe).
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — For 'page' events: the document title.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL where the event occurred.
    
</dd>
</dl>

<dl>
<dd>

**user:** `Whop_sdk::Events::Types::CreateEventsRequestUser` — User identity and profile data.
    
</dd>
</dl>

<dl>
<dd>

**value:** `Integer` — Monetary value associated with the event.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.events.<a href="/lib/whop_sdk/events/client.rb">pulse</a>() -> Whop_sdk::Events::Types::PulseEventsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a fully anonymized feed of recent platform-wide money movement, most recent first: purchases, affiliate commissions, card and ad spend, app revenue, off-platform sales, wallet deposits, card loads, claimed drops, transfers between accounts, and referral bonuses. Items carry only a `type`, the underlying event name, a USD amount, a coarse location under `user`, and a timestamp coarsened to the start of the minute; missing fields are omitted, not nulled. The payload is identical for every caller; no auth is required.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.pulse
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**event:** `String` — Filter to one or more types, comma separated — for example `purchase,card_spend`. These are the item's `type`, not its `event_name`: several types share the `ledger_line.created` event name. Omit for every type in the feed. Values outside the feed's own set are rejected.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of events to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor for fetching events after a previous page.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor for fetching events before a later page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.events.<a href="/lib/whop_sdk/events/client.rb">validate_pixel</a>(request) -> Whop_sdk::Types::PixelValidation</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks whether the Whop pixel is installed for an account. Recent pixel events count as proof on their own, so an account that has sent data lately comes back installed without a `url`. Pass a `url` and events from that page settle it; conversion events are also read across the hostname because they commonly fire on a later confirmation page. If the requested page hasn't sent any events lately, it is fetched and read for the pixel and conversion events wired on it. `installed` is only true when the pixel was actually seen — in the account's events or in the page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.events.validate_pixel
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account to check. Defaults to the authenticated account.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — A page to read for the pixel, e.g. an ad destination. Omit it to check the account from its events alone.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Events::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Experiences
<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">list</a>() -> Whop_sdk::Experiences::Types::ListExperiencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of experiences belonging to a company, with optional filtering by product and app.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  product_id: "prod_xxxxxxxxxxxxx",
  app_id: "app_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list experiences for.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — Filter to only experiences attached to this product identifier.
    
</dd>
</dl>

<dl>
<dd>

**app_id:** `String` — Filter to only experiences powered by this app identifier.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return experiences created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return experiences created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">create</a>(request) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Required permissions:
 - `experience:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.create(
  app_id: "app_xxxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `String` — The unique identifier of the app that powers this experience.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to create this experience for.
    
</dd>
</dl>

<dl>
<dd>

**is_public:** `Internal::Types::Boolean` — Whether the experience is publicly accessible without a membership.
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Whop_sdk::Experiences::Types::CreateExperiencesRequestLogo` — A logo image displayed alongside the experience name.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The display name of the experience. Defaults to the app's name if not provided.
    
</dd>
</dl>

<dl>
<dd>

**notifications_enabled:** `Internal::Types::Boolean` — Whether Whop app notifications are enabled for this experience. Webhooks still fire.
    
</dd>
</dl>

<dl>
<dd>

**section_id:** `String` — The unique identifier of the section to place the experience in.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing experience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.retrieve(id: "exp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Required permissions:
 - `experience:delete`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.delete(id: "exp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Required permissions:
 - `experience:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.update(id: "exp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience to update.
    
</dd>
</dl>

<dl>
<dd>

**access_level:** `Whop_sdk::Types::ExperienceAccessLevels` — The access level of the experience.
    
</dd>
</dl>

<dl>
<dd>

**is_public:** `Internal::Types::Boolean` — Whether the experience is publicly accessible without a membership.
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Whop_sdk::Experiences::Types::UpdateExperiencesRequestLogo` — A logo image displayed alongside the experience name.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The display name of the experience.
    
</dd>
</dl>

<dl>
<dd>

**notifications_enabled:** `Internal::Types::Boolean` — Whether Whop app notifications are enabled for this experience. Webhooks still fire.
    
</dd>
</dl>

<dl>
<dd>

**order:** `String` — The position of the experience within its section for display ordering.
    
</dd>
</dl>

<dl>
<dd>

**section_id:** `String` — The unique identifier of the section to move the experience into.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">attach</a>(id:, request) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attach an experience to a product, making it accessible to the product's customers.

Required permissions:
 - `experience:attach`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.attach(
  id: "exp_xxxxxxxxxxxxxx",
  product_id: "prod_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience to attach.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of the product to attach the experience to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">detach</a>(id:, request) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Detach an experience from a product, removing customer access to it through that product.

Required permissions:
 - `experience:detach`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.detach(
  id: "exp_xxxxxxxxxxxxxx",
  product_id: "prod_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience to detach.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of the product to detach the experience from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.experiences.<a href="/lib/whop_sdk/experiences/client.rb">duplicate</a>(id:, request) -> Whop_sdk::Types::Experience</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Duplicates an existing experience. The name will be copied, unless provided. The new experience will be attached to the same products as the original experience.
If duplicating a Forum or Chat experience, the new experience will have the same settings as the original experience, e.g. who can post, who can comment, etc.
No content, e.g. posts, messages, lessons from within the original experience will be copied.


Required permissions:
 - `experience:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.experiences.duplicate(id: "exp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the experience to duplicate.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The display name for the duplicated experience. Defaults to the original experience's name.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Exports
<details><summary><code>client.exports.<a href="/lib/whop_sdk/exports/client.rb">list</a>() -> Whop_sdk::Exports::Types::ListExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the exports requested for an account, newest first. Only exports of resources the credential is allowed to export are returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.exports.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to list exports for, prefixed `biz_`. Defaults to the credential's account.
    
</dd>
</dl>

<dl>
<dd>

**resource:** `Whop_sdk::Exports::Types::ListExportsRequestResource` — Only return exports of this resource.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Exports::Types::ListExportsRequestStatus` — Only return exports in this status.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return exports created at or after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return exports created at or before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Exports::Types::ListExportsRequestOrder` — The field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Exports::Types::ListExportsRequestDirection` — The sort direction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Exports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.exports.<a href="/lib/whop_sdk/exports/client.rb">create</a>(request) -> Whop_sdk::Types::Export</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts an asynchronous export of a resource for an account. Returns the export in `pending`; poll `GET /exports/{id}` until `download_url` is set.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.exports.create(resource: "ad_campaigns")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to export from, prefixed `biz_`. Defaults to the credential's account.
    
</dd>
</dl>

<dl>
<dd>

**columns:** `Internal::Types::Array[String]` — Column keys to include. Empty means all columns for the resource.
    
</dd>
</dl>

<dl>
<dd>

**filters:** `Internal::Types::Hash[String, Object]` — Resource-specific filters. For native REST resources (`payouts`, `transfers`, `products`) these are the resource's own list query params; for dashboard tables they mirror the dashboard table filters.
    
</dd>
</dl>

<dl>
<dd>

**resource:** `Whop_sdk::Exports::Types::CreateExportsRequestResource` — The resource to export, e.g. `payouts`, `receipts`, or `members`.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — IANA timezone for date columns, e.g. `America/New_York`. Defaults to `UTC`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Exports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.exports.<a href="/lib/whop_sdk/exports/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Export</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches an export's status and, once complete, its download link.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.exports.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The export ID, prefixed `exprt_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Exports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FeeMarkups
<details><summary><code>client.fee_markups.<a href="/lib/whop_sdk/fee_markups/client.rb">list</a>() -> Whop_sdk::FeeMarkups::Types::ListFeeMarkupsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of fee markups configured for a company. If the company is a platform account, returns the platform default markups.

Required permissions:
 - `company:update_child_fees`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.fee_markups.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list fee markups for. Pass a platform account identifier to retrieve platform default markups.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::FeeMarkups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fee_markups.<a href="/lib/whop_sdk/fee_markups/client.rb">create</a>(request) -> Whop_sdk::Types::FeeMarkup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create or update a fee markup for a company. If a markup for the specified fee type already exists, it will be updated with the new values.

Required permissions:
 - `company:update_child_fees`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.fee_markups.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  fee_type: "crypto_withdrawal_markup"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to create or update the fee markup for.
    
</dd>
</dl>

<dl>
<dd>

**fee_type:** `Whop_sdk::Types::FeeMarkupTypes` — The type of fee this markup applies to, such as processing or platform fees.
    
</dd>
</dl>

<dl>
<dd>

**fixed_fee_usd:** `Integer` — The fixed fee amount in USD to charge per transaction. Must be between 0 and 50.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value metadata to attach to this fee markup.
    
</dd>
</dl>

<dl>
<dd>

**notes:** `String` — Internal notes about this fee markup for record-keeping purposes.
    
</dd>
</dl>

<dl>
<dd>

**percentage_fee:** `Integer` — The percentage fee to charge per transaction. Must be between 0 and 25.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::FeeMarkups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.fee_markups.<a href="/lib/whop_sdk/fee_markups/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a fee markup configuration for a company. This removes the custom fee override and reverts to the parent company's default fees.

Required permissions:
 - `company:update_child_fees`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.fee_markups.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the fee markup to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::FeeMarkups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Files
<details><summary><code>client.files.<a href="/lib/whop_sdk/files/client.rb">list</a>() -> Whop_sdk::Files::Types::ListFilesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the files with the given IDs, newest first — fetch a batch in one request instead of retrieving each file individually. Only files you created are returned; IDs that do not exist, or that another credential created, are omitted. A request for up to 100 IDs answers in a single page by default; a larger batch pages at up to 100 files per response — follow `page_info` with the same `file_ids` to walk the rest.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.files.list(file_ids: ["file_xxxxxxxxxxxxx"])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_ids:** `String` — The files to return, each prefixed `file_`. Repeat the parameter to pass several, up to 250 per request. Batches of up to 100 answer in one page by default; larger batches page at up to 100 per response.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Files::Types::ListFilesRequestOrder` — The field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Files::Types::ListFilesRequestDirection` — The sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of files to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns files after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of files to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns files before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Files::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/lib/whop_sdk/files/client.rb">create</a>(request) -> Whop_sdk::Types::File</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a file and returns a presigned destination to upload its bytes to. PUT the bytes to `upload_url` (single-part), or to each of `multipart_upload_urls` and then call Complete File Multipart Upload. Once the bytes land the file becomes `ready`, and its ID can be attached wherever a file is accepted — account legal documents, dispute evidence documents.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.files.create(filename: "terms.pdf")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**byte_size:** `Integer` — The file's size in bytes. Required when `multipart` is `true`. Multipart uploads support at most 10,000 parts of 5MB each (about 50 GB).
    
</dd>
</dl>

<dl>
<dd>

**filename:** `String` — The name of the file including its extension, e.g. `terms.pdf`.
    
</dd>
</dl>

<dl>
<dd>

**multipart:** `Internal::Types::Boolean` — Upload the file in 5MB parts. Required for files larger than 5GB; useful above ~100MB. The file must be larger than 5MB.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Files::Types::CreateFilesRequestVisibility` — `public` files are served via an unsigned CDN URL — use for assets anyone may see. `private` files are served via a signed, expiring URL — use for sensitive documents. Defaults to `private`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Files::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/lib/whop_sdk/files/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::File</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a file you uploaded — poll it after uploading the bytes to see `upload_status` become `ready`. Only the creator can retrieve a file this way; a file attached to another resource is read through that resource.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.files.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the file, prefixed `file_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Files::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.files.<a href="/lib/whop_sdk/files/client.rb">complete</a>(id:, request) -> Whop_sdk::Types::File</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Assembles the parts of a multipart upload after every part has been PUT to its presigned URL. Pass the `multipart_upload_id` from Create File and each part's `ETag` response header.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.files.complete(
  id: "id",
  multipart_parts: [{
    etag: "etag-1",
    part_number: 1
  }],
  multipart_upload_id: "upload-id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the file, prefixed `file_`.
    
</dd>
</dl>

<dl>
<dd>

**multipart_parts:** `Internal::Types::Array[Whop_sdk::Files::Types::CompleteFilesRequestMultipartPartsItem]` — Every uploaded part, in order.
    
</dd>
</dl>

<dl>
<dd>

**multipart_upload_id:** `String` — The ID of the multipart upload, returned by Create File.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Files::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FinancialActivity
<details><summary><code>client.financial_activity.<a href="/lib/whop_sdk/financial_activity/client.rb">list</a>() -> Whop_sdk::FinancialActivity::Types::ListFinancialActivityResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns an account's or user's activity feed: every movement of money in or out.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.financial_activity.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**include_owned_accounts:** `Internal::Types::Boolean` — When true, aggregates the authenticated user's personal ledger with the businesses they own (owner role with balance read) into one feed. Requires user_id to be the authenticated user; cannot be combined with account_id or the settlement-date filters. Each returned row includes the owning `account`.
    
</dd>
</dl>

<dl>
<dd>

**include_resource:** `Internal::Types::Boolean` — Whether to include the `resource` field in the response or not. Consider passing `false` if you need a fast response without as many rich details.
    
</dd>
</dl>

<dl>
<dd>

**line_types:** `Whop_sdk::FinancialActivity::Types::ListFinancialActivityRequestLineTypesItem` — Optional ledger line categories to include. Some categories (for example `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps) are only returned when explicitly requested here.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::FinancialActivity::Types::ListFinancialActivityRequestDirection` — Optional direction filter. `money_in` returns positive activity and `money_out` returns negative activity.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Optional currency code filter, for example `usd`.
    
</dd>
</dl>

<dl>
<dd>

**posted_after:** `String` — Only include rows posted after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**posted_before:** `String` — Only include rows posted before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**available_after:** `String` — Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD` settlement date (UTC), distinct from posted_at. Requires currency.
    
</dd>
</dl>

<dl>
<dd>

**available_before:** `String` — Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD` settlement date (UTC). Set equal to available_after for a single day. Requires currency.
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of rows to return.
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Cursor returned by the previous page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::FinancialActivity::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FinancialReports
<details><summary><code>client.financial_reports.<a href="/lib/whop_sdk/financial_reports/client.rb">retrieve</a>() -> Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a financial report — balance activity, income statement, or balance summary — for an account over a date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.financial_reports.retrieve(
  account_id: "account_id",
  report_type: "balance_summary"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier), or `global` for a platform-wide report across all ledger accounts (requires internal admin access).
    
</dd>
</dl>

<dl>
<dd>

**report_type:** `Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestReportType` — The type of financial report to generate.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Filter rows to this currency, for example `usd`. Defaults to `usd` unless `in_currency` is provided.
    
</dd>
</dl>

<dl>
<dd>

**in_currency:** `String` — Aggregate all activity into this display currency via FX conversion.
    
</dd>
</dl>

<dl>
<dd>

**from_date:** `String` — Start of the report window as an ISO 8601 timestamp (UTC). Required for platform-wide (global) reports.
    
</dd>
</dl>

<dl>
<dd>

**to_date:** `String` — End of the report window as an ISO 8601 timestamp (UTC). Required for platform-wide (global) reports.
    
</dd>
</dl>

<dl>
<dd>

**group_by:** `Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestGroupBy` — Grouping granularity for report rows.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — IANA timezone (for example `America/New_York`) used to bucket report periods and to interpret calendar-day boundaries for balance snapshots. Defaults to UTC. from_date/to_date remain exact instants regardless of this setting.
    
</dd>
</dl>

<dl>
<dd>

**line_types:** `Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestLineTypesItem` — Account-level balance activity only: ledger line categories to include.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestDirection` — Account-level balance activity only: include money moving in or money moving out.
    
</dd>
</dl>

<dl>
<dd>

**cumulative:** `Internal::Types::Boolean` — Platform-wide (global) reports only: when true, return cumulative balances as of to_date (all history, no lower bound) instead of activity within the period.
    
</dd>
</dl>

<dl>
<dd>

**scope_account_id:** `String` — Platform-wide (global) reports only: narrow the report to ledger lines on the ledger account owned by this account ID (a biz_ identifier). Ignored unless account_id is `global`.
    
</dd>
</dl>

<dl>
<dd>

**include_payment_fee_breakdown:** `Internal::Types::Boolean` — Balance activity only: include payment costs grouped by payment method and provider.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::FinancialReports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ForumPosts
<details><summary><code>client.forum_posts.<a href="/lib/whop_sdk/forum_posts/client.rb">list</a>() -> Whop_sdk::ForumPosts::Types::ListForumPostsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of forum posts within a specific experience, with optional filtering by parent post or pinned status.

Required permissions:
 - `forum:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forum_posts.list(
  first: 42,
  last: 42,
  experience_id: "exp_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — The unique identifier of the experience to list forum posts for.
    
</dd>
</dl>

<dl>
<dd>

**include_bounty_anchors:** `Internal::Types::Boolean` — Whether to include top-level bounty discussion anchors as rich forum items.
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — The unique identifier of a parent post to list comments for. When set, returns replies to that post.
    
</dd>
</dl>

<dl>
<dd>

**pinned:** `Internal::Types::Boolean` — Whether to filter for only pinned posts. Set to true to return only pinned posts.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ForumPosts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.forum_posts.<a href="/lib/whop_sdk/forum_posts/client.rb">create</a>(request) -> Whop_sdk::Types::ForumPost</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new forum post or comment within an experience. Supports text content, attachments, polls, paywalling, and pinning. Pass experience_id 'public' with a company_id to post to a company's public forum.

Required permissions:
 - `forum:post:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forum_posts.create(experience_id: "exp_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ForumPosts::Types::CreateForumPostsRequestAttachmentsItem]` — A list of file attachments to include with the post, such as images or videos.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company whose public forum to post in. Required when experience_id is 'public'. For example, 'biz_xxxxx'.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The main body of the post in Markdown format. For example, 'Check out this **update**'. Hidden if the post is paywalled and the viewer has not purchased access.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — The unique identifier of the experience to create this post in. For example, 'exp_xxxxx'. Pass 'public' along with company_id to automatically use the company's public forum.
    
</dd>
</dl>

<dl>
<dd>

**is_mention:** `Internal::Types::Boolean` — Whether to send this post as a mention notification to all users in the experience who have mentions enabled.
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — The unique identifier of the parent post to comment on. Omit this field to create a top-level post.
    
</dd>
</dl>

<dl>
<dd>

**paywall_amount:** `Integer` — The price to unlock this post in the specified paywall currency. For example, 5.00 for $5.00. When set, users must purchase access to view the post content.
    
</dd>
</dl>

<dl>
<dd>

**paywall_currency:** `Whop_sdk::Types::Currencies` — The currency for the paywall price on this post. When set along with paywall_amount, users must purchase access to view the post content.
    
</dd>
</dl>

<dl>
<dd>

**pinned:** `Internal::Types::Boolean` — Whether this post should be pinned to the top of the forum.
    
</dd>
</dl>

<dl>
<dd>

**poll:** `Whop_sdk::ForumPosts::Types::CreateForumPostsRequestPoll` — A poll to attach to this post, allowing members to vote on options.
    
</dd>
</dl>

<dl>
<dd>

**rich_content:** `String` — The rich content of the post in Tiptap JSON format. When provided, takes priority over the markdown content field for rendering.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of the post, displayed prominently at the top. Required for paywalled posts as it remains visible to non-purchasers.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Types::ForumPostVisibilityTypes` — Controls who can see this forum post, such as members only or public.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ForumPosts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.forum_posts.<a href="/lib/whop_sdk/forum_posts/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::ForumPost</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing forum post.

Required permissions:
 - `forum:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forum_posts.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the forum post to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ForumPosts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.forum_posts.<a href="/lib/whop_sdk/forum_posts/client.rb">update</a>(id:, request) -> Whop_sdk::Types::ForumPost</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Edit the content, attachments, pinned status, or visibility of an existing forum post or comment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forum_posts.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the forum post to update.
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ForumPosts::Types::UpdateForumPostsRequestAttachmentsItem]` — A replacement list of file attachments for this post, such as images or videos.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The updated body of the post in Markdown format. For example, 'Check out this **update**'. Hidden if the post is paywalled and the viewer has not purchased access.
    
</dd>
</dl>

<dl>
<dd>

**is_pinned:** `Internal::Types::Boolean` — Whether this post should be pinned to the top of the forum. Only top-level posts can be pinned, not comments.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The updated title of the post, displayed prominently at the top. Required for paywalled posts as it remains visible to non-purchasers.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Whop_sdk::Types::ForumPostVisibilityTypes` — Controls who can see this forum post, such as members only or public.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ForumPosts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Forums
<details><summary><code>client.forums.<a href="/lib/whop_sdk/forums/client.rb">list</a>() -> Whop_sdk::Forums::Types::ListForumsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of forums within a specific company, with optional filtering by product.

Required permissions:
 - `forum:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forums.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  product_id: "prod_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list forums for.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of a product to filter by. When set, only forums connected to this product are returned.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Forums::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.forums.<a href="/lib/whop_sdk/forums/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Forum</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing forum.

Required permissions:
 - `forum:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forums.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the forum or experience to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Forums::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.forums.<a href="/lib/whop_sdk/forums/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Forum</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update moderation and notification settings for a forum, such as who can post, who can comment, and email notification preferences.

Required permissions:
 - `forum:moderate`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.forums.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the forum to update. Accepts either an experience ID (e.g. 'exp_xxxxx') or a forum ID.
    
</dd>
</dl>

<dl>
<dd>

**banned_words:** `Internal::Types::Array[String]` — A list of words that are automatically blocked from posts in this forum. For example, ['spam', 'scam'].
    
</dd>
</dl>

<dl>
<dd>

**banner_image:** `Whop_sdk::Forums::Types::UpdateForumsRequestBannerImage` — The banner image displayed at the top of the forum page. Pass null to remove the existing banner.
    
</dd>
</dl>

<dl>
<dd>

**email_notification_preference:** `Whop_sdk::Types::ForumEmailNotificationPreferences` — Controls how email notifications are sent to members when new posts are created in this forum.
    
</dd>
</dl>

<dl>
<dd>

**who_can_comment:** `Whop_sdk::Types::ForumWhoCanCommentTypes` — Controls which roles are allowed to comment on posts in this forum.
    
</dd>
</dl>

<dl>
<dd>

**who_can_post:** `Whop_sdk::Types::ForumWhoCanPostTypes` — Controls which roles are allowed to create new posts in this forum.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Forums::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IdentityProfiles
<details><summary><code>client.identity_profiles.<a href="/lib/whop_sdk/identity_profiles/client.rb">list_identity_profile</a>() -> Whop_sdk::IdentityProfiles::Types::ListIdentityProfileResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of identity profiles. When company_id is provided, lists IPs currently linked to that company's ledger. When omitted, lists IPs linked to any ledger the actor can read (including child companies under a parent).

Required permissions:
 - `identity:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.identity_profiles.list_identity_profile(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to filter to. When omitted, returns IPs across all ledgers the actor can read.
    
</dd>
</dl>

<dl>
<dd>

**profile_type:** `Whop_sdk::Types::IdentityProfileKinds` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Types::IdentityProfileStatuses` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::IdentityProfiles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.identity_profiles.<a href="/lib/whop_sdk/identity_profiles/client.rb">retrieve_identity_profile</a>(id:) -> Whop_sdk::Types::IdentityProfile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing identity profile.

Required permissions:
 - `identity:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.identity_profiles.retrieve_identity_profile(id: "idpf_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the identity profile (idpf_xxx).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::IdentityProfiles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.identity_profiles.<a href="/lib/whop_sdk/identity_profiles/client.rb">unlink_identity_profile</a>(id:) -> Whop_sdk::Types::IdentityProfile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unlinks an IdentityProfile from a LedgerAccount (flips the matching link to is_current=false).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.identity_profiles.unlink_identity_profile(
  id: "idpf_xxxxxxxxxxxxx",
  ledger_account_id: "ldgr_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the IdentityProfile to unlink.
    
</dd>
</dl>

<dl>
<dd>

**ledger_account_id:** `String` — The ID of the LedgerAccount to unlink the identity profile from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::IdentityProfiles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.identity_profiles.<a href="/lib/whop_sdk/identity_profiles/client.rb">list_verifications_identity_profile</a>(id:) -> Whop_sdk::IdentityProfiles::Types::ListVerificationsIdentityProfileResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of verifications attached to an identity profile, ordered by most recent first.

Required permissions:
 - `identity:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.identity_profiles.list_verifications_identity_profile(
  id: "idpf_xxxxxxxxxxxxx",
  first: 42,
  last: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the identity profile (idpf_xxx).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::IdentityProfiles::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Invoices
<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">list</a>() -> Whop_sdk::Invoices::Types::ListInvoicesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of invoices for a company, with optional filtering by product, status, collection method, and creation date.

Required permissions:
 - `invoice:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list invoices for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Filter invoices to only those associated with these specific product identifiers.
    
</dd>
</dl>

<dl>
<dd>

**collection_methods:** `Whop_sdk::Types::InvoiceCollectionMethods` — Filter invoices by their collection method.
    
</dd>
</dl>

<dl>
<dd>

**statuses:** `Whop_sdk::Types::InvoiceStatuses` — Filter invoices by their current status.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Types::InvoicesSortableColumns` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return invoices created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return invoices created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">create</a>(request) -> Whop_sdk::Types::Invoice</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an invoice for a customer. The invoice can be charged automatically using a stored payment method, or sent to the customer for manual payment.

Required permissions:
 - `invoice:create`
 - `member:email:read`
 - `member:basic:read`
 - `payment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.create(
  collection_method: "send_invoice",
  company_id: "biz_xxxxxxxxxxxxxx",
  plan: {},
  product: {
    title: "title"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::Invoices::Types::CreateInvoicesRequest` — Parameters for CreateInvoice
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Invoice</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing invoice.

Required permissions:
 - `invoice:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `payment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.retrieve(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice, or a secure token.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a draft invoice.

Required permissions:
 - `invoice:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.delete(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the draft invoice to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Invoice</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a draft invoice's details.

Required permissions:
 - `invoice:update`
 - `member:email:read`
 - `member:basic:read`
 - `payment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.update(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice to update.
    
</dd>
</dl>

<dl>
<dd>

**automatically_finalizes_at:** `String` — The date and time when the invoice will be automatically finalized. For charge_automatically, triggers an automatic charge. For send_invoice, sends the invoice email at the specified time.
    
</dd>
</dl>

<dl>
<dd>

**billing_address:** `Whop_sdk::Invoices::Types::UpdateInvoicesRequestBillingAddress` — Inline billing address to create or update a mailing address for this invoice.
    
</dd>
</dl>

<dl>
<dd>

**charge_buyer_fee:** `Internal::Types::Boolean` — Whether to charge the customer a buyer fee on this invoice.
    
</dd>
</dl>

<dl>
<dd>

**collection_method:** `Whop_sdk::Types::InvoiceCollectionMethods` — How the invoice should be collected.
    
</dd>
</dl>

<dl>
<dd>

**customer_name:** `String` — The name of the customer.
    
</dd>
</dl>

<dl>
<dd>

**due_date:** `String` — The date by which the invoice must be paid.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The email address of the customer.
    
</dd>
</dl>

<dl>
<dd>

**line_items:** `Internal::Types::Array[Whop_sdk::Invoices::Types::UpdateInvoicesRequestLineItemsItem]` — Line items that break down the invoice total. When provided, the sum of (quantity * unit_price) for all items must equal the plan price. Individual items may be negative to represent a credit, as long as the sum is not negative and clears the currency's minimum charge. Pass an empty list to remove the breakdown.
    
</dd>
</dl>

<dl>
<dd>

**mailing_address_id:** `String` — The unique identifier of an existing mailing address to attach.
    
</dd>
</dl>

<dl>
<dd>

**member_id:** `String` — The unique identifier of a member to assign as the customer.
    
</dd>
</dl>

<dl>
<dd>

**payment_method_id:** `String` — The unique identifier of the payment method to charge.
    
</dd>
</dl>

<dl>
<dd>

**plan:** `Whop_sdk::Invoices::Types::UpdateInvoicesRequestPlan` — Updated plan attributes.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of an existing product to attach to this invoice. Only allowed while the invoice is still a draft.
    
</dd>
</dl>

<dl>
<dd>

**subscription_billing_anchor_at:** `String` — The date that defines when the subscription billing cycle should start.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">mark_paid</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark an open invoice as paid when payment was collected outside of Whop.

Required permissions:
 - `invoice:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.mark_paid(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice to mark as paid.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">mark_uncollectible</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mark an open invoice as uncollectible when payment is not expected.

Required permissions:
 - `invoice:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.mark_uncollectible(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice to mark as uncollectible.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">resend</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resend the notification email for an existing invoice to the customer.

Required permissions:
 - `invoice:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.resend(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice to resend.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoices.<a href="/lib/whop_sdk/invoices/client.rb">void</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Void an open invoice so it can no longer be paid. Voiding is permanent and cannot be undone.

Required permissions:
 - `invoice:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoices.void(id: "inv_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the invoice to void.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Invoices::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Leads
<details><summary><code>client.leads.<a href="/lib/whop_sdk/leads/client.rb">list</a>() -> Whop_sdk::Leads::Types::ListLeadsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of leads for a company, with optional filtering by product and creation date.

Required permissions:
 - `lead:basic:read`
 - `member:email:read`
 - `access_pass:basic:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.leads.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  created_after: "2023-12-01T05:00:00Z",
  created_before: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list leads for.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return leads created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return leads created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Filter leads to only those associated with these specific product identifiers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Leads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/lib/whop_sdk/leads/client.rb">create</a>(request) -> Whop_sdk::Types::Lead</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Record a new lead for a company, capturing a potential customer's interest in a specific product.

Required permissions:
 - `lead:manage`
 - `member:email:read`
 - `access_pass:basic:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.leads.create(company_id: "biz_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to create the lead for, starting with 'biz_'.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — A JSON object of custom metadata to attach to the lead for tracking purposes.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of the product the lead is interested in, starting with 'prod_'.
    
</dd>
</dl>

<dl>
<dd>

**referrer:** `String` — The referral URL that brought the lead to the company, such as 'https://example.com/landing'.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The unique identifier of the user to record as the lead. If authenticated as a user, that user is used automatically.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Leads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/lib/whop_sdk/leads/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Lead</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing lead.

Required permissions:
 - `lead:basic:read`
 - `member:email:read`
 - `access_pass:basic:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.leads.retrieve(id: "lead_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lead to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Leads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.leads.<a href="/lib/whop_sdk/leads/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Lead</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the metadata or referrer information on an existing lead record.

Required permissions:
 - `lead:manage`
 - `member:email:read`
 - `access_pass:basic:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.leads.update(id: "lead_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the lead to update, starting with 'lead_'.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — A JSON object of custom metadata to set on the lead, replacing any existing metadata.
    
</dd>
</dl>

<dl>
<dd>

**referrer:** `String` — The updated referral URL for the lead, such as 'https://example.com/landing'.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Leads::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## LedgerAccounts
<details><summary><code>client.ledger_accounts.<a href="/lib/whop_sdk/ledger_accounts/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::LedgerAccount</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing ledger account.

Required permissions:
 - `company:balance:read`
 - `payout:account:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ledger_accounts.retrieve(id: "ldgr_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The identifier to look up the ledger account. Accepts a user ID ('user_xxx'), company ID ('biz_xxx'), or ledger account ID ('ldgr_xxx').
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::LedgerAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Media
<details><summary><code>client.media.<a href="/lib/whop_sdk/media/client.rb">generate</a>(request) -> Whop_sdk::Types::MediaAsset</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts an AI media generation job billed from the account's balance. Generation is asynchronous — poll `GET /media/{id}` until the asset is `ready`, then use `file.id` anywhere attachments are accepted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.generate(
  prompt: "A 9:16 product showcase of a cordless power scrubber",
  type: "video"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
    
</dd>
</dl>

<dl>
<dd>

**duration_seconds:** `Integer` — Video length in seconds. Video only; defaults to 5.
    
</dd>
</dl>

<dl>
<dd>

**prompt:** `String` — What to generate. Up to 2,000 characters.
    
</dd>
</dl>

<dl>
<dd>

**reference_media:** `Internal::Types::Array[String]` — Optional reference image file IDs (`file_` prefixed), up to 4. For video, a single reference seeds the opening frame; multiple references guide subject and style instead.
    
</dd>
</dl>

<dl>
<dd>

**resolution:** `Whop_sdk::Media::Types::GenerateMediaRequestResolution` — Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Whop_sdk::Media::Types::GenerateMediaRequestType` — The kind of media to generate.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/whop_sdk/media/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::MediaAsset</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a media asset by ID. Poll this while the asset is `processing`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Media asset ID, prefixed `media_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Members
<details><summary><code>client.members.<a href="/lib/whop_sdk/members/client.rb">list</a>() -> Whop_sdk::Members::Types::ListMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the members of an account. A member is one buyer's relationship with the account, regardless of how many memberships they hold.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to list members for (`biz_` tag). Defaults to the account the credential acts as.
    
</dd>
</dl>

<dl>
<dd>

**access_level:** `Whop_sdk::Members::Types::ListMembersRequestAccessLevel` — Filter by what the member can reach on the account.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Members::Types::ListMembersRequestStatus` — Filter by whether the member is still part of the account.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search members by name or username. An exact email address also matches when the credential holds the member:email:read scope.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only members who joined after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only members who joined before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Members::Types::ListMembersRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Members::Types::ListMembersRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of members to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of members to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/whop_sdk/members/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Member</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a member by ID. Accessible to the account and to the member's own user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Member ID (`mber_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Memberships
<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">list</a>() -> Whop_sdk::Memberships::Types::ListMembershipsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists every membership the caller can read: an account API key its account's; a user credential their own plus those of every account they manage. `account_id` and `user_id` only narrow that list — values outside the caller's reach return fewer results, not an error.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Narrow to one account (`biz_` tag). With read access to the account this lists all of its memberships; without, only the caller's own memberships in it.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Narrow to one user's memberships (`user_` tag, or `me` for the caller). A user outside the caller's visible set returns an empty list.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Memberships::Types::ListMembershipsRequestStatus` — Filter by billing state. `canceling` matches active memberships set to cancel at period end; `paused` matches memberships with payment collection paused.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — Filter to memberships of this product (`prod_` tag). Repeat as product_ids[] for several.
    
</dd>
</dl>

<dl>
<dd>

**plan_id:** `String` — Filter to memberships of this plan (`plan_` tag). Repeat as plan_ids[] for several.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only memberships created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only memberships created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Memberships::Types::ListMembershipsRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Memberships::Types::ListMembershipsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of memberships to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of memberships to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">invite</a>(request) -> Whop_sdk::Memberships::Types::InviteMembershipsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends an email inviting one recipient to join the account through a free plan. Identify the recipient by exactly one of `user_id` or `email`. The invitation is bound to that recipient; after signing in, accepting it immediately grants the membership without checkout. This Experimental endpoint is available only to accounts enabled for membership invitations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.invite(
  plan_id: "plan_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::Memberships::Types::InviteMembershipsRequestBody` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a membership by ID or license key. Accessible to the account and to the membership's own user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag), or a software license key.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a membership: merge metadata key-value pairs, or toggle `cancel_at_period_end` — `true` schedules the cancellation for the end of the current billing period, `false` reverses a pending one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag), or a software license key.
    
</dd>
</dl>

<dl>
<dd>

**cancel_at_period_end:** `Internal::Types::Boolean` — `true` cancels at the end of the current billing period (the customer keeps access until then); `false` reverses a pending cancellation.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Key-value pairs to merge into the membership's metadata. Pass an empty object to clear it.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">add_free_days_membership</a>(id:, request) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add free days to extend a membership's current billing period, expiration date, or Stripe trial.

Required permissions:
 - `member:manage`
 - `member:email:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.add_free_days_membership(
  id: "mem_xxxxxxxxxxxxxx",
  free_days: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the membership.
    
</dd>
</dl>

<dl>
<dd>

**free_days:** `Integer` — The number of free days to add (1-1095). Extends the billing period, expiration date, or Stripe trial depending on plan type.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">cancel</a>(id:, request) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels a membership. Pass `cancel_at_period_end: true` to stop auto-renewal and keep access until the current billing period ends. Omit it (or pass `false`) to revoke access immediately. Buyers cannot cancel buy-now-pay-later (`splitit`, `sezzle`) or non-trial split-pay memberships.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.cancel(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag).
    
</dd>
</dl>

<dl>
<dd>

**cancel_at_period_end:** `Internal::Types::Boolean` — `true` stops auto-renewal and keeps access until the current billing period ends. Omit or `false` revokes access immediately.
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` — Free-form note recording why the membership was canceled.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">extend_</a>(id:, request) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds free days to a membership, extending its current billing period, expiration date, or trial depending on the plan type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.extend_(
  id: "id",
  days: 7
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag).
    
</dd>
</dl>

<dl>
<dd>

**days:** `Integer` — Number of free days to add (1-1095).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">pause</a>(id:, request) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pauses a membership's recurring payment collection. The customer keeps access but is not charged until the membership is resumed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.pause(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag).
    
</dd>
</dl>

<dl>
<dd>

**until_:** `String` — ISO 8601 time to automatically resume payment collection. Must be in the future; only supported for memberships billed by Whop.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">resume</a>(id:) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resumes a previously paused membership's recurring payment collection. Billing resumes on the next cycle.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.resume(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">resync_access_membership</a>(id:) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-run access fulfillment for a membership. Recomputes the member's content access on Whop, re-validates their Discord link (re-adding them to the server and re-assigning roles if needed), and re-fulfills TradingView indicator access. Telegram access is invite-based and cannot be resynced here. The outcome is written to the membership's logs.

Required permissions:
 - `membership:resync_access`
 - `member:email:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.resync_access_membership(id: "mem_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the membership to resync access for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">transfer</a>(id:) -> Whop_sdk::Memberships::Types::TransferMembershipsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a one-use transfer URL for a membership. Opening the URL while logged into a different Whop account claims the membership onto that account. The membership's buyer can generate a link for their own membership with `membership:transfer` when the product allows transfers and the membership is `trialing`, `active`, or `completed`. An account credential with `membership:update` bypasses both restrictions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.transfer(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Membership ID (`mem_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.memberships.<a href="/lib/whop_sdk/memberships/client.rb">uncancel_membership</a>(id:) -> Whop_sdk::Types::Membership</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reverse a pending cancellation for a membership that was scheduled to cancel at period end.

Required permissions:
 - `member:manage`
 - `member:email:read`
 - `member:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memberships.uncancel_membership(id: "mem_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the membership to uncancel.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Memberships::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Messages
<details><summary><code>client.messages.<a href="/lib/whop_sdk/messages/client.rb">list</a>() -> Whop_sdk::Messages::Types::ListMessagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of messages within a specific experience chat, DM, or group chat channel, sorted by creation time.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.messages.list(
  first: 42,
  last: 42,
  channel_id: "channel_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**channel_id:** `String` — The unique identifier of the channel or experience to list messages for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.messages.<a href="/lib/whop_sdk/messages/client.rb">create</a>(request) -> Whop_sdk::Types::Message</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a new message in an experience chat, DM, or group chat channel. Supports text content, attachments, polls, and replies.

Required permissions (one of):
 - `chat:message:create`
 - `dms:message:manage`
 - `livestream:chat:write`
 - `support_chat:message:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.messages.create(
  channel_id: "channel_id",
  content: "content"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::Messages::Types::CreateMessagesRequestAttachmentsItem]` — A list of file attachments to include with the message, such as images or videos.
    
</dd>
</dl>

<dl>
<dd>

**auto_detect_links:** `Internal::Types::Boolean` — Automatically detect URLs in the message and generate link previews.
    
</dd>
</dl>

<dl>
<dd>

**channel_id:** `String` — The unique identifier of the channel or experience to send the message in. For example, 'exp_xxxxx' or 'feed_xxxxx'.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The body of the message in Markdown format. For example, 'Hello **world**'.
    
</dd>
</dl>

<dl>
<dd>

**poll:** `Whop_sdk::Messages::Types::CreateMessagesRequestPoll` — A poll to attach to this message, allowing recipients to vote on options.
    
</dd>
</dl>

<dl>
<dd>

**replying_to_message_id:** `String` — The unique identifier of the message this is replying to, creating a threaded reply.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.messages.<a href="/lib/whop_sdk/messages/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Message</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing message.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `livestream:chat:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.messages.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the message to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.messages.<a href="/lib/whop_sdk/messages/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a message from an experience chat, DM, or group chat channel. Only the message author or a channel admin can delete a message.

Required permissions (one of):
 - `chat:message:create` and `chat:read`
 - `dms:message:manage` and `dms:read`
 - `livestream:chat:write` and `livestream:chat:read`
 - `support_chat:message:create` and `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.messages.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the message to delete.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.messages.<a href="/lib/whop_sdk/messages/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Message</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Edit the content, attachments, or pinned status of an existing message in an experience chat, DM, or group chat channel.

Required permissions (one of):
 - `chat:message:create`
 - `dms:message:manage`
 - `livestream:chat:write`
 - `support_chat:message:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.messages.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the message to update.
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::Messages::Types::UpdateMessagesRequestAttachmentsItem]` — A replacement list of file attachments for this message, such as images or videos.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — The updated body of the message in Markdown format. For example, 'Hello **world**'.
    
</dd>
</dl>

<dl>
<dd>

**is_pinned:** `Internal::Types::Boolean` — Whether this message should be pinned to the top of the channel.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Messages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications
<details><summary><code>client.notifications.<a href="/lib/whop_sdk/notifications/client.rb">list</a>() -> Whop_sdk::Notifications::Types::ListNotificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's notifications, newest first. Requires a user credential — an account API key has no notification feed. Without filters the feed spans every experience the user belongs to plus the teams they are a member of.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**unread:** `Internal::Types::Boolean` — Only return notifications created since the user last viewed their source.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Only return notifications from this experience (`exp_` tag).
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Only return team notifications for this account (`biz_` tag).
    
</dd>
</dl>

<dl>
<dd>

**mentions:** `Internal::Types::Boolean` — Only return notifications that mention the user directly.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of notifications to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor (a notification `id` from a previous page); returns notifications older than it.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/whop_sdk/notifications/client.rb">create</a>(request) -> Whop_sdk::Notifications::Types::CreateNotificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Queues a notification to every user of an experience or to an account's team, processed asynchronously. Every send is attributed to an app: use an app API key, or a credential acting on behalf of an app. Narrow the audience with `user_ids` to send a mention.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.create(
  content: "Drop off at 4180 Burnet Rd. Plan on two days for the full coating.",
  title: "Your ceramic coating is booked"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account whose team members receive the notification (`biz_` tag). Exactly one of `experience_id` or `account_id` is required.
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` — Main body text of the notification.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Experience whose users receive the notification (`exp_` tag). Exactly one of `experience_id` or `account_id` is required.
    
</dd>
</dl>

<dl>
<dd>

**icon_user_id:** `String` — User whose profile picture is used as the notification icon. Defaults to the experience or account avatar.
    
</dd>
</dl>

<dl>
<dd>

**rest_path:** `String` — Path segment appended to the generated deep link that opens your app, for example `/settings/billing`.
    
</dd>
</dl>

<dl>
<dd>

**subtitle:** `String` — Optional secondary line displayed below the title.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — Headline text of the notification.
    
</dd>
</dl>

<dl>
<dd>

**user_ids:** `Internal::Types::Array[String]` — Optional `user_` tags narrowing the audience. When provided, only these users are notified (as a mention), provided they are in the targeted experience or account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/whop_sdk/notifications/client.rb">badges</a>() -> Whop_sdk::Notifications::Types::BadgesNotificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's per-experience unread badge state. Requires a user credential. Returns one row per experience the user belongs to (or per requested experience).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.badges(experience_ids: ["exp_xxxxxxxxxxxxxx"])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**experience_ids:** `String` — Only return badges for these experiences (`exp_` tags).
    
</dd>
</dl>

<dl>
<dd>

**last_fetched_at:** `String` — The client's last fetched-at ISO 8601 timestamp, used to partially refresh badges after a websocket message.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/whop_sdk/notifications/client.rb">mark_read</a>(request) -> Whop_sdk::Notifications::Types::MarkReadNotificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Marks the authenticated user's notifications as read: one experience's (`experience_id`) or everything (`all: true`) — exactly one of the two. Requires a user credential. Responds with the refreshed badge rows for the affected scope.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.mark_read
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**all:** `Internal::Types::Boolean` — Pass `true` to mark every notification read. Exactly one of `experience_id` or `all` is required.
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Experience to mark read (`exp_` tag). Exactly one of `experience_id` or `all` is required.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notifications.<a href="/lib/whop_sdk/notifications/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Notification</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single notification by id — either an `id` returned by List Notifications, or the ephemeral id delivered with a push/websocket event. Requires a user credential.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — A notification `id` from List Notifications, or the id delivered with a push/websocket event.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Partners
<details><summary><code>client.partners.<a href="/lib/whop_sdk/partners/client.rb">create</a>() -> Whop_sdk::Partners::Types::CreatePartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Enrolls the calling user in the Whop partner program, making their partner businesses eligible for earnings. Idempotent — enrolling again keeps the original enrollment time.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/lib/whop_sdk/partners/client.rb">leaderboard</a>() -> Whop_sdk::Partners::Types::LeaderboardPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Ranks referrers by partner business earnings — all-time by default, or over the current day, month, year, or trailing 30 days. Authentication is optional: authenticated callers also get their own standing, anonymous callers get the rankings alone.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.leaderboard
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**period:** `Whop_sdk::Partners::Types::LeaderboardPartnersRequestPeriod` — Time window for the rankings. `day`, `month`, and `year` count earnings since the start of the current calendar day, month, or year; `last_30_days` counts earnings over the trailing 30 days; `all_time` ranks lifetime earnings.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.<a href="/lib/whop_sdk/partners/client.rb">referred_users</a>() -> Whop_sdk::Partners::Types::ReferredUsersPartnersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the users the caller referred onto Whop (newest first), each with the second-tier earnings the caller has made from that user's businesses.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.referred_users
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**has_businesses:** `Internal::Types::Boolean` — When true, only referred users who brought at least one business onto Whop.
    
</dd>
</dl>

<dl>
<dd>

**has_earning_businesses:** `Internal::Types::Boolean` — When true, only referred users with at least one business that has generated earnings.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of referred users to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of referred users to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payment Method Domains
<details><summary><code>client.payment_method_domains.<a href="/lib/whop_sdk/payment_method_domains/client.rb">list</a>() -> Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists payment method domains. Without `account_id`, returns the caller's own domains and those of every connected account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domains.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Only domains registered for this account (`biz_` tag). Defaults to the caller's account plus its connected accounts.
    
</dd>
</dl>

<dl>
<dd>

**hostname:** `String` — Only the domain with this exact hostname.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestStatus` — Only domains with this verification status.
    
</dd>
</dl>

<dl>
<dd>

**provider:** `Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestProvider` — Only domains registered with this wallet provider.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only domains created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only domains created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::PaymentMethodDomains::Types::ListPaymentMethodDomainsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of domains to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of domains to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethodDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domains.<a href="/lib/whop_sdk/payment_method_domains/client.rb">create</a>(request) -> Whop_sdk::Types::PaymentMethodDomain</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a hostname with the wallet provider and attempts verification inline. Returns `verified` when the provider fetched the domain-association file (for Apple Pay, `/.well-known/apple-developer-merchantid-domain-association`), or `pending` when it could not — host the file, then retry with the verify endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domains.create(hostname: "pending.shinetime.example")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account to register the domain for (`biz_` tag). Defaults to the caller's account.
    
</dd>
</dl>

<dl>
<dd>

**hostname:** `String` — Hostname to register (e.g. `checkout.shinetime.example`).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethodDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domains.<a href="/lib/whop_sdk/payment_method_domains/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::PaymentMethodDomain</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a payment method domain to check its verification status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domains.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment method domain, prefixed `pmd_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethodDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domains.<a href="/lib/whop_sdk/payment_method_domains/client.rb">delete</a>(id:) -> Whop_sdk::PaymentMethodDomains::Types::DeletePaymentMethodDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unregisters a payment method domain so its wallet payment methods stop rendering there.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domains.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment method domain, prefixed `pmd_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethodDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domains.<a href="/lib/whop_sdk/payment_method_domains/client.rb">verify</a>(id:) -> Whop_sdk::Types::PaymentMethodDomain</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-attempts provider verification of a pending domain once the association file is hosted. Fails with a `bad_request` explaining what to fix; verifying an already `verified` domain is a no-op.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domains.verify(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment method domain, prefixed `pmd_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethodDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PaymentMethods
<details><summary><code>client.payment_methods.<a href="/lib/whop_sdk/payment_methods/client.rb">list</a>() -> Whop_sdk::PaymentMethods::Types::ListPaymentMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of payment methods for a member or company, or for the authenticated user when neither is given, with optional filtering by creation date. A payment method is a stored representation of how a customer intends to pay, such as a card, bank account, or digital wallet.

Required permissions:
 - `member:payment_methods:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_methods.list(
  first: 42,
  last: 42,
  member_id: "mber_xxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**member_id:** `String` — The unique identifier of the member to list payment methods for. Omit this and company_id to list your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company. Provide either this or member_id, not both. Omit both to address your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return payment methods created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return payment methods created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**future_usage:** `Whop_sdk::Types::FutureUsageTypes` 
    
</dd>
</dl>

<dl>
<dd>

**payment_method_types:** `Whop_sdk::Types::PaymentMethodTypes` — Only return payment methods of these types. Pass the eligible `type` values from the payment method types catalogue so the list holds nothing the purchase cannot take. An empty list returns no payment methods.
    
</dd>
</dl>

<dl>
<dd>

**card_brands:** `Whop_sdk::Types::CardBrands` — Only return cards on these networks, such as the networks the seller accepts. Payment methods that are not cards are unaffected.
    
</dd>
</dl>

<dl>
<dd>

**card_funding_types:** `Whop_sdk::Types::CardFundingTypes` — Only return cards funded this way. A card whose funding could not be determined is excluded, and payment methods that are not cards are unaffected.
    
</dd>
</dl>

<dl>
<dd>

**has_payer_document:** `Internal::Types::Boolean` — Filter cards by whether they carry the payer identity document their payment provider requires. Payment methods that are not cards are unaffected.
    
</dd>
</dl>

<dl>
<dd>

**expired:** `Internal::Types::Boolean` — Filter by expiry. Only a card can expire, so `false` keeps every payment method that is not past its expiration month and `true` returns expired cards alone.
    
</dd>
</dl>

<dl>
<dd>

**broken:** `Internal::Types::Boolean` — Filter by whether the stored credential has permanently stopped charging, such as a vault entry its provider closed.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_methods.<a href="/lib/whop_sdk/payment_methods/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::PaymentMethod</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing payment method. Addresses a member's wallet when member_id or company_id is given, otherwise your own.

Required permissions:
 - `member:payment_methods:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_methods.retrieve(
  id: "payt_xxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx",
  member_id: "mber_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment method.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company. Provide either this or member_id, not both. Omit both to address your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**member_id:** `String` — The unique identifier of the member. Provide either this or company_id, not both. Omit both to address your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_methods.<a href="/lib/whop_sdk/payment_methods/client.rb">delete_payment_method</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a saved payment method. Cannot delete a payment method attached to an active subscription.

Required permissions:
 - `member:payment_methods:manage`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_methods.delete_payment_method(
  id: "payt_xxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx",
  member_id: "mber_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment method to delete.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company. Provide either this or member_id, not both. Omit both to address your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**member_id:** `String` — The unique identifier of the member. Provide either this or company_id, not both. Omit both to address your own saved payment methods.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PaymentMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payments
<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">list</a>() -> Whop_sdk::Payments::Types::ListPaymentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of payments for the actor in context, with optional filtering by product, plan, status, billing reason, currency, and creation date.

Required permissions:
 - `payment:basic:read`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z",
  updated_before: "2023-12-01T05:00:00Z",
  updated_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list payments for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Types::ReceiptV2Order` 
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Filter payments to only those associated with these specific product identifiers.
    
</dd>
</dl>

<dl>
<dd>

**billing_reasons:** `Whop_sdk::Types::BillingReasons` — Filter payments by their billing reason.
    
</dd>
</dl>

<dl>
<dd>

**currencies:** `Whop_sdk::Types::Currencies` — Filter payments by their currency code.
    
</dd>
</dl>

<dl>
<dd>

**plan_ids:** `String` — Filter payments to only those associated with these specific plan identifiers.
    
</dd>
</dl>

<dl>
<dd>

**statuses:** `Whop_sdk::Types::ReceiptStatus` — Filter payments by their current status.
    
</dd>
</dl>

<dl>
<dd>

**substatuses:** `Whop_sdk::Types::FriendlyReceiptStatus` — Filter payments by their current substatus for more granular filtering.
    
</dd>
</dl>

<dl>
<dd>

**include_free:** `Internal::Types::Boolean` — Whether to include payments with a zero amount.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return payments created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return payments created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**updated_before:** `String` — Only return payments last updated before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**updated_after:** `String` — Only return payments last updated after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search payments by user ID, membership ID, user email, name, or username. Email filtering requires the member:email:read permission.
    
</dd>
</dl>

<dl>
<dd>

**checkout_configuration_ids:** `String` — Only return payments from these checkout configurations.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">create</a>(request) -> Whop_sdk::Payments::Types::CreatePaymentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Charge an existing member off-session using one of their stored payment methods. You can provide an existing plan, or create a new one in-line. This endpoint will respond with a payment object immediately, but the payment is processed asynchronously in the background. Use webhooks to be notified when the payment succeeds or fails.

Required permissions:
 - `payment:charge`
 - `plan:create`
 - `access_pass:create`
 - `access_pass:update`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
 - `payment:dispute:read`
 - `payment:resolution_center_case:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  confirmation_token: "confirmation_token",
  plan: {
    currency: "usd"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::Payments::Types::CreatePaymentsRequest` — Parameters for CreatePayment
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">retrieve</a>(id:) -> Whop_sdk::Payments::Types::RetrievePaymentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing payment.

Required permissions:
 - `payment:basic:read`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
 - `payment:dispute:read`
 - `payment:resolution_center_case:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.retrieve(id: "pay_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">capture</a>(id:) -> Whop_sdk::Types::PaymentStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Captures the full amount of a card payment created with `capture: false`. The payment must still be in `requires_capture` before `capture_expires_at`. Partial capture, multiple captures, capturing more than the authorized amount, and tips are not supported.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.capture(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">list_fees</a>(id:) -> Whop_sdk::Payments::Types::ListFeesPaymentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the list of fees associated with a specific payment, including platform fees and processing fees.

Required permissions:
 - `payment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.list_fees(
  id: "pay_xxxxxxxxxxxxxx",
  first: 42,
  last: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment to list fees for.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">refund</a>(id:, request) -> Whop_sdk::Types::Payment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a full or partial refund for a payment. The refund is processed through the original payment processor and the membership status is updated accordingly.

Required permissions:
 - `payment:manage`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
 - `payment:dispute:read`
 - `payment:resolution_center_case:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.refund(id: "pay_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment to refund.
    
</dd>
</dl>

<dl>
<dd>

**partial_amount:** `Integer` — The amount to refund. For multi-currency payments, this is in the charge currency (what the buyer paid). For single-currency, this is in the payment currency. If omitted, the full payment amount is refunded.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">retry_</a>(id:) -> Whop_sdk::Types::Payment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retry a failed or pending payment. This re-attempts the charge using the original payment method and plan details.

Required permissions:
 - `payment:manage`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
 - `payment:dispute:read`
 - `payment:resolution_center_case:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.retry_(id: "pay_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment to retry.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">void</a>(id:) -> Whop_sdk::Types::Payment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Void a payment that has not yet been settled. Voiding cancels the payment before it is captured by the payment processor.

Required permissions:
 - `payment:manage`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
 - `promo_code:basic:read`
 - `shipment:basic:read`
 - `payment:dispute:read`
 - `payment:resolution_center_case:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.void(id: "pay_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payment to void.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">update_return_url</a>(payment_id:, request) -> Whop_sdk::Types::PaymentStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes where the buyer lands after completing an off-site step, up until they return. Accepts either a secret key or the payment's own `client_secret`, so the surface that knows the final destination can set it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.update_return_url(
  payment_id: "payment_id",
  return_url: "https://shinetime.example/checkout/thanks"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**payment_id:** `String` — The unique identifier of the payment.
    
</dd>
</dl>

<dl>
<dd>

**return_url:** `String` — Where the buyer continues after completing an off-site step. Must be an absolute https URL without credentials (http is allowed for localhost), at most 2,048 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payments.<a href="/lib/whop_sdk/payments/client.rb">retrieve_status</a>(payment_id:) -> Whop_sdk::Types::PaymentStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves how far a payment has got and what the buyer must do next, if anything. A payment is collected in the background, so poll this rather than reading the create response. Accepts either a secret key or the payment's own `client_secret`, so the surface collecting the payment can poll it directly.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payments.retrieve_status(payment_id: "payment_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**payment_id:** `String` — The unique identifier of the payment.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayoutAccounts
<details><summary><code>client.payout_accounts.<a href="/lib/whop_sdk/payout_accounts/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::PayoutAccount</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing payout account.

Required permissions:
 - `payout:account:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payout_accounts.retrieve(id: "poact_xxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payout account to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PayoutAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PayoutMethods
<details><summary><code>client.payout_methods.<a href="/lib/whop_sdk/payout_methods/client.rb">list_payout_method</a>() -> Whop_sdk::PayoutMethods::Types::ListPayoutMethodResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of active payout methods configured for a company, ordered by most recently created.

Required permissions:
 - `payout:destination:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payout_methods.list_payout_method(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list payout methods for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PayoutMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payout_methods.<a href="/lib/whop_sdk/payout_methods/client.rb">retrieve_payout_method</a>(id:) -> Whop_sdk::Types::PayoutMethod</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing payout method.

Required permissions:
 - `payout:destination:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payout_methods.retrieve_payout_method(id: "potk_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the payout method to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PayoutMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payouts
<details><summary><code>client.payouts.<a href="/lib/whop_sdk/payouts/client.rb">list</a>() -> Whop_sdk::Payouts::Types::ListPayoutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists an account's or user's payouts, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Optional currency code filter, for example `usd`.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Payouts::Types::ListPayoutsRequestStatus` — Filter to payouts whose `status` reads this word, matching exactly what this version displays — `reversed` finds settled payouts the bank later returned. Requires Api-Version-Date 2026-08-21 or later.
    
</dd>
</dl>

<dl>
<dd>

**source:** `Whop_sdk::Payouts::Types::ListPayoutsRequestSource` — Filter by how the payout was created. Payouts created before source tracking or through internal tooling carry no source and never match.
    
</dd>
</dl>

<dl>
<dd>

**payout_method_id:** `String` — Filter to payouts sent to one saved payout method (a pytk_ identifier). An unknown id matches nothing.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only payouts created before this ISO 8601 time (exclusive).
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only payouts created at or after this ISO 8601 time (inclusive).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of payouts to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of payouts to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.<a href="/lib/whop_sdk/payouts/client.rb">create</a>(request) -> Whop_sdk::Payouts::Types::CreatePayoutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends money from an account or user balance to a saved payout method for that owner.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.create(request: {
  key: "value"
})
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::Payouts::Types::CreatePayoutsRequestBody` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.<a href="/lib/whop_sdk/payouts/client.rb">create_quote</a>(request) -> Whop_sdk::Payouts::Types::CreateQuotePayoutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a short-lived, provider-backed quote for a payout. No funds move until the returned quote_token is submitted to POST /payouts. An Idempotency-Key header is required.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.create_quote(
  amount: 6762.41,
  payout_method_id: "potk_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account to pay out from, prefixed `biz_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — The amount to pay out in the specified currency.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — The balance currency to pay out.
    
</dd>
</dl>

<dl>
<dd>

**payout_method_id:** `String` — The saved payout method to quote (a potk_ identifier).
    
</dd>
</dl>

<dl>
<dd>

**platform_covers_fees:** `Internal::Types::Boolean` — Whether the parent platform covers the payout fee instead of the account being paid out.
    
</dd>
</dl>

<dl>
<dd>

**speed:** `Whop_sdk::Payouts::Types::CreateQuotePayoutsRequestSpeed` — How fast the funds should arrive.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — User to pay out from, prefixed `user_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.<a href="/lib/whop_sdk/payouts/client.rb">retrieve</a>(id:) -> Whop_sdk::Payouts::Types::RetrievePayoutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Fetches one payout by its `wdrl_` ID, or by the `cofr_` conversion request ID a stablecoin payout carries as `payout_request_id` — both ids answer with the same payout object.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payout ID, prefixed `wdrl_` for a payout returned by `GET /payouts` or `cofr_` for the payout request returned by `POST /payouts`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Owning account ID, prefixed `biz_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Owning user ID, prefixed `user_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.<a href="/lib/whop_sdk/payouts/client.rb">cancel</a>(id:) -> Whop_sdk::Payouts::Types::CancelPayoutsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels a payout that is still in review and returns the funds, fees included, to the balance. A payout can be canceled while its status is `in_review`. A `requested` payout is still being prepared (its funds may be converting) and answers 409 until it reaches review; from `processing` on, the money is on its way and the answer is 409 with error type `not_cancelable`. Canceling a payout that is already canceled succeeds and returns it unchanged.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.cancel(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payout ID, prefixed `wdrl_`, or the `cofr_` payout request ID returned by `POST /payouts` — both cancel the same payout.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Owning account ID, prefixed `biz_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Owning user ID, prefixed `user_`. Provide exactly one of `account_id` or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## People
<details><summary><code>client.people.<a href="/lib/whop_sdk/people/client.rb">list</a>() -> Whop_sdk::People::Types::ListPeopleResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the people (visitors and customers) of an account: the identity-linked person profiles aggregated from every pixel, payment, and platform event — identities, purchases and LTV, geo/device profile, traffic sources, and first/last marketing touches.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.people.list(
  source: ["direct"],
  event_name: ["payment.completed"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Optional for account API keys; required for credentials that can access multiple accounts.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search people by name, email, phone, or whop user ID (case-insensitive substring match).
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` — Only include people acquired from any of these sources — canonical paths (whop:<campaign>:<group>:<ad>, ext:<platform>:..., referrer:<domain>, direct, other), exact or with a trailing :* prefix. The same vocabulary the events / people metrics use.
    
</dd>
</dl>

<dl>
<dd>

**attribution_model:** `Whop_sdk::People::Types::ListPeopleRequestAttributionModel` — Attribution model the source filter matches against (defaults to last_touch).
    
</dd>
</dl>

<dl>
<dd>

**event_name:** `String` — Only include people who fired any of these events, e.g. payment.completed or page.checkout.view.
    
</dd>
</dl>

<dl>
<dd>

**custom_event:** `String` — Only include people who fired this custom pixel event.
    
</dd>
</dl>

<dl>
<dd>

**event_from:** `String` — With event_to plus an event or source filter, switches to exact-population mode: person ids are resolved and paginated on the events side within this window (the same query the people metric counts), then hydrated per page.
    
</dd>
</dl>

<dl>
<dd>

**event_to:** `String` — The inclusive end of the event window for exact-population mode.
    
</dd>
</dl>

<dl>
<dd>

**audience_id:** `String` — Only include people in this audience. An audience that keeps itself up to date resolves to the People filters that define it, so this always reflects who matches now; uploaded lists and point-in-time snapshots match their recorded members.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Only include the person linked to this whop user ID.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Only include the person linked to this email address.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Only include the person linked to this phone number.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — Only include people whose most recent visit came from this ISO 3166-1 alpha-2 country code.
    
</dd>
</dl>

<dl>
<dd>

**has_purchased:** `Internal::Types::Boolean` — true for customers only, false for people who have never purchased.
    
</dd>
</dl>

<dl>
<dd>

**contactable:** `Internal::Types::Boolean` — true for people who have an email address or phone number — the ones an ad platform can match.
    
</dd>
</dl>

<dl>
<dd>

**first_seen_within_days:** `Integer` — Only include people first seen within this many days, as a rolling window.
    
</dd>
</dl>

<dl>
<dd>

**last_seen_within_days:** `Integer` — Only include people last seen within this many days, as a rolling window.
    
</dd>
</dl>

<dl>
<dd>

**first_seen_after:** `String` — Only include people first seen at or after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first_seen_before:** `String` — Only include people first seen before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**last_seen_after:** `String` — Only include people last seen at or after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**last_seen_before:** `String` — Only include people last seen before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of people to return (default 100, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor for fetching people after a previous page.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor for fetching people before a later page.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::People::Types::ListPeopleRequestOrder` — Column to sort by. Defaults to last_seen_at.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::People::Types::ListPeopleRequestDirection` — Sort direction. Defaults to desc.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::People::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.people.<a href="/lib/whop_sdk/people/client.rb">retrieve</a>(id:) -> Whop_sdk::People::Types::RetrievePeopleResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves one person for an account. The identifier can be a person ID (prefixed `prsn_`), a user ID (prefixed `user_`), an email address, or a phone number — merged people resolve to the surviving profile.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.people.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The person ID, user ID, email address, or phone number to look up.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Optional for account API keys; required for credentials that can access multiple accounts.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::People::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Permissions
<details><summary><code>client.permissions.<a href="/lib/whop_sdk/permissions/client.rb">list</a>() -> Whop_sdk::Permissions::Types::ListPermissionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists permission actions and whether the calling credential is granted each one for a resource. Answers for whichever identity authenticated the request — a user session, an OAuth token, or an account or app API key — so it never describes who else can reach the resource.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.permissions.list(resource_id: "resource_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**resource_id:** `String` — Tag of the resource to check against: an account (`biz_`), product (`prod_`), experience (`exp_`), or app (`app_`). A resource the credential cannot see is reported as granted nothing rather than as an error.
    
</dd>
</dl>

<dl>
<dd>

**actions:** `String` — Comma-separated permission actions to check, for example `stats:read,payment:basic:read`. Every action is returned when omitted.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Permissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Plans
<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">list</a>() -> Whop_sdk::Plans::Types::ListPlansResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of plans. Omit `account_id` and pass `product_ids` to list a product's public buyable plans.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.list(
  release_methods: ["buy_now"],
  visibilities: ["visible"],
  plan_types: ["renewal"],
  product_ids: ["prod_xxxxxxxxxxxxxx"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account to list plans for. Required unless `product_ids` is provided for a public product-plan read.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Plans::Types::ListPlansRequestDirection` — The sort direction for results. Defaults to descending.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Plans::Types::ListPlansRequestOrder` — The field to sort results by. Defaults to created_at.
    
</dd>
</dl>

<dl>
<dd>

**release_methods:** `String` — Filter to only plans matching these release methods.
    
</dd>
</dl>

<dl>
<dd>

**visibilities:** `String` — Filter to only plans matching these visibility states.
    
</dd>
</dl>

<dl>
<dd>

**plan_types:** `String` — Filter to only plans matching these billing types.
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Filter to only plans belonging to these product identifiers. When `account_id` is omitted, this is required and the response is publicly readable: only visible, non-invoice plans are returned.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return plans created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return plans created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of plans to return (default and max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns plans after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of plans to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns plans before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">create</a>(request) -> Whop_sdk::Types::Plan</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new pricing plan for a product. The plan defines the billing interval, price, and availability for customers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account to create this plan for. Defaults to the caller's account.
    
</dd>
</dl>

<dl>
<dd>

**adaptive_pricing_enabled:** `Internal::Types::Boolean` — Whether this plan accepts local currency payments via adaptive pricing.
    
</dd>
</dl>

<dl>
<dd>

**billing_period:** `Integer` — Recurring billing interval in days, such as 30 for monthly or 365 for annual.
    
</dd>
</dl>

<dl>
<dd>

**checkout_styling:** `Internal::Types::Hash[String, Object]` — Checkout styling overrides for this plan.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — The three-letter ISO currency code for the plan's pricing. Defaults to USD.
    
</dd>
</dl>

<dl>
<dd>

**custom_fields:** `Internal::Types::Array[Whop_sdk::Plans::Types::CreatePlansRequestCustomFieldsItem]` — An array of custom field definitions to collect from customers at checkout. Omitting this field clears existing custom fields.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A text description of the plan displayed to customers on the product page.
    
</dd>
</dl>

<dl>
<dd>

**expiration_days:** `Integer` — Access duration in days before the membership expires.
    
</dd>
</dl>

<dl>
<dd>

**image:** `Whop_sdk::Plans::Types::CreatePlansRequestImage` — An image displayed on the product page to represent this plan.
    
</dd>
</dl>

<dl>
<dd>

**initial_price:** `Integer` — Initial amount charged in the plan's currency, e.g. 10.43 for $10.43.
    
</dd>
</dl>

<dl>
<dd>

**internal_notes:** `String` — Private notes visible only to the account owner. Not shown to customers.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value pairs to store on the plan. Included in webhook payloads for payment and membership events. Max 50 keys, 100 chars per key, 500 chars per string value. The reserved keys `custom_cta` (a checkout call-to-action button label — one of the product custom CTA values, e.g. `subscribe`, `get_offer`) and `custom_cta_url` (a URL the button links to; web or `tel:`) override the product's call to action for this plan and are validated on save.
    
</dd>
</dl>

<dl>
<dd>

**override_tax_type:** `String` — Override the default tax classification for this specific plan.
    
</dd>
</dl>

<dl>
<dd>

**payment_method_configuration:** `Whop_sdk::Plans::Types::CreatePlansRequestPaymentMethodConfiguration` — Explicit payment method configuration for the plan. When not provided, the account's defaults apply.
    
</dd>
</dl>

<dl>
<dd>

**plan_type:** `String` — Plan billing type, such as `one_time` or `renewal`.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of the product to attach this plan to.
    
</dd>
</dl>

<dl>
<dd>

**release_method:** `String` — Sales method for this plan.
    
</dd>
</dl>

<dl>
<dd>

**renewal_price:** `Integer` — The amount charged each billing period for recurring plans, in the plan's currency.
    
</dd>
</dl>

<dl>
<dd>

**split_pay_required_payments:** `Integer` — Installment payments required before the subscription pauses.
    
</dd>
</dl>

<dl>
<dd>

**stock:** `Integer` — The maximum number of units available for purchase. Ignored when unlimited_stock is true.
    
</dd>
</dl>

<dl>
<dd>

**three_ds_level:** `Whop_sdk::Plans::Types::CreatePlansRequestThreeDsLevel` — 3D Secure behavior for this plan. Send `null` to inherit the account default.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the plan shown to customers on the product page.
    
</dd>
</dl>

<dl>
<dd>

**trial_period_days:** `Integer` — Free trial duration before the first recurring charge.
    
</dd>
</dl>

<dl>
<dd>

**unlimited_stock:** `Internal::Types::Boolean` — Whether the plan has unlimited stock. When true, the stock field is ignored.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — Whether the plan is visible to customers or hidden from public view.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Plan</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing plan.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Plan ID, prefixed `plan_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">delete</a>(id:) -> Whop_sdk::Plans::Types::DeletePlansResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently delete a plan from a product. Existing memberships on this plan will not be affected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Plan ID, prefixed `plan_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Plan</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a plan's pricing, billing interval, visibility, stock, and other settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Plan ID, prefixed `plan_`.
    
</dd>
</dl>

<dl>
<dd>

**adaptive_pricing_enabled:** `Internal::Types::Boolean` — Whether this plan accepts local currency payments via adaptive pricing.
    
</dd>
</dl>

<dl>
<dd>

**billing_period:** `Integer` — Recurring billing interval in days, such as 30 for monthly or 365 for annual.
    
</dd>
</dl>

<dl>
<dd>

**cancel_discount_intervals:** `Integer` — How many renewals the retention discount applies to. Required when `offer_cancel_discount` is true.
    
</dd>
</dl>

<dl>
<dd>

**cancel_discount_percentage:** `Integer` — Percentage taken off each discounted renewal. Required when `offer_cancel_discount` is true.
    
</dd>
</dl>

<dl>
<dd>

**checkout_styling:** `Internal::Types::Hash[String, Object]` — Checkout styling overrides for this plan.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — The three-letter ISO currency code for the plan's pricing. Defaults to USD.
    
</dd>
</dl>

<dl>
<dd>

**custom_fields:** `Internal::Types::Array[Whop_sdk::Plans::Types::UpdatePlansRequestCustomFieldsItem]` — An array of custom field definitions to collect from customers at checkout. Omitting this field clears existing custom fields.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A text description of the plan displayed to customers on the product page.
    
</dd>
</dl>

<dl>
<dd>

**expiration_days:** `Integer` — Access duration in days before the membership expires.
    
</dd>
</dl>

<dl>
<dd>

**image:** `Whop_sdk::Plans::Types::UpdatePlansRequestImage` — An image displayed on the product page to represent this plan.
    
</dd>
</dl>

<dl>
<dd>

**initial_price:** `Integer` — Initial amount charged in the plan's currency, e.g. 10.43 for $10.43.
    
</dd>
</dl>

<dl>
<dd>

**internal_notes:** `String` — Private notes visible only to the account owner. Not shown to customers.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value pairs to store on the plan. Included in webhook payloads for payment and membership events. Max 50 keys, 100 chars per key, 500 chars per string value. The reserved keys `custom_cta` (a checkout call-to-action button label — one of the product custom CTA values, e.g. `subscribe`, `get_offer`) and `custom_cta_url` (a URL the button links to; web or `tel:`) override the product's call to action for this plan and are validated on save.
    
</dd>
</dl>

<dl>
<dd>

**offer_cancel_discount:** `Internal::Types::Boolean` — Whether to offer a retention discount when a customer attempts to cancel.
    
</dd>
</dl>

<dl>
<dd>

**override_tax_type:** `String` — Override the default tax classification for this specific plan.
    
</dd>
</dl>

<dl>
<dd>

**payment_method_configuration:** `Whop_sdk::Plans::Types::UpdatePlansRequestPaymentMethodConfiguration` — Explicit payment method configuration for the plan. When not provided, the account's defaults apply.
    
</dd>
</dl>

<dl>
<dd>

**release_method:** `String` — Sales method for this plan.
    
</dd>
</dl>

<dl>
<dd>

**renewal_price:** `Integer` — The amount charged each billing period for recurring plans, in the plan's currency.
    
</dd>
</dl>

<dl>
<dd>

**stock:** `Integer` — The maximum number of units available for purchase. Ignored when unlimited_stock is true.
    
</dd>
</dl>

<dl>
<dd>

**strike_through_initial_price:** `Integer` — A comparison price displayed with a strikethrough for the initial price.
    
</dd>
</dl>

<dl>
<dd>

**strike_through_renewal_price:** `Integer` — A comparison price displayed with a strikethrough for the renewal price.
    
</dd>
</dl>

<dl>
<dd>

**three_ds_level:** `Whop_sdk::Plans::Types::UpdatePlansRequestThreeDsLevel` — 3D Secure behavior for this plan. Send `null` to inherit the account default.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the plan shown to customers on the product page.
    
</dd>
</dl>

<dl>
<dd>

**trial_period_days:** `Integer` — Free trial duration before the first recurring charge.
    
</dd>
</dl>

<dl>
<dd>

**unlimited_stock:** `Internal::Types::Boolean` — Whether the plan has unlimited stock. When true, the stock field is ignored.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — Whether the plan is visible to customers or hidden from public view.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.plans.<a href="/lib/whop_sdk/plans/client.rb">calculate_tax</a>(id:, request) -> Whop_sdk::Plans::Types::CalculateTaxPlansResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews tax for a plan before checkout, based on the buyer's location.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.calculate_tax(
  id: "id",
  address: {
    country: "DE",
    postal_code: "10115"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Plan ID, prefixed `plan_`.
    
</dd>
</dl>

<dl>
<dd>

**address:** `Whop_sdk::Plans::Types::CalculateTaxPlansRequestAddress` — Buyer billing address used for tax calculation. Provide either `address.country` or `ip_address`; include state and postal code when available for more accurate results.
    
</dd>
</dl>

<dl>
<dd>

**ip_address:** `String` — Buyer IP address used to infer location when no billing address is provided.
    
</dd>
</dl>

<dl>
<dd>

**tax_ids:** `Internal::Types::Array[Whop_sdk::Plans::Types::CalculateTaxPlansRequestTaxIDsItem]` — Optional buyer tax ID for B2B exemptions. At most one entry is supported.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Products
<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">list</a>() -> Whop_sdk::Products::Types::ListProductsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of products. Omit `account_id` to search the public marketplace.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.list(
  visibilities: ["visible"],
  access_pass_types: ["regular"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account to list products for. Omit to search the public marketplace.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Ranked search against product title and headline. Omit to browse by recency.
    
</dd>
</dl>

<dl>
<dd>

**marketplace_category_route:** `String` — Only return marketplace products assigned to this category route, such as `trading`.
    
</dd>
</dl>

<dl>
<dd>

**plan_types:** `Whop_sdk::Products::Types::ListProductsRequestPlanTypesItem` — Filter to products with a buyable plan of these billing models, such as `one_time` or `renewal`.
    
</dd>
</dl>

<dl>
<dd>

**price_minimum:** `Integer` — Only return products whose advertised buyable plan has a displayed price of at least this amount. Recurring plans use renewal price.
    
</dd>
</dl>

<dl>
<dd>

**price_maximum:** `Integer` — Only return products whose advertised buyable plan has a displayed price of at most this amount. Recurring plans use renewal price.
    
</dd>
</dl>

<dl>
<dd>

**visibilities:** `String` — Filter to only products matching these visibility states. Ignored on the public marketplace list, which only returns visible products.
    
</dd>
</dl>

<dl>
<dd>

**access_pass_types:** `String` — Filter to only products matching these types.
    
</dd>
</dl>

<dl>
<dd>

**labels:** `String` — Filter to only products carrying all of these labels. Labels are matched lowercased.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Products::Types::ListProductsRequestDirection` — The sort direction for results. Defaults to descending.
    
</dd>
</dl>

<dl>
<dd>

**order:** `String` — The field to sort results by. Account lists default to `created_at`. Marketplace lists default to `discoverable_at` and accept `created_at` or `discoverable_at`. Cannot be combined with `query`.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of products to return (default and max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns products after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of products to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns products before this position.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return products created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return products created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">create</a>(request) -> Whop_sdk::Types::Product</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new product for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.create(title: "Interior Deep Clean")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account to create this product for.
    
</dd>
</dl>

<dl>
<dd>

**collect_shipping_address:** `Internal::Types::Boolean` — Whether to collect a shipping address at checkout.
    
</dd>
</dl>

<dl>
<dd>

**custom_cta:** `Whop_sdk::Products::Types::CreateProductsRequestCustomCta` — The call-to-action button label.
    
</dd>
</dl>

<dl>
<dd>

**custom_cta_url:** `String` — A URL the call-to-action button links to.
    
</dd>
</dl>

<dl>
<dd>

**custom_statement_descriptor:** `String` — Custom bank statement descriptor. Must start with WHOP*.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A written description displayed on the product page.
    
</dd>
</dl>

<dl>
<dd>

**global_affiliate_percentage:** `Integer` — The commission rate affiliates earn.
    
</dd>
</dl>

<dl>
<dd>

**global_affiliate_status:** `Whop_sdk::Products::Types::CreateProductsRequestGlobalAffiliateStatus` — The enrollment status in the global affiliate program.
    
</dd>
</dl>

<dl>
<dd>

**headline:** `String` — A short marketing headline for the product page.
    
</dd>
</dl>

<dl>
<dd>

**labels:** `Internal::Types::Array[String]` — Labels used to group products into collections. Stored lowercased and de-duplicated. Maximum 20 labels, 50 characters each.
    
</dd>
</dl>

<dl>
<dd>

**member_affiliate_percentage:** `Integer` — The commission rate members earn.
    
</dd>
</dl>

<dl>
<dd>

**member_affiliate_status:** `Whop_sdk::Products::Types::CreateProductsRequestMemberAffiliateStatus` — The enrollment status in the member affiliate program.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value pairs to store on the product.
    
</dd>
</dl>

<dl>
<dd>

**product_tax_code_id:** `String` — The unique identifier of the tax classification code. See the available [product categories](https://docs.numeral.com/essentials/product-categories).
    
</dd>
</dl>

<dl>
<dd>

**redirect_purchase_url:** `String` — A URL to redirect the customer to after purchase.
    
</dd>
</dl>

<dl>
<dd>

**route:** `String` — The URL slug for the product's public link.
    
</dd>
</dl>

<dl>
<dd>

**send_welcome_message:** `Internal::Types::Boolean` — Whether to send an automated welcome message via support chat when a user joins this product. Defaults to true.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the product. Maximum 80 characters.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — Whether the product is visible to customers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Product</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a product. Public — no credentials.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the product.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">delete</a>(id:) -> Whop_sdk::Products::Types::DeleteProductsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a product. Only products with no memberships, entries, reviews, or invoices can be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the product.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Product</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the product.
    
</dd>
</dl>

<dl>
<dd>

**banner_image:** `Whop_sdk::Products::Types::UpdateProductsRequestBannerImage` — A wide image for the product, shown on the product page and on listing cards. Pass `{ id }` for an existing attachment or `{ direct_upload_id }` for a completed direct upload; `null` removes it.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — A written description displayed on the product page.
    
</dd>
</dl>

<dl>
<dd>

**headline:** `String` — A short marketing headline for the product page.
    
</dd>
</dl>

<dl>
<dd>

**labels:** `Internal::Types::Array[String]` — Labels used to group products into collections. Replaces the existing labels. Send an empty array to clear them.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Custom key-value pairs to store on the product.
    
</dd>
</dl>

<dl>
<dd>

**product_tax_code_id:** `String` — The unique identifier of the tax classification code. See the available [product categories](https://docs.numeral.com/essentials/product-categories).
    
</dd>
</dl>

<dl>
<dd>

**send_welcome_message:** `Internal::Types::Boolean` — Whether to send an automated welcome message via support chat when a user joins this product.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The display name of the product.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — Whether the product is visible to customers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">publish</a>(id:) -> Whop_sdk::Types::Product</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits a product to the whop.com marketplace for review. The product moves to `pending_review`; a Whop reviewer approves it before it goes live.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.publish(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the product, prefixed `prod_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.products.<a href="/lib/whop_sdk/products/client.rb">unpublish</a>(id:) -> Whop_sdk::Types::Product</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a product from the whop.com marketplace. The product moves to `not_available`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.products.unpublish(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the product, prefixed `prod_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Products::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Promo Codes
<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">list</a>() -> Whop_sdk::PromoCodes::Types::ListPromoCodesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists promo codes for an account with cursor pagination, filters, and sorting.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.list(
  account_id: "account_id",
  product_ids: ["prod_xxxxxxxxxxxxxx"],
  plan_ids: ["plan_xxxxxxxxxxxxxx"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account whose promo codes are listed (`biz_` tag).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::PromoCodes::Types::ListPromoCodesRequestStatus` — Promo-code status. `expired` groups inactive and archived codes.
    
</dd>
</dl>

<dl>
<dd>

**product_ids:** `String` — Only promo codes scoped to these product IDs.
    
</dd>
</dl>

<dl>
<dd>

**plan_ids:** `String` — Only promo codes scoped to these plan IDs.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only promo codes created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only promo codes created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::PromoCodes::Types::ListPromoCodesRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::PromoCodes::Types::ListPromoCodesRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of promo codes to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of promo codes to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">create</a>(request) -> Whop_sdk::Types::PromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a promo code for an account. First-party sessions may attach an affiliate.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.create(
  account_id: "biz_xxxxxxxxxxxxxx",
  amount_off: 25,
  base_currency: "usd",
  code: "AFFILIATE25",
  new_users_only: true,
  promo_duration_months: 3,
  promo_type: "percentage"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**amount_off:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**base_currency:** `Whop_sdk::PromoCodes::Types::CreatePromoCodesRequestBaseCurrency` 
    
</dd>
</dl>

<dl>
<dd>

**churned_users_only:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**existing_memberships_only:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**new_users_only:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**one_per_customer:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**plan_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**promo_duration_months:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**promo_type:** `Whop_sdk::PromoCodes::Types::CreatePromoCodesRequestPromoType` 
    
</dd>
</dl>

<dl>
<dd>

**stock:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**unlimited_stock:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::PromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a promo code by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Promo code ID (`promo_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">delete</a>(id:) -> Whop_sdk::PromoCodes::Types::DeletePromoCodesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a promo code so it cannot be used in future checkouts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Promo code ID (`promo_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">activate</a>(id:) -> Whop_sdk::Types::PromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Turns an inactive promo code back on so it can be redeemed at checkout.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.activate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Promo code ID (`promo_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.promo_codes.<a href="/lib/whop_sdk/promo_codes/client.rb">deactivate</a>(id:) -> Whop_sdk::Types::PromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Turns off an active promo code so it can no longer be redeemed at checkout.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.promo_codes.deactivate(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Promo code ID (`promo_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::PromoCodes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Reactions
<details><summary><code>client.reactions.<a href="/lib/whop_sdk/reactions/client.rb">list</a>() -> Whop_sdk::Reactions::Types::ListReactionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of emoji reactions on a specific message or forum post, sorted by most recent.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `forum:read`
 - `livestream:chat:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reactions.list(
  first: 42,
  last: 42,
  resource_id: "resource_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — The unique identifier of the message or forum post to list reactions for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reactions.<a href="/lib/whop_sdk/reactions/client.rb">create</a>(request) -> Whop_sdk::Types::Reaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add an emoji reaction or poll vote to a message or forum post. In forums, the reaction is always a like.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `forum:read`
 - `livestream:chat:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reactions.create(resource_id: "resource_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**emoji:** `String` — The emoji to react with, in shortcode or unicode format. For example, ':heart:' or a unicode emoji. Ignored in forums where reactions are always likes.
    
</dd>
</dl>

<dl>
<dd>

**poll_option_id:** `String` — The unique identifier of a poll option to vote for. Only valid when the target message or post contains a poll.
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — The unique identifier of the message or forum post to react to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reactions.<a href="/lib/whop_sdk/reactions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Reaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing reaction.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `forum:read`
 - `livestream:chat:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reactions.retrieve(id: "reac_xxxxxxxxxxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the reaction to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reactions.<a href="/lib/whop_sdk/reactions/client.rb">delete</a>(id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove an emoji reaction from a message or forum post. Only the reaction author or a channel admin can remove a reaction.

Required permissions (one of):
 - `chat:read`
 - `dms:read`
 - `forum:read`
 - `livestream:chat:read`
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reactions.delete(id: "reac_xxxxxxxxxxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the reaction to remove, or the identifier of the message or forum post to remove a reaction from. When passing a message or post ID, you must also provide the emoji argument.
    
</dd>
</dl>

<dl>
<dd>

**emoji:** `String` — The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a unicode emoji. Required when the id refers to a message or post instead of a reaction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Recommended Actions
<details><summary><code>client.recommended_actions.<a href="/lib/whop_sdk/recommended_actions/client.rb">list</a>() -> Whop_sdk::RecommendedActions::Types::ListRecommendedActionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the recommended action chains for an account — short sequences of actions (create a product, price it, publish it) the account should run next, gated on what it already has.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.recommended_actions.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Defaults to the API key's own account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::RecommendedActions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.recommended_actions.<a href="/lib/whop_sdk/recommended_actions/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::AccountRecommendedActionChain</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a recommended action chain by id, including chains that have already been run. Seeded chains are reconstructed from their hard-coded chain; generated chains are read from the account's stored chain, with each step's filled-in input.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.recommended_actions.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Chain ID from the list endpoint, e.g. `rac_seed_start_selling_9f2c1a7b04`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Defaults to the API key's own account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::RecommendedActions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.recommended_actions.<a href="/lib/whop_sdk/recommended_actions/client.rb">run</a>(id:) -> Whop_sdk::RecommendedActions::Types::RunRecommendedActionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Records that the caller ran a recommended action chain. Nothing is executed server-side yet — the client follows the chain's step CTAs itself; this writes the `recommended_action_chain.executed` analytics event.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.recommended_actions.run(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Chain ID from the list endpoint, e.g. `rac_seed_start_selling_9f2c1a7b04`.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Defaults to the API key's own account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::RecommendedActions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.recommended_actions.<a href="/lib/whop_sdk/recommended_actions/client.rb">list_executions</a>(id:) -> Whop_sdk::RecommendedActions::Types::ListExecutionsRecommendedActionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the per-step record of a recommended action chain the server ran — one entry per step in position order, each carrying its current status and, once the step completed, the API response it produced. A chain that was never run server-side returns an empty list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.recommended_actions.list_executions(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Chain ID from the list endpoint.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`. Defaults to the API key's own account.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::RecommendedActions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Refunds
<details><summary><code>client.refunds.<a href="/lib/whop_sdk/refunds/client.rb">list</a>() -> Whop_sdk::Refunds::Types::ListRefundsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of refunds, with optional filtering by payment, company, user, and creation date.

Required permissions:
 - `payment:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.refunds.list(
  first: 42,
  last: 42,
  payment_id: "pay_xxxxxxxxxxxxxx",
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**payment_id:** `String` — Filter refunds to only those associated with this specific payment.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — Filter refunds to only those belonging to this company.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Filter refunds to only those associated with this specific user.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return refunds created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return refunds created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Refunds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.refunds.<a href="/lib/whop_sdk/refunds/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Refund</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing refund.

Required permissions:
 - `payment:basic:read`
 - `plan:basic:read`
 - `access_pass:basic:read`
 - `member:email:read`
 - `member:basic:read`
 - `member:phone:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.refunds.retrieve(id: "rf_xxxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the refund.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Refunds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Resolution Center Cases
<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">list</a>() -> Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists resolution center cases. Without `account_id` you get every case you can read — the ones you opened as a buyer and every account you are a team member of; the filters narrow that list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Only cases filed against this account (`biz_` tag). With read access to the account this lists its whole queue; without, only the cases you opened against it.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Only cases opened by this customer — a `user_` tag, or `me` for the calling user. It narrows what you can already read, so `me` lists the cases you opened without the ones on accounts you are a team member of.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of cases to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns cases after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of cases to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns cases before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOrder` — The field to sort cases by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestStatusItem` — Only cases in these statuses. Repeat the parameter to pass several — one paginated list covers all of them.
    
</dd>
</dl>

<dl>
<dd>

**reason:** `Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestReasonItem` — Only cases opened for these reasons. Repeat the parameter to pass several.
    
</dd>
</dl>

<dl>
<dd>

**outcome:** `Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOutcomeItem` — Only closed cases that ended these ways. Repeat the parameter to pass several.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only cases created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only cases created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">create</a>(request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Opens a case, as the customer, against one of your own payments. Provide the payment (`receipt_id`), the `reason`, and a `message`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.create(
  message: "The mobile detailer never showed up for the Ceramic Coating appointment.",
  reason: "fraudulent",
  receipt_id: "pay_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestAttachmentsItem]` 
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — The customer's explanation.
    
</dd>
</dl>

<dl>
<dd>

**reason:** `Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestReason` — What went wrong. Uses the same vocabulary as `/disputes`.
    
</dd>
</dl>

<dl>
<dd>

**receipt_id:** `String` — The payment to open the case against (`pay_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">summary</a>() -> Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Aggregates the same cases `GET /resolution_center_cases` lists, using the same filters. Use it to build status tabs and issue filters without paging the whole list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.summary
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**groups:** `Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestGroupsItem` — Which breakdowns to return, keyed by these names under `groups`. Repeat the parameter to ask for several; omit it for all of them.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The account to summarize cases for (`biz_` tag).
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Only cases opened by this customer — a `user_` tag, or `me` for the calling user.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestStatusItem` — Only cases in these statuses.
    
</dd>
</dl>

<dl>
<dd>

**reason:** `Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestReasonItem` — Only cases opened for these reasons.
    
</dd>
</dl>

<dl>
<dd>

**outcome:** `Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestOutcomeItem` — Only closed cases that ended these ways.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only count cases created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only count cases created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single resolution center case with its full event timeline.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">accept</a>(id:, request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Accepts the case in the customer's favor, as the merchant: refunds the payment in full and closes the case.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.accept(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::AcceptResolutionCenterCasesRequestAttachmentsItem]` — Up to 3 evidence files, by existing file `id` or `direct_upload_id`.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — An optional note to the customer, recorded on the case timeline.
    
</dd>
</dl>

<dl>
<dd>

**terminate_membership:** `Internal::Types::Boolean` — Whether to also terminate the customer's membership.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">appeal</a>(id:, request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Appeals a decision, as the customer, on a case that closed in the merchant's favor. Escalates the case to Whop for platform review. A case can be appealed once.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.appeal(
  id: "id",
  message: "The coating is already flaking on the hood two weeks later."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::AppealResolutionCenterCasesRequestAttachmentsItem]` — Up to 3 evidence files, by existing file `id` or `direct_upload_id`.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — Why you are appealing the decision.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">deny</a>(id:, request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Denies the case, as the merchant: rejects the claim and closes the case with no refund.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.deny(
  id: "id",
  message: "The ceramic coating was applied and the vehicle was collected on 2026-01-05."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::DenyResolutionCenterCasesRequestAttachmentsItem]` — Up to 3 evidence files, by existing file `id` or `direct_upload_id`.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — Why the claim is being denied. Shown to the customer.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">events</a>(id:) -> Whop_sdk::ResolutionCenterCases::Types::EventsResolutionCenterCasesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the case timeline, newest first. Events the viewer is not allowed to see are omitted — a customer reads the customer-visible timeline, the merchant reads the full one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.events(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of events to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns events after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of events to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns events before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">reply</a>(id:, request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replies to an open request for information on the case. As the merchant this answers Whop's request (valid while the case awaits your information); as the customer it provides the information requested from you. The actor is resolved from the credential.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.reply(
  id: "id",
  message: "Here are the before and after photos from the Burnet Rd bay."
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::ReplyResolutionCenterCasesRequestAttachmentsItem]` — Up to 3 evidence files, by existing file `id` or `direct_upload_id`.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — The reply to add to the case.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">request_info</a>(id:, request) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Asks the customer for more information, as the merchant. Allowed up to 3 times per case before you must accept or deny it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.request_info(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::RequestInfoResolutionCenterCasesRequestAttachmentsItem]` — Up to 3 evidence files, by existing file `id` or `direct_upload_id`.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — What you need from the customer.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.resolution_center_cases.<a href="/lib/whop_sdk/resolution_center_cases/client.rb">withdraw</a>(id:) -> Whop_sdk::Types::ResolutionCenterCase</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Withdraws (cancels) a case you opened, as the customer. Only possible while the case is still open.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.resolution_center_cases.withdraw(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The resolution center case ID (`reso_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::ResolutionCenterCases::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Reviews
<details><summary><code>client.reviews.<a href="/lib/whop_sdk/reviews/client.rb">list</a>() -> Whop_sdk::Reviews::Types::ListReviewsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of customer reviews for a specific product, with optional filtering by star rating and creation date.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reviews.list(
  first: 42,
  last: 42,
  product_id: "prod_xxxxxxxxxxxxx",
  min_stars: 42,
  max_stars: 42,
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The unique identifier of the product to list reviews for.
    
</dd>
</dl>

<dl>
<dd>

**min_stars:** `Integer` — The minimum star rating to include in results, from 1 to 5 inclusive.
    
</dd>
</dl>

<dl>
<dd>

**max_stars:** `Integer` — The maximum star rating to include in results, from 1 to 5 inclusive.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return reviews created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return reviews created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reviews::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reviews.<a href="/lib/whop_sdk/reviews/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Review</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing review.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reviews.retrieve(id: "rev_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the review to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Reviews::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Setup Intents
<details><summary><code>client.setup_intents.<a href="/lib/whop_sdk/setup_intents/client.rb">list</a>() -> Whop_sdk::SetupIntents::Types::ListSetupIntentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of setup intents for a company, with optional filtering by creation date. A setup intent securely collects and stores a member's payment method for future use without charging them immediately.

Required permissions:
 - `payment:setup_intent:read`
 - `member:basic:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.setup_intents.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  created_before: "2023-12-01T05:00:00Z",
  created_after: "2023-12-01T05:00:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list setup intents for.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return setup intents created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return setup intents created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SetupIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.setup_intents.<a href="/lib/whop_sdk/setup_intents/client.rb">create</a>(request) -> Whop_sdk::SetupIntents::Types::CreateSetupIntentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Save a buyer's payment method for later without charging it. Provide a confirmation token for a method the buyer just supplied, or an existing payment method to re-verify. The buyer may still have a step to complete — 3D Secure, a hosted enrollment, linking a bank account — so poll the setup intent's status endpoint for what to do next.

Required permissions:
 - `payment:charge`
 - `member:basic:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.setup_intents.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  confirmation_token: "ctok_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Whop_sdk::SetupIntents::Types::CreateSetupIntentsRequest` — Parameters for CreateSetupIntent
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SetupIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.setup_intents.<a href="/lib/whop_sdk/setup_intents/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::SetupIntent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing setup intent.

Required permissions:
 - `payment:setup_intent:read`
 - `member:basic:read`
 - `member:email:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.setup_intents.retrieve(id: "sint_xxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the setup intent.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SetupIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.setup_intents.<a href="/lib/whop_sdk/setup_intents/client.rb">update_return_url</a>(setup_intent_id:, request) -> Whop_sdk::Types::SetupStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes where the buyer lands after completing an off-site step, up until they return. Accepts either a secret key or the setup's own `client_secret`, so the surface that knows the final destination can set it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.setup_intents.update_return_url(
  setup_intent_id: "setup_intent_id",
  return_url: "https://shinetime.example/checkout/thanks"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**setup_intent_id:** `String` — The unique identifier of the setup intent.
    
</dd>
</dl>

<dl>
<dd>

**return_url:** `String` — Where the buyer continues after completing an off-site step. Must be an absolute https URL without credentials (http is allowed for localhost), at most 2,048 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SetupIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.setup_intents.<a href="/lib/whop_sdk/setup_intents/client.rb">retrieve_status</a>(setup_intent_id:) -> Whop_sdk::Types::SetupStatus</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves how far a setup has got and what the buyer must do next, if anything. Collection runs in the background, so poll this rather than reading the create response. Accepts either a secret key or the setup's own `client_secret`, so the surface collecting the payment method can poll it directly.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.setup_intents.retrieve_status(setup_intent_id: "setup_intent_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**setup_intent_id:** `String` — The unique identifier of the setup intent.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SetupIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shipments
<details><summary><code>client.shipments.<a href="/lib/whop_sdk/shipments/client.rb">list</a>() -> Whop_sdk::Shipments::Types::ListShipmentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of shipments for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shipments.list(payment_id: ["pay_xxxxxxxxxxxxxx"])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to list shipments for. Defaults to the acting account.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Shipments::Types::ListShipmentsRequestStatus` — Filter to shipments with this delivery status.
    
</dd>
</dl>

<dl>
<dd>

**payment_id:** `String` — Only shipments fulfilling these payments, each prefixed `pay_`. Repeat the parameter to pass several, up to 100 per request — one paginated list covers all of them.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Return shipments created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Return shipments created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Shipments::Types::ListShipmentsRequestOrder` — The field to sort by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Shipments::Types::ListShipmentsRequestDirection` — The sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of shipments to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns shipments after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of shipments to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns shipments before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Shipments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipments.<a href="/lib/whop_sdk/shipments/client.rb">create</a>(request) -> Whop_sdk::Types::Shipment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attaches a carrier tracking number to a payment and begins tracking it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shipments.create(
  payment_id: "pay_xxxxxxxxxxxxxx",
  tracking_number: "1Z999AA10123456784"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**payment_id:** `String` — The payment to attach the shipment to, prefixed `pay_`.
    
</dd>
</dl>

<dl>
<dd>

**tracking_number:** `String` — The carrier-assigned tracking number.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Shipments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipments.<a href="/lib/whop_sdk/shipments/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Shipment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a shipment by its id, or by the payment id it fulfills.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shipments.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The shipment id (`ship_`), or the payment id (`pay_`) it fulfills.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Shipments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shipments.<a href="/lib/whop_sdk/shipments/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Shipment</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a shipment's tracking number and re-tracks it with the carrier.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shipments.update(
  id: "id",
  tracking_number: "9400111899223456789012"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The shipment id (`ship_`), or the payment id (`pay_`) it fulfills.
    
</dd>
</dl>

<dl>
<dd>

**tracking_number:** `String` — The new carrier-assigned tracking number.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Shipments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Social Accounts
<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">list</a>() -> Whop_sdk::SocialAccounts::Types::ListSocialAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the social accounts linked to an account or user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The Account that the social accounts are connected to. Provide either this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The User that the social accounts are connected to. Provide either this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestPlatform` — Only return social accounts for the platform that is specified.
    
</dd>
</dl>

<dl>
<dd>

**verified:** `Internal::Types::Boolean` — Only return social accounts that are verified on the platform.
    
</dd>
</dl>

<dl>
<dd>

**scopes:** `Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestScopesItem` — Only return social accounts that have these scopes.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of social accounts to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of social accounts to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestOrder` — The field to sort social accounts by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::SocialAccounts::Types::ListSocialAccountsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">create</a>(request) -> Whop_sdk::Types::SocialAccount</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates or returns a Whop-managed Facebook page for an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.create(platform: "facebook")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The Account (biz_ identifier) to create the social account for. An account-scoped API key may omit this to default to its own account. Account API keys cannot update their own account's branding through Update Account; use a user-authenticated path.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::SocialAccounts::Types::CreateSocialAccountsRequestPlatform` — The platform to create the social account on. `facebook` requires the account's `banner_image`, `logo`, and `description`; configure them with [Update Account](/api-reference/beta/accounts/update-account).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">connect</a>(request) -> Whop_sdk::SocialAccounts::Types::ConnectSocialAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts an OAuth connection flow and returns an authorize_url where the user can connect a social account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.connect(platform: "meta_business")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The Account (biz_ identifier) to connect the social account for. An account-scoped API key may omit this to default to its own account.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `Whop_sdk::SocialAccounts::Types::ConnectSocialAccountsRequestPlatform` — The platform to connect the social account on. Supported options are `meta_business` and `tiktok`.
    
</dd>
</dl>

<dl>
<dd>

**redirect_url:** `String` — The Whop URL to redirect the user to after they finish connecting.
    
</dd>
</dl>

<dl>
<dd>

**scopes:** `Internal::Types::Array[Whop_sdk::SocialAccounts::Types::ConnectSocialAccountsRequestScopesItem]` — Capabilities to grant for the connected social account. Use `advertise` when connecting a Meta Business or TikTok account for ads.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">delete</a>(id:) -> Whop_sdk::SocialAccounts::Types::DeleteSocialAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Disconnects a social account from an account or user without deleting the underlying platform account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The ID of the social account to disconnect.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The Account that the social account is connected to. Provide either this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The User that the social account is connected to. Provide either this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">lead_forms</a>(id:) -> Whop_sdk::SocialAccounts::Types::LeadFormsSocialAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the active lead (instant) forms that already exist on a connected Facebook page, so an ad can reuse one as its `lead_gen_form_id` instead of authoring a new form. Every active form comes back in a single response — the list is not paginated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.lead_forms(
  id: "id",
  account_id: "account_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The social account (a sacc_ identifier) whose lead forms to list.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The Account (a biz_ identifier) the social account is connected to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.social_accounts.<a href="/lib/whop_sdk/social_accounts/client.rb">posts</a>(id:) -> Whop_sdk::SocialAccounts::Types::PostsSocialAccountsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the existing posts of a connected Facebook page, Instagram account, or TikTok account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.social_accounts.posts(
  id: "id",
  account_id: "account_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The social account (a sacc_ identifier) whose posts to list.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The Account (a biz_ identifier) the social account is connected to.
    
</dd>
</dl>

<dl>
<dd>

**post_id:** `String` — Return only the single post with this platform id, instead of the full list.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of posts to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SocialAccounts::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Stats
<details><summary><code>client.stats.<a href="/lib/whop_sdk/stats/client.rb">list</a>() -> Whop_sdk::Stats::Types::ListStatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists every metric you can query, with its unit and the properties you can filter or break it down by.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stats.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Whop_sdk::Stats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stats.<a href="/lib/whop_sdk/stats/client.rb">describe_stats</a>() -> Whop_sdk::Stats::Types::DescribeStatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Describe available stats schema. Without resource returns root nodes and metrics. With resource returns node columns, associations, and available metrics.

Required permissions:
 - `stats:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stats.describe_stats(
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**resource:** `String` — Resource path using : as separator (e.g., 'receipts', 'payments:membership', 'receipts:gross_revenue').
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — Scope query to a specific company.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Scope query to a specific user.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Stats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stats.<a href="/lib/whop_sdk/stats/client.rb">metric_stats</a>() -> Whop_sdk::Stats::Types::MetricStatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Query an aggregated metric. Returns data grouped by period with optional breakdowns.

Required permissions:
 - `stats:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stats.metric_stats(
  resource: "resource",
  from: "2023-12-01T05:00:00Z",
  to: "2023-12-01T05:00:00Z",
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**resource:** `String` — Metric resource using : as separator (e.g., 'receipts:gross_revenue', 'members:new_users').
    
</dd>
</dl>

<dl>
<dd>

**granularity:** `String` — Time granularity (daily, weekly, monthly).
    
</dd>
</dl>

<dl>
<dd>

**breakdowns:** `String` — Columns to break down the metric by.
    
</dd>
</dl>

<dl>
<dd>

**filters:** `Internal::Types::Hash[String, Object]` — Key-value pairs to filter the data.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA timezone for period bucketing (e.g. 'America/New_York'). Defaults to UTC. Only applies to ClickHouse metrics.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start of time range (unix timestamp).
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of time range (unix timestamp).
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — Scope query to a specific company.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Scope query to a specific user.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Stats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stats.<a href="/lib/whop_sdk/stats/client.rb">raw_stats</a>() -> Whop_sdk::Stats::Types::RawStatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Query raw data from a resource. Returns paginated rows with all columns.

Required permissions:
 - `stats:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stats.raw_stats(
  resource: "resource",
  from: "2023-12-01T05:00:00Z",
  to: "2023-12-01T05:00:00Z",
  limit: 42,
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**resource:** `String` — Resource path using : as separator (e.g., 'members', 'payments:membership').
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start of time range (unix timestamp).
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of time range (unix timestamp).
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Number of records to return (max 10000).
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Pagination cursor for next page.
    
</dd>
</dl>

<dl>
<dd>

**sort:** `String` — Column to sort by.
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — Scope query to a specific company.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Scope query to a specific user.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Stats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stats.<a href="/lib/whop_sdk/stats/client.rb">retrieve</a>(metric:) -> Whop_sdk::Stats::Types::RetrieveStatsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a metric as a time series of points for an account or user over a time range. The `market_prices` metric is public and requires no authentication.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stats.retrieve(
  metric: "metric",
  from: "from",
  to: "to",
  ad_campaign_ids: ["adcamp_xxxxxxxxxxxxxx"],
  ad_group_ids: ["adgrp_xxxxxxxxxxxxxx"],
  ad_ids: ["ad_xxxxxxxxxxxxxx"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**metric:** `String` — The metric to retrieve, for example net_revenue. Use GET /stats to see every metric key. The metric sets the unit and the properties you can filter or break down by.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The account this query concerns, for example biz_AbC123.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The user this query concerns, for example user_AbC123. Available on metrics that support user subjects, such as account_balance.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Start of the range — a date (YYYY-MM-DD), expanded to the start of that day, or an ISO 8601 timestamp (for example 2026-07-16T16:37:00Z), used exactly.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — End of the range — a date (YYYY-MM-DD), expanded to the end of that day, or an ISO 8601 timestamp (for example 2026-07-17T16:37:00Z), used exactly.
    
</dd>
</dl>

<dl>
<dd>

**interval:** `Whop_sdk::Stats::Types::RetrieveStatsRequestInterval` — How wide each point is. Defaults to day. Snapshot metrics are day-only.
    
</dd>
</dl>

<dl>
<dd>

**breakdown_by:** `String` — Split the metric out by one of its properties — each point gets a breakdown array. For example breakdown_by=currency returns an entry for usd, an entry for eur, and so on.
    
</dd>
</dl>

<dl>
<dd>

**convert_to:** `String` — Display currency for money metrics — every amount is converted into this ISO currency using the exchange rate on each period's date. Defaults to usd. For the ads metrics (ad_spend, ad_delivery), pass the account's ads reporting currency to match the ad entity endpoints. On transaction metrics, it is ignored when you filter or break down by currency (those report the original transaction currency, unconverted).
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Select the source currency or asset on metrics that list currency. For transaction metrics, for example currency=eur, values are reported without conversion. For market_prices, use btc or xaut and convert_to=usd. Pair with breakdown_by=currency to split a metric by currency.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA time zone to bucket the series in, for example America/New_York. Defaults to UTC. Not accepted by snapshot metrics, which are UTC only.
    
</dd>
</dl>

<dl>
<dd>

**payment_method:** `String` — Filter to a single payment method, for example card or crypto. Available on metrics that list payment_method.
    
</dd>
</dl>

<dl>
<dd>

**card_network:** `String` — Filter to a single card brand, for example visa. A refinement of payment_method=card. Available on metrics that list card_network.
    
</dd>
</dl>

<dl>
<dd>

**dispute_reason:** `String` — Filter disputes to a normalized reason, for example product_not_received. Pair with breakdown_by=dispute_reason to split dispute counts by reason.
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` — Filter to a single GMV source, for example payments — or, on the traffic metrics, a visit source (whop_ads, direct, or a utm_source value). Pair with breakdown_by=source to split by source. Available on metrics that list source.
    
</dd>
</dl>

<dl>
<dd>

**hostname:** `String` — Filter traffic metrics to one website hostname, for example shop.example.com. Pair with breakdown_by=hostname to split by website.
    
</dd>
</dl>

<dl>
<dd>

**page:** `String` — Filter traffic metrics to one page — a hostname plus normalized path, for example shop.example.com/pricing. Pair with breakdown_by=page to split by page.
    
</dd>
</dl>

<dl>
<dd>

**device_type:** `String` — Filter traffic metrics to one device type: desktop, mobile, tablet, or unknown. Pair with breakdown_by=device_type to split by device.
    
</dd>
</dl>

<dl>
<dd>

**country_code:** `String` — Filter traffic metrics to one visitor country (uppercase ISO 3166-1 alpha-2, for example US). Pair with breakdown_by=country_code to split by country.
    
</dd>
</dl>

<dl>
<dd>

**event_name:** `String` — Filter the events metric to one tracked event name, for example pixel.page or pixel.custom. Pair with breakdown_by=event_name to split by event.
    
</dd>
</dl>

<dl>
<dd>

**event_type:** `Whop_sdk::Stats::Types::RetrieveStatsRequestEventType` — Filter the events metric to a canonical group of events: page_view (pixel page views plus whop.com store views), checkout_start (hosted and embedded checkout views), or other. Pair with breakdown_by=event_type to split by group.
    
</dd>
</dl>

<dl>
<dd>

**custom_name:** `String` — Filter the events metric to one merchant-defined custom event name. Only valid alongside event_name=pixel.custom. Pair with breakdown_by=custom_name to split custom events by name.
    
</dd>
</dl>

<dl>
<dd>

**segment:** `String` — Filter to a single wallet-balance segment, for example available. Pair with breakdown_by=segment to split the balance. Available on metrics that list segment.
    
</dd>
</dl>

<dl>
<dd>

**category:** `String` — Filter to a single balance-activity category, for example payments. Pair with breakdown_by=category to split the activity. Available on metrics that list category.
    
</dd>
</dl>

<dl>
<dd>

**merchant:** `String` — Filter to a single cashback merchant bucket, for example whop-ads. Pair with breakdown_by=merchant to split cashback by merchant. Available on metrics that list merchant.
    
</dd>
</dl>

<dl>
<dd>

**fee_type:** `String` — Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by type. Available on metrics that list fee_type.
    
</dd>
</dl>

<dl>
<dd>

**product:** `String` — Filter to a single product (access pass id), for example prod_AbC123. Pair with breakdown_by=product. Available on metrics that list product.
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` — Filter to a single membership status. Pair with breakdown_by=status. Available on metrics that list status.
    
</dd>
</dl>

<dl>
<dd>

**access_level:** `String` — Filter to a single access level. Pair with breakdown_by=access_level. Available on metrics that list access_level.
    
</dd>
</dl>

<dl>
<dd>

**most_recent_action:** `String` — Filter to a single most-recent member action. Pair with breakdown_by=most_recent_action. Available on metrics that list most_recent_action.
    
</dd>
</dl>

<dl>
<dd>

**referred_user_id:** `String` — Filter a referral metric to the businesses attributed to one person you referred, for example user_AbC123. Available on metrics that list referred_user_id.
    
</dd>
</dl>

<dl>
<dd>

**ad_campaign_ids:** `String` — Ad campaign ids (adcamp_...) to scope the report to; stats are summed across them. Available on metrics that list ad_campaign_ids.
    
</dd>
</dl>

<dl>
<dd>

**ad_group_ids:** `String` — Ad group ids (adgrp_...) to scope the report to; stats are summed across them. Available on metrics that list ad_group_ids.
    
</dd>
</dl>

<dl>
<dd>

**ad_ids:** `String` — Ad ids (ad_...) to scope the report to; stats are summed across them. Available on metrics that list ad_ids.
    
</dd>
</dl>

<dl>
<dd>

**snapshot_window:** `Whop_sdk::Stats::Types::RetrieveStatsRequestSnapshotWindow` — Window used by a snapshot metric. Ordinary snapshots accept 30d as their trailing activity window. Cohorted dispute metrics accept 7d or 28d as the sales-transaction pool; their attribution window is fixed in the metric name. Each metric lists its accepted values in the catalog.
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` — Filter the events metric to one or more full event names, for example payment.completed or pixel.lead. Comma-separate several to break the metric down by each event. Available on metrics that list event.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Stats::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SupportChannels
<details><summary><code>client.support_channels.<a href="/lib/whop_sdk/support_channels/client.rb">list</a>() -> Whop_sdk::SupportChannels::Types::ListSupportChannelsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of support channels for a specific company, with optional filtering by resolution status and custom sorting.

Required permissions:
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.support_channels.list(
  first: 42,
  last: 42,
  company_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to list support channels for. Includes channels of child companies. When omitted, returns support channels across all companies the user has access to.
    
</dd>
</dl>

<dl>
<dd>

**view:** `Whop_sdk::Types::SupportChannelView` 
    
</dd>
</dl>

<dl>
<dd>

**open:** `Internal::Types::Boolean` — Whether to filter by open or resolved support channels. Set to true to only return channels awaiting a response, or false for resolved channels.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Types::Direction` 
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Types::MessageChannelOrder` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SupportChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.support_channels.<a href="/lib/whop_sdk/support_channels/client.rb">create</a>(request) -> Whop_sdk::Types::SupportChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Open a new support channel between a company team member and a customer. Returns the existing channel if one already exists for that user.

Required permissions:
 - `support_chat:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.support_channels.create(
  company_id: "biz_xxxxxxxxxxxxxx",
  user_id: "user_xxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to create the support channel in.
    
</dd>
</dl>

<dl>
<dd>

**custom_name:** `String` — Optional custom display name for the support channel.
    
</dd>
</dl>

<dl>
<dd>

**notifications_enabled:** `Internal::Types::Boolean` — Whether Whop app notifications are enabled for this support channel. Webhooks still fire.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The user ID (e.g. 'user_xxxxx') or username of the customer to open a support channel for.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SupportChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.support_channels.<a href="/lib/whop_sdk/support_channels/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::SupportChannel</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing support channel.

Required permissions:
 - `support_chat:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.support_channels.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The unique identifier of the support channel to retrieve.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::SupportChannels::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Swaps
<details><summary><code>client.swaps.<a href="/lib/whop_sdk/swaps/client.rb">list</a>() -> Whop_sdk::Swaps::Types::ListSwapsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the account's completed or pending swaps — currently just the latest one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swaps.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Business or user account ID (biz_* / user_*).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Swaps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.swaps.<a href="/lib/whop_sdk/swaps/client.rb">create</a>(request) -> Whop_sdk::Swaps::Types::CreateSwapsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Swaps one token for another from the account's wallet, or converts between fiat currencies in the account's ledger at the mid-market rate. Crypto swaps finish in the background — check the swap for its status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swaps.create(
  account_id: "biz_xxxxxxxxxxxxxx",
  from_token: "usd",
  to_token: "cad"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Business or user account ID (biz_* / user_*).
    
</dd>
</dl>

<dl>
<dd>

**amount:** `String` — Source token amount. Required for crypto swaps. For fiat pairs: the amount of from_token to convert at the mid-market rate; omit (along with to_amount) to repay the full negative to_token balance instead.
    
</dd>
</dl>

<dl>
<dd>

**from_chain:** `Whop_sdk::Swaps::Types::CreateSwapsRequestFromChain` — Source chain name or chain ID. Defaults to the source token's chain when omitted.
    
</dd>
</dl>

<dl>
<dd>

**from_token:** `String` — Source token contract address or ticker symbol, such as "USDT".
    
</dd>
</dl>

<dl>
<dd>

**slippage_bps:** `Integer` — Maximum slippage tolerance in basis points.
    
</dd>
</dl>

<dl>
<dd>

**to_amount:** `String` — Fiat pairs only: sizes a partial repayment of the negative to_token balance, denominated in to_token. Must not exceed the debt. Mutually exclusive with amount.
    
</dd>
</dl>

<dl>
<dd>

**to_chain:** `Whop_sdk::Swaps::Types::CreateSwapsRequestToChain` — Destination chain name or chain ID. Defaults to the destination token's chain when omitted.
    
</dd>
</dl>

<dl>
<dd>

**to_token:** `String` — Destination token contract address or ticker symbol, such as "XAUT".
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Swaps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.swaps.<a href="/lib/whop_sdk/swaps/client.rb">create_quote</a>(request) -> Whop_sdk::Swaps::Types::CreateQuoteSwapsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Previews the price of a swap. Fiat pairs quote the in-ledger mid-market conversion — the same rate creating the swap fills at. No funds move and nothing is saved.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swaps.create_quote(
  amount: "100",
  from_token: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  to_token: "0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `String` — Source token amount.
    
</dd>
</dl>

<dl>
<dd>

**from_address:** `String` — Source wallet address used for the quote.
    
</dd>
</dl>

<dl>
<dd>

**from_chain:** `Whop_sdk::Swaps::Types::CreateQuoteSwapsRequestFromChain` — Source chain name or chain ID. Defaults to the source token's chain when omitted.
    
</dd>
</dl>

<dl>
<dd>

**from_token:** `String` — Source token contract address or ticker symbol, such as "USDT".
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Metadata to include with the quote response.
    
</dd>
</dl>

<dl>
<dd>

**slippage_bps:** `Integer` — Maximum slippage tolerance in basis points.
    
</dd>
</dl>

<dl>
<dd>

**to_address:** `String` — Destination wallet address used for the quote.
    
</dd>
</dl>

<dl>
<dd>

**to_chain:** `Whop_sdk::Swaps::Types::CreateQuoteSwapsRequestToChain` — Destination chain name or chain ID. Defaults to the destination token's chain when omitted.
    
</dd>
</dl>

<dl>
<dd>

**to_token:** `String` — Destination token contract address or ticker symbol, such as "XAUT".
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Swaps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.swaps.<a href="/lib/whop_sdk/swaps/client.rb">retrieve</a>(id:) -> Whop_sdk::Swaps::Types::RetrieveSwapsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single swap and its status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.swaps.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Swap ID returned from POST /swaps.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Swaps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Team Members
<details><summary><code>client.team_members.<a href="/lib/whop_sdk/team_members/client.rb">list</a>() -> Whop_sdk::TeamMembers::Types::ListTeamMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists an account's team members, including pending invites (`status: "pending"`, `ausri_` ids; `user` is `null` for invites sent to an email with no Whop account yet). For accepted members, `email` requires the `company:authorized_user:email:read` scope and is `null` otherwise. Listing `role=workforce` is also allowed with the `bounty:create` scope.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.team_members.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::TeamMembers::Types::ListTeamMembersRequestStatus` — Only return members with this status: `joined` (accepted members) or `pending` (pending invites). Both are returned by default.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — Only return the membership for this user ID, prefixed `user_`.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::TeamMembers::Types::ListTeamMembersRequestRole` — Only return members with this role. `custom` matches members on a dashboard-managed custom role.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return members added before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return members added after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::TeamMembers::Types::ListTeamMembersRequestOrder` — Field used to sort members.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::TeamMembers::Types::ListTeamMembersRequestDirection` — Sort direction. Defaults to `desc`.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of members to return. Defaults to 20; maximum 100.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor for the next page of members.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of members to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::TeamMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.team_members.<a href="/lib/whop_sdk/team_members/client.rb">create</a>(request) -> Whop_sdk::Types::TeamMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds a member to an account's team with a system role. Identify them by exactly one of `user_id` or `email`. If the person has not yet accepted — or the email does not belong to a Whop account yet — an invitation is sent instead and the response is `202` with `{ "object": "team_member_invite", "invitation_sent": true }`. If they already have a pending invite, the request fails with a `400`. Custom roles cannot be granted via the API. Granting the `workforce` role is also allowed with the `bounty:create` scope.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.team_members.create(
  account_id: "biz_xxxxxxxxxxxxxx",
  role: "owner"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address to invite. Mutually exclusive with `user_id`. If the email already belongs to a Whop account it is treated the same as passing that account's `user_id`; otherwise a pending invite is created for the email.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::TeamMembers::Types::CreateTeamMembersRequestRole` — The system role to grant.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The user to add to the team, prefixed `user_`. Mutually exclusive with `email`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::TeamMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.team_members.<a href="/lib/whop_sdk/team_members/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::TeamMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a team member by ID. `email` requires the `company:authorized_user:email:read` scope and is `null` otherwise.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.team_members.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Team member ID — `ausr_` for accepted members, `ausri_` for pending invites.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::TeamMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.team_members.<a href="/lib/whop_sdk/team_members/client.rb">delete</a>(id:) -> Whop_sdk::TeamMembers::Types::DeleteTeamMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes a team member from the account, or revokes a pending invite when given an `ausri_` ID. A user session may delete its own membership to leave the team without the delete scope. Removing a member on the `workforce` role is also allowed with the `bounty:create` scope. The account owner cannot be removed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.team_members.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Team member ID — `ausr_` for accepted members, `ausri_` for pending invites.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::TeamMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.team_members.<a href="/lib/whop_sdk/team_members/client.rb">update</a>(id:, request) -> Whop_sdk::Types::TeamMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes a team member's system role. Requires a user session — account API keys cannot change member roles. The account owner's role cannot be changed, and you cannot change your own role.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.team_members.update(
  id: "id",
  role: "owner"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Team member ID — `ausr_` for accepted members, `ausri_` for pending invites.
    
</dd>
</dl>

<dl>
<dd>

**role:** `Whop_sdk::TeamMembers::Types::UpdateTeamMembersRequestRole` — The system role to grant.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::TeamMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Topups
<details><summary><code>client.topups.<a href="/lib/whop_sdk/topups/client.rb">create</a>(request) -> Whop_sdk::Types::Topup</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add funds to a company's platform balance by charging a stored payment method. Top-ups have no fees or taxes and do not count as revenue.

Required permissions:
 - `payment:charge`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.topups.create(
  amount: 6.9,
  company_id: "biz_xxxxxxxxxxxxxx",
  currency: "usd",
  payment_method_id: "pmt_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` — The amount to add to the balance in the specified currency. For example, 50.00 for $50.00 USD.
    
</dd>
</dl>

<dl>
<dd>

**company_id:** `String` — The unique identifier of the company to add funds to, starting with 'biz_'.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `Whop_sdk::Types::Currencies` — The currency for the top-up amount, such as 'usd'.
    
</dd>
</dl>

<dl>
<dd>

**payment_method_id:** `String` — The unique identifier of the stored payment method to charge for the top-up.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Topups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Transfers
<details><summary><code>client.transfers.<a href="/lib/whop_sdk/transfers/client.rb">list</a>() -> Whop_sdk::Transfers::Types::ListTransfersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists an account's transfers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.transfers.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**origin_id:** `String` — Filter to transfers sent from this account. Provide this or destination_id.
    
</dd>
</dl>

<dl>
<dd>

**destination_id:** `String` — Filter to transfers received by this account. Provide this or origin_id.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Transfers::Types::ListTransfersRequestOrder` — Sort column. Defaults to created_at.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Transfers::Types::ListTransfersRequestDirection` — Sort direction. Defaults to desc.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only transfers created strictly before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only transfers created strictly after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of transfers to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of transfers to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Transfers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transfers.<a href="/lib/whop_sdk/transfers/client.rb">create</a>(request) -> Whop_sdk::Transfers::Types::CreateTransfersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Moves money between accounts, or into a claim link anyone with the URL can redeem.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.transfers.create(
  amount: 25,
  origin_id: "biz_xxxxxxxxxxxxxx"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` — The amount to move, in the transfer currency. For example 25.00.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Currency, such as `usd`. Required for ledger transfers.
    
</dd>
</dl>

<dl>
<dd>

**destination_id:** `String` — The recipient. Required for ledger and wallet_send (a user_/biz_/ldgr_ ID, or — for sends — an email). Omit for claim_link.
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `String` — claim_link only. Link expiry as an ISO 8601 timestamp. Defaults to 24 hours from creation.
    
</dd>
</dl>

<dl>
<dd>

**idempotence_key:** `String` — Ledger transfers and wallet sends. A unique key that makes retries safe. Retrying with the same key returns the original transfer, or attaches to the original wallet send, instead of moving money twice.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` — Ledger transfers only. Custom key-value pairs attached to the transfer. Max 50 keys, 100 chars per key, 500 chars per string value.
    
</dd>
</dl>

<dl>
<dd>

**notes:** `String` — Ledger transfers only. A short note describing the transfer.
    
</dd>
</dl>

<dl>
<dd>

**origin_id:** `String` — The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or ledger account ID (ldgr_xxx).
    
</dd>
</dl>

<dl>
<dd>

**redeemable_count:** `Integer` — claim_link only. How many different users can claim the link. Defaults to 1.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Whop_sdk::Transfers::Types::CreateTransfersRequestType` — The kind of money movement, which decides what comes back. Defaults to ledger. `ledger` moves credit between two Whop balances and returns a `transfer`; `wallet_send` sends USDT from the origin account's Ethereum wallet and returns a `send`; `claim_link` funds a shareable link anyone with the URL can redeem and returns a `claim_link`. A `ledger` transfer from a stablecoin-rails account settles on-chain when covered, and still returns a `transfer`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Transfers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transfers.<a href="/lib/whop_sdk/transfers/client.rb">list_recipients</a>() -> Whop_sdk::Transfers::Types::ListRecipientsTransfersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the people and accounts you can send money to.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.transfers.list_recipients(origin_id: "origin_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**origin_id:** `String` — The account sending the money: a company account ID (`biz_`), or a user ID (`user_`) for that user's own personal balance.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — Search anyone on Whop by name or username, plus your own accounts by name or ID. Omit it to get the team around the balance, the people you follow, and your own accounts. The list is the same whether the balance belongs to a company or to you. Searching from a `biz_` origin additionally requires the member:basic:read scope. A credential scoped to a single company is the exception to the search itself: it only ever sees that company's own people. Complete email addresses return no matches.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of recipients per page. Search queries preserve the dashboard's 20-result maximum.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Transfers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.transfers.<a href="/lib/whop_sdk/transfers/client.rb">retrieve</a>(id:) -> Whop_sdk::Transfers::Types::RetrieveTransfersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single transfer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.transfers.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The transfer ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Transfers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users
<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">list</a>() -> Whop_sdk::Users::Types::ListUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search for users by name or username, ranked by social proximity to the authenticated user. Returns the user's most recently followed users when no query is given.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**query:** `String` — A search term to filter users by name or username.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of users to return (max 50).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns users after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of users to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns users before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">me</a>() -> Whop_sdk::Types::User</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the authenticated user — the self view of the user object. Same shape as `GET /users/{id}`, with the self-only fields populated: `email` (email-read scope), `staff` (Whop staff only, staff-read scope), `balance` and `earnings_usd` (balance-read scope), the opt-in `balance_history`, and every linked social account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.me
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — When set, returns your account-specific profile overrides for this account.
    
</dd>
</dl>

<dl>
<dd>

**include_balance_history:** `Internal::Types::Boolean` — Also compute your balance history (opt-in; runs a heavier query). Ignored for callers without balance-read scope.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days ago. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**interval:** `Whop_sdk::Users::Types::MeUsersRequestInterval` — Balance-history point granularity. Defaults to `day`. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA time zone the balance-history points are bucketed in. Defaults to `UTC`. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">update_me</a>(request) -> Whop_sdk::Types::User</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the authenticated user's global profile, or their profile override for an account when account_id is given. Not available to API keys.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.update_me
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — When set, updates the authenticated user's profile override for this account instead of their global profile.
    
</dd>
</dl>

<dl>
<dd>

**banner:** `Whop_sdk::Users::Types::UpdateMeUsersRequestBanner` 
    
</dd>
</dl>

<dl>
<dd>

**bio:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**profile_picture:** `Whop_sdk::Users::Types::UpdateMeUsersRequestProfilePicture` 
    
</dd>
</dl>

<dl>
<dd>

**username:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::User</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a user by `user_` tag or username, or the authenticated user with the reserved id `me`. Profiles include linked social accounts — reading your own profile returns every linked account, other profiles only what is public on Whop (the primary Discord and the X account). The self-only fields are populated only when the id is `me`: `email` (email-read scope), `staff` (Whop staff only, staff-read scope), `balance` and `earnings_usd` (balance-read scope), and the opt-in `balance_history`. They are always `null` when addressing a user by tag or username.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID (prefixed `user_`), username, or `me` for the authenticated user.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — When set, returns the user's account-specific profile overrides for this account.
    
</dd>
</dl>

<dl>
<dd>

**include_balance_history:** `Internal::Types::Boolean` — Also compute your balance history (opt-in; runs a heavier query). Only applies when the id is `me`; ignored for callers without balance-read scope.
    
</dd>
</dl>

<dl>
<dd>

**from:** `String` — Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days ago. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**to:** `String` — Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**interval:** `Whop_sdk::Users::Types::RetrieveUsersRequestInterval` — Balance-history point granularity. Defaults to `day`. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**time_zone:** `String` — IANA time zone the balance-history points are bucketed in. Defaults to `UTC`. Only used with `include_balance_history`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">update</a>(id:, request) -> Whop_sdk::Types::User</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a user, addressed by `user_` tag, username, or the reserved id `me` for the authenticated user. A user token updates their own global profile; an API key updates the user's account-specific profile override (account_id required).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — User ID (prefixed `user_`), username, or `me` for the authenticated user.
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — The account whose profile override to update. Required for API key callers.
    
</dd>
</dl>

<dl>
<dd>

**banner:** `Whop_sdk::Users::Types::UpdateUsersRequestBanner` 
    
</dd>
</dl>

<dl>
<dd>

**bio:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**profile_picture:** `Whop_sdk::Users::Types::UpdateUsersRequestProfilePicture` 
    
</dd>
</dl>

<dl>
<dd>

**username:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">check_access</a>(id:, resource_id:) -> Whop_sdk::Users::Types::CheckAccessUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Checks whether a user has access to an account, product, or experience the caller can reach.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.check_access(
  id: "id",
  resource_id: "resource_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The user_ tag or username to check access for.
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — An account (biz_), product (prod_), or experience (exp_) ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.<a href="/lib/whop_sdk/users/client.rb">recommend_actions</a>(id:) -> Whop_sdk::Users::Types::RecommendActionsUsersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the recommended actions computed for the user: personal suggestions (e.g. start a business or become an affiliate) pooled with the highest-impact actions across the accounts the user owns. Business actions are tagged with their `account_id`/`account_name`; personal actions leave those `null`. Self-only: `id` must be `me` or the authenticated user's own tag/username.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.recommend_actions(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — `me`, or the authenticated user's own `user_` tag or username.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Verifications
<details><summary><code>client.verifications.<a href="/lib/whop_sdk/verifications/client.rb">list</a>() -> Whop_sdk::Verifications::Types::ListVerificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns verifications for an account, including their status and any required actions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verifications.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account or user ID whose verifications you want to list. Use a `biz_` account ID, or the caller's `user_` ID for personal verifications.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Verifications::Types::ListVerificationsRequestOrder` — Field used to sort returned verifications.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Verifications::Types::ListVerificationsRequestDirection` — Sort direction for returned verifications.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Verifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifications.<a href="/lib/whop_sdk/verifications/client.rb">create</a>(request) -> Whop_sdk::Verifications::Types::CreateVerificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Starts a hosted verification session for an account or user, or returns the active session when one already exists. Any fields you include in the request body are used to prefill the session. Send `documents` (with `document_type`) to instead verify the person from identity documents included in this request — no hosted session involved. Send `share_token` to reuse a verification another Sumsub account has already completed for this person, instead of verifying them again. If the account already has an `approved` verification the request is rejected; unlink it first to start a new one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verifications.create(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account or user ID whose identity you want to verify. Use a `biz_` account ID for account verifications, or the caller's `user_` ID for personal verification.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Whop_sdk::Verifications::Types::CreateVerificationsRequestBody` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Verifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifications.<a href="/lib/whop_sdk/verifications/client.rb">retrieve</a>(id:) -> Whop_sdk::Verifications::Types::RetrieveVerificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns verifications for an account, including their status and any required actions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verifications.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Verification profile ID, prefixed `idpf_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Verifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verifications.<a href="/lib/whop_sdk/verifications/client.rb">update</a>(id:, request) -> Whop_sdk::Verifications::Types::UpdateVerificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates editable profile details or submits answers for items returned in `requested_information`. Once a verification is `approved` its profile details are locked and can no longer be edited.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verifications.update(
  id: "id",
  request: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Verification profile ID, prefixed `idpf_`.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Whop_sdk::Verifications::Types::UpdateVerificationsRequestBody` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Verifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webhooks
<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">list</a>() -> Whop_sdk::Webhooks::Types::ListWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of webhook endpoints configured for an account, ordered by most recently created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The unique identifier of the account to list webhooks for.
    
</dd>
</dl>

<dl>
<dd>

**app_id:** `String` — Only return webhooks attached to this app. Omit to list the account's own webhooks.
    
</dd>
</dl>

<dl>
<dd>

**include_app_webhooks:** `Internal::Types::Boolean` — Also return webhooks attached to the account's apps, not just the account's own. Cannot be combined with `app_id`.
    
</dd>
</dl>

<dl>
<dd>

**has_failures:** `Internal::Types::Boolean` — Only return webhooks whose endpoint is currently failing — every delivery since the current failure streak began has been rejected. Clears as soon as a delivery succeeds.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of webhooks to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns webhooks after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of webhooks to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns webhooks before this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">create</a>(request) -> Whop_sdk::Types::Webhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a webhook endpoint that receives event notifications via HTTP POST.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.create(url: "https://example.com/hooks")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**api_version_date:** `String` — The dated API version (Api-Version-Date) to pin this webhook's payloads to. Omit to leave the webhook unpinned, tracking the current payload shape.
    
</dd>
</dl>

<dl>
<dd>

**child_resource_events:** `Internal::Types::Boolean` — Whether to send events for child resources. For example, if the webhook is created for an account, enabling this sends events only from its connected accounts.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether or not the webhook is enabled. Defaults to `true`.
    
</dd>
</dl>

<dl>
<dd>

**events:** `Internal::Types::Array[Whop_sdk::Webhooks::Types::CreateWebhooksRequestEventsItem]` — The events to send the webhook for, in dot form (for example `payment.succeeded`).
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` — The account or app to create the webhook for. Defaults to the current account.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL to send the webhook to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">retrieve</a>(id:) -> Whop_sdk::Types::Webhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of an existing webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">delete</a>(id:) -> Whop_sdk::Webhooks::Types::DeleteWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently deletes a webhook endpoint. Returns `true` on success, matching the legacy proxy response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">update</a>(id:, request) -> Whop_sdk::Types::Webhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a webhook endpoint's URL, subscribed events, pinned payload version, or enabled state.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.update(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**api_version_date:** `String` — The dated API version (Api-Version-Date) to pin this webhook's payloads to. Only valid for `v1` webhooks. Omit to leave the current pin unchanged, or pass `null` to unpin and track the current payload shape.
    
</dd>
</dl>

<dl>
<dd>

**child_resource_events:** `Internal::Types::Boolean` — Whether or not to send events for child resources.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether or not the webhook is enabled.
    
</dd>
</dl>

<dl>
<dd>

**events:** `Internal::Types::Array[Whop_sdk::Webhooks::Types::UpdateWebhooksRequestEventsItem]` — The events to send the webhook for, in dot form (for example `payment.succeeded`).
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL to send the webhook to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">list_deliveries</a>(id:) -> Whop_sdk::Webhooks::Types::ListDeliveriesWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of delivery attempts for a webhook, ordered by most recent first. Includes the request payload, response body, response code, and timing for each attempt.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.list_deliveries(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of deliveries to return (default 50, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns deliveries after this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">replay_delivery</a>(id:, delivery_id:, request) -> Whop_sdk::Webhooks::Types::ReplayDeliveryWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-sends the exact payload of a past delivery to the webhook's current URL and returns the delivery result. By default the replay keeps the original `webhook-id`, so consumers that deduplicate on it can drop events they already processed. Pass `regenerate_id` to re-send under a freshly generated `webhook-id` instead, so a deduplicating consumer processes the replay as a new message. Only available for enabled webhooks on API version v1; deliveries are retained for 30 days.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.replay_delivery(
  id: "id",
  delivery_id: "delivery_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**delivery_id:** `String` — Delivery ID, prefixed `whdel_`, from the List Deliveries endpoint.
    
</dd>
</dl>

<dl>
<dd>

**regenerate_id:** `Internal::Types::Boolean` — Re-send the delivery under a freshly generated `webhook-id` (in both the envelope and the signed headers) instead of the original one. Defaults to false. Use this when your endpoint deduplicates on `webhook-id` and you want it to process the replay as a new message.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">replay</a>(id:, request) -> Whop_sdk::Webhooks::Types::ReplayWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Re-sends the webhook's past deliveries within a time window, optionally limited to specific events or to messages whose most recent delivery attempt failed. Fire and forget: nothing about the replay is stored, and each re-send appears as a new entry in the webhook's delivery log. Each matching message is re-sent once, by default with its original `webhook-id`, so consumers that deduplicate are unaffected; pass `regenerate_ids` to re-send under freshly generated ids instead. Only available for enabled webhooks on API version v1; deliveries are retained for 30 days.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.replay(
  id: "id",
  sent_after: "2026-01-01T12:00:00.000Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**events:** `Internal::Types::Array[String]` — Only replay these event types, in dot form (for example `payment.succeeded`). Omit to include every event.
    
</dd>
</dl>

<dl>
<dd>

**failed_only:** `Internal::Types::Boolean` — Only replay messages whose most recent delivery attempt in the window failed. Defaults to false. Best-effort: a message whose attempts span processing batches can still be re-sent — replays keep the original `webhook-id` by default, so consumers that deduplicate are unaffected.
    
</dd>
</dl>

<dl>
<dd>

**regenerate_ids:** `Internal::Types::Boolean` — Re-send each replayed message under a freshly generated `webhook-id` (in both the envelope and the signed headers) instead of its original one. Defaults to false. Use this when your endpoint deduplicates on `webhook-id` and you want it to process the replays as new messages.
    
</dd>
</dl>

<dl>
<dd>

**sent_after:** `String` — Start of the delivery window to replay, as an ISO 8601 timestamp. Clamped to the 30-day delivery retention.
    
</dd>
</dl>

<dl>
<dd>

**sent_before:** `String` — End of the delivery window to replay, as an ISO 8601 timestamp. Defaults to now.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">test</a>(id:, request) -> Whop_sdk::Webhooks::Types::TestWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends a sample payload for the given event to the webhook's URL and returns the delivery result.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.test(
  id: "id",
  event: "payment.succeeded"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Webhook ID, prefixed `hook_`.
    
</dd>
</dl>

<dl>
<dd>

**event:** `String` — The event to test the webhook for, in dot form (for example `payment.succeeded`).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhooks.<a href="/lib/whop_sdk/webhooks/client.rb">deliveries_webhook</a>(webhook_id:) -> Whop_sdk::Webhooks::Types::DeliveriesWebhookResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of delivery attempts for a webhook, ordered by most recent first. Includes the request payload, response body, response code, and timing for each attempt.

Required permissions:
 - `developer:manage_webhook`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhooks.deliveries_webhook(
  webhook_id: "webhook_id",
  first: 42,
  last: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**webhook_id:** `String` — The unique identifier of the webhook to list deliveries for.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Webhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Accounts Preferences
<details><summary><code>client.accounts.preferences.<a href="/lib/whop_sdk/accounts/preferences/client.rb">retrieve</a>(account_id:) -> Whop_sdk::Accounts::Preferences::Types::RetrievePreferencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the account's preferences: a singleton settings document keyed by preference name.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.preferences.retrieve(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::Preferences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.accounts.preferences.<a href="/lib/whop_sdk/accounts/preferences/client.rb">update</a>(account_id:, request) -> Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the account's preferences. Each top-level key present in the body is replaced as a whole; omitted keys are left untouched. `ads_triple_whale_integration` takes the Data-In API key to connect with, or `null` to disconnect. `ads_payment_methods` always requires a `primary` entry. `backup` is optional and any pairing is allowed — two cards, `card`+`platform_balance`, or a single method — so a card-only advertiser can fund ads without a platform balance. The `primary` and `backup` must be different sources. A `platform_balance` entry may omit `id` to use the account's default Whop balance. Configuring a `card` requires a user token; account API keys can set up platform-balance billing only.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.preferences.update(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**ads_payment_methods:** `Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsPaymentMethods` — How the account pays for Whop Ads spend. `primary` is charged first; `backup` covers the charge when the primary fails.
    
</dd>
</dl>

<dl>
<dd>

**ads_reporting_currency:** `String` — Lowercase ISO currency code, such as `usd` or `eur`, used to display ad spend and stats. Defaults to `usd`.
    
</dd>
</dl>

<dl>
<dd>

**ads_scheduling_timezone:** `String` — IANA timezone (e.g. `America/New_York`) used to interpret campaign start/end times and to bucket reports. Cannot be cleared once set — pass a new value to change it.
    
</dd>
</dl>

<dl>
<dd>

**ads_triple_whale_integration:** `Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAdsTripleWhaleIntegration` — Connects or disconnects the Triple Whale integration. Requires a connected Shopify store, since Triple Whale keys spend records by Shopify shop.
    
</dd>
</dl>

<dl>
<dd>

**cards_auto_top_up:** `Internal::Types::Boolean` — Whether incoming funds are automatically moved to the account's cards balance. Requires a cards balance on the account.
    
</dd>
</dl>

<dl>
<dd>

**dispute_fighter_enabled:** `Internal::Types::Boolean` — Whether Whop assembles and files the evidence response when this account's payments are disputed. Off by default; enabling it also opts the account into the success fee charged only on disputes it wins.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::Preferences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Accounts Reserves
<details><summary><code>client.accounts.reserves.<a href="/lib/whop_sdk/accounts/reserves/client.rb">list</a>(account_id:) -> Whop_sdk::Accounts::Reserves::Types::ListReservesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists what the account's held balance is made of, one entry per currency: the total held, why each part is held, and the days it unlocks.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.accounts.reserves.list(account_id: "account_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Account ID, prefixed `biz_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Accounts::Reserves::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Affiliates Overrides
<details><summary><code>client.affiliates.overrides.<a href="/lib/whop_sdk/affiliates/overrides/client.rb">list</a>(id:) -> Whop_sdk::Affiliates::Overrides::Types::ListOverridesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of overrides for an affiliate.

Required permissions:
 - `affiliate:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.overrides.list(
  id: "aff_xxxxxxxxxxxxxx",
  first: 42,
  last: 42
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The affiliate ID.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Returns the elements in the list that come after the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Returns the elements in the list that come before the specified cursor.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Returns the first _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Returns the last _n_ elements from the list.
    
</dd>
</dl>

<dl>
<dd>

**override_type:** `Whop_sdk::Types::AffiliateOverrideRoles` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::Overrides::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.overrides.<a href="/lib/whop_sdk/affiliates/overrides/client.rb">create</a>(id:, request) -> Whop_sdk::Affiliates::Overrides::Types::CreateOverridesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a commission override for an affiliate.

Required permissions:
 - `affiliate:create`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.overrides.create(id: "aff_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The affiliate ID.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Whop_sdk::Affiliates::Overrides::Types::CreateOverridesRequestBody` — Parameters for CreateAffiliateOverride
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::Overrides::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.overrides.<a href="/lib/whop_sdk/affiliates/overrides/client.rb">retrieve</a>(id:, override_id:) -> Whop_sdk::Affiliates::Overrides::Types::RetrieveOverridesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details of a specific affiliate override.

Required permissions:
 - `affiliate:basic:read`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.overrides.retrieve(
  id: "aff_xxxxxxxxxxxxxx",
  override_id: "override_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The affiliate ID.
    
</dd>
</dl>

<dl>
<dd>

**override_id:** `String` — The override ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::Overrides::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.overrides.<a href="/lib/whop_sdk/affiliates/overrides/client.rb">delete</a>(id:, override_id:) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an affiliate override.

Required permissions:
 - `affiliate:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.overrides.delete(
  id: "aff_xxxxxxxxxxxxxx",
  override_id: "override_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The affiliate ID.
    
</dd>
</dl>

<dl>
<dd>

**override_id:** `String` — The override ID.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::Overrides::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.affiliates.overrides.<a href="/lib/whop_sdk/affiliates/overrides/client.rb">update</a>(id:, override_id:, request) -> Whop_sdk::Affiliates::Overrides::Types::UpdateOverridesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing affiliate override.

Required permissions:
 - `affiliate:update`
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.affiliates.overrides.update(
  id: "aff_xxxxxxxxxxxxxx",
  override_id: "override_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The affiliate ID.
    
</dd>
</dl>

<dl>
<dd>

**override_id:** `String` — The override ID.
    
</dd>
</dl>

<dl>
<dd>

**applies_to_payments:** `Whop_sdk::Types::AffiliateAppliesToPayments` — Whether commission applies to first payment or all payments (standard only).
    
</dd>
</dl>

<dl>
<dd>

**commission_type:** `Whop_sdk::Types::AffiliatePayoutTypes` — The commission type (percentage or flat_fee).
    
</dd>
</dl>

<dl>
<dd>

**commission_value:** `Integer` — The commission value (percentage 1-100 or flat fee in dollars).
    
</dd>
</dl>

<dl>
<dd>

**revenue_basis:** `Whop_sdk::Types::AffiliateRevenueBases` — The revenue calculation basis (rev-share only).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Affiliates::Overrides::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Bounties Submissions
<details><summary><code>client.bounties.submissions.<a href="/lib/whop_sdk/bounties/submissions/client.rb">list</a>(bounty_id:) -> Whop_sdk::Bounties::Submissions::Types::ListSubmissionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a bounty's publicly visible work — submitted, approved, and denied submissions in the reduced public shape. Authentication is optional; a bounty that is not publicly visible returns `404`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.submissions.list(bounty_id: "bounty_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bounty_id:** `String` — The bounty whose public submissions to list (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestStatus` — Filter by lifecycle state.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only submissions created after this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only submissions created before this ISO 8601 timestamp.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestOrder` — Sort field.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of submissions to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of submissions to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::Submissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bounties.submissions.<a href="/lib/whop_sdk/bounties/submissions/client.rb">retrieve</a>(bounty_id:, id:) -> Whop_sdk::Types::PublicBountySubmission</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves one of a bounty's publicly visible submissions in the reduced public shape — the read behind a shared proof link, whose submission is usually outside the bounty page's capped preview. Authentication is optional; a bounty that is not publicly visible, and a submission that is not publicly visible work on it, both return `404`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bounties.submissions.retrieve(
  bounty_id: "bounty_id",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bounty_id:** `String` — The bounty the submission belongs to (`bnty_` tag).
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The submission to retrieve (`btys_` tag).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Bounties::Submissions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Members Logs
<details><summary><code>client.members.logs.<a href="/lib/whop_sdk/members/logs/client.rb">list</a>(id:) -> Whop_sdk::Members::Logs::Types::ListLogsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists activity for a member and all of their non-drafted memberships, most recent first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.logs.list(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Member ID (`mber_` tag).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of log entries to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to paginate forwards from.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of log entries to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to paginate backwards from.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Members::Logs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notifications Topics
<details><summary><code>client.notifications.topics.<a href="/lib/whop_sdk/notifications/topics/client.rb">list</a>() -> Whop_sdk::Notifications::Topics::Types::ListTopicsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the platform's visible notification topics — the categories users can set notification preferences on. App-created topics are internal and not returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notifications.topics.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**topic_type:** `Whop_sdk::Notifications::Topics::Types::ListTopicsRequestTopicType` — Only return topics of this scope: `user` (member notifications) or `account_team` (team notifications).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of topics to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns topics after this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Notifications::Topics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Partners Businesses
<details><summary><code>client.partners.businesses.<a href="/lib/whop_sdk/partners/businesses/client.rb">list</a>() -> Whop_sdk::Partners::Businesses::Types::ListBusinessesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the businesses the authenticated user referred onto Whop, most recent first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.businesses.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**status:** `Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestStatus` — Filter by referral status.
    
</dd>
</dl>

<dl>
<dd>

**has_earnings:** `Internal::Types::Boolean` — When true, only businesses with pending or completed earnings paid to the caller.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of partner businesses to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of partner businesses to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestOrder` — The field to sort partner businesses by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return partner businesses created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return partner businesses created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**referred_user_id:** `String` — Filter to referrals attributed to this user. For first-tier referrals, this is the referred account owner; for second-tier referrals, this is the partner you recruited.
    
</dd>
</dl>

<dl>
<dd>

**referred_username:** `String` — Filter by the referred user's exact username. Ignored when `referred_user_id` is present.
    
</dd>
</dl>

<dl>
<dd>

**tier:** `Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestTier` — Filter to referrals from a single tier: first, second, or blueprint.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::Businesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.partners.businesses.<a href="/lib/whop_sdk/partners/businesses/client.rb">retrieve</a>(id:) -> Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single referred business and its referral terms.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.businesses.retrieve(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The partner business ID (a coma_ identifier).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::Businesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Partners Businesses Earnings
<details><summary><code>client.partners.businesses.earnings.<a href="/lib/whop_sdk/partners/businesses/earnings/client.rb">list</a>(id:) -> Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the earnings Whop pays out for one referred business's activity, most recent first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.partners.businesses.earnings.list(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — The partner business ID (a coma_ identifier).
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestStatus` — Filter by earning status.
    
</dd>
</dl>

<dl>
<dd>

**income_source:** `Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestIncomeSourceItem` — Filter to earnings from these income sources. Repeat the parameter for each one (income_source=sales&income_source=ad_spend).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestOrder` — The field to sort earnings by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Partners::Businesses::Earnings::Types::ListEarningsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Only return earnings created before this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**created_after:** `String` — Only return earnings created after this timestamp.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Partners::Businesses::Earnings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payouts Methods
<details><summary><code>client.payouts.methods.<a href="/lib/whop_sdk/payouts/methods/client.rb">list</a>() -> Whop_sdk::Payouts::Methods::Types::ListMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the bank accounts, wallets, and crypto addresses an account or user can pay out to, newest first.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.methods.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Whop_sdk::Payouts::Methods::Types::ListMethodsRequestStatus` — Optional status filter. `created` means saved but unused, `active` means a payout through it succeeded, `broken` means the last payout failed and the method needs fixing.
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — Optional payout amount in whole currency units, for example `250.00`. When provided, each method includes a quote with the estimated fee, amount received, and delivery date for that amount.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Currency code of the amount, for example `usd`. Only meaningful with amount or include_limits.
    
</dd>
</dl>

<dl>
<dd>

**include_limits:** `Internal::Types::Boolean` — When true, the response also carries limits — the live per-speed payout caps the account's payout requests are validated against, in the requested currency. Requires the payout:withdrawal:read scope.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of payout methods to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of payout methods to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::Methods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.methods.<a href="/lib/whop_sdk/payouts/methods/client.rb">create</a>(request) -> Whop_sdk::Payouts::Methods::Types::CreateMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Saves a new place an account or user can pay out to. Sensitive details are vaulted in transit and never stored raw.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.methods.create(supported_payout_method_id: "podst_xxxxxxxxxxxxxx")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The account to add the payout method for, prefixed `biz_`. Provide this or `user_id`.
    
</dd>
</dl>

<dl>
<dd>

**destination_currency:** `String` — Currency the supported payout method delivers payouts in.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `Internal::Types::Hash[String, String]` — The supported payout method's required field values, keyed by field id — list them with `GET /payouts/supported_methods?supported_payout_method_id=...`. Field ids are stable `fld_` identifiers you may hardcode; they never change for a given field. A Basis Theory token id may be passed in place of a raw value. For a U.S. bank routing-number field, a raw nine-digit value must also pass the ABA checksum. A validation failure returns the method's full required_fields schema alongside the error. Required whenever the account details are supplied directly.
    
</dd>
</dl>

<dl>
<dd>

**is_default:** `Internal::Types::Boolean` — Whether to make this the account's default payout method.
    
</dd>
</dl>

<dl>
<dd>

**nickname:** `String` — A label for the payout method, unique per destination.
    
</dd>
</dl>

<dl>
<dd>

**supported_payout_method_id:** `String` — The supported payout method to save (a podst_ identifier from a previous listing).
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The user to add the payout method for, prefixed `user_`. Provide this or `account_id`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::Methods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.methods.<a href="/lib/whop_sdk/payouts/methods/client.rb">delete</a>(id:) -> Whop_sdk::Payouts::Methods::Types::DeleteMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a saved payout method so it can no longer receive payouts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.methods.delete(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payout method ID, prefixed `potk_`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::Methods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payouts.methods.<a href="/lib/whop_sdk/payouts/methods/client.rb">update</a>(id:, request) -> Whop_sdk::Payouts::Methods::Types::UpdateMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Changes the label used to identify a saved payout method.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.methods.update(
  id: "id",
  nickname: "Primary checking"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Payout method ID, prefixed `potk_`.
    
</dd>
</dl>

<dl>
<dd>

**nickname:** `String` — New label for the payout method, with at least one non-whitespace character and a maximum of 100 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::Methods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Payouts SupportedMethods
<details><summary><code>client.payouts.supported_methods.<a href="/lib/whop_sdk/payouts/supported_methods/client.rb">list</a>() -> Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the payout methods an account or user is eligible to add.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payouts.supported_methods.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — The owning account ID (a biz_ identifier). Provide this or user_id.
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` — The owning user ID (a user_ identifier). Provide this or account_id.
    
</dd>
</dl>

<dl>
<dd>

**country:** `String` — ISO 3166-1 alpha-2 country code for the bank account or wallet, such as `US`. Defaults to the country of supported_payout_method_id when one is given, otherwise the payout account's country.
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` — Optional payout amount in whole currency units, for example `250.00`. When provided, each destination includes per-currency fee and delivery quotes.
    
</dd>
</dl>

<dl>
<dd>

**currency:** `String` — Currency code of the amount, for example `usd`. Only meaningful with amount.
    
</dd>
</dl>

<dl>
<dd>

**supported_payout_method_id:** `String` — Narrows the list to one supported payout method (a podst_ identifier) and includes the required_fields needed to save it as a payout method.
    
</dd>
</dl>

<dl>
<dd>

**destination_currency:** `String` — Currency the supported payout method would deliver payouts in. Only meaningful with supported_payout_method_id; required fields vary by destination currency.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — Number of supported payout methods to return from the start of the window.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — Cursor to fetch the page after (from page_info.end_cursor).
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — Number of supported payout methods to return from the end of the window.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — Cursor to fetch the page before (from page_info.start_cursor).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Payouts::SupportedMethods::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users OauthGrants
<details><summary><code>client.users.oauth_grants.<a href="/lib/whop_sdk/users/oauth_grants/client.rb">list</a>() -> Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's own OAuth grants — one per app they have authorized, per account they authorized it for. The list is always the caller's own; there is no parameter for reading another user's grants. Requires a user session: an API key or an OAuth token is refused, so an app can never enumerate the other apps a user has authorized.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.oauth_grants.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `String` — Only return grants for this app, prefixed `app_`. An app the user has never authorized returns an empty list.
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of grants to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns grants after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of grants to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns grants before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestOrder` — The field to sort grants by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::OauthGrants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.oauth_grants.<a href="/lib/whop_sdk/users/oauth_grants/client.rb">create</a>(request) -> Whop_sdk::Types::OauthGrant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Completes the OAuth authorization step for the authenticated user: records their consent for the scopes an app asked for and mints the authorization code to hand back to it. Returns the grant, plus a `redirect_url` carrying that code — the one and only time it is returned. Exchange the code at `POST /oauth/token` with the verifier for `code_challenge`. Requires a user session, because consent has to come from the account holder: an API key or an OAuth token is refused, so an app can never authorize itself. Send an `Idempotency-Key` to make a retry safe — a replay returns the original `redirect_url` and its code rather than issuing a second one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.oauth_grants.create(
  client_id: "app_xxxxxxxxxxxxxx",
  code_challenge: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  code_challenge_method: "S256",
  redirect_uri: "https://Booking.Shinetime.example:8443/oauth/Callback/",
  requested_scopes: ["profile"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `String` — Authorize the app for one of the user's accounts rather than for the user alone, prefixed `biz_`. The user must have access to it.
    
</dd>
</dl>

<dl>
<dd>

**client_id:** `String` — The app being authorized, prefixed `app_`.
    
</dd>
</dl>

<dl>
<dd>

**code_challenge:** `String` — The PKCE code challenge: the base64url-encoded SHA-256 of your code verifier, without padding.
    
</dd>
</dl>

<dl>
<dd>

**code_challenge_method:** `Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequestCodeChallengeMethod` — How `code_challenge` was derived. Only `S256` is accepted.
    
</dd>
</dl>

<dl>
<dd>

**consent_shown:** `Internal::Types::Boolean` — Whether the consent UI listed these scopes for the user. Sending `false` succeeds only when the user has already granted every scope requested.
    
</dd>
</dl>

<dl>
<dd>

**nonce:** `String` — OIDC nonce, echoed into the resulting ID token. Required when `requested_scopes` includes `openid`.
    
</dd>
</dl>

<dl>
<dd>

**redirect_uri:** `String` — Where to send the user once they have consented. Must match one of the app's registered redirect URIs exactly — it is compared as a string, not normalized.
    
</dd>
</dl>

<dl>
<dd>

**requested_scopes:** `Internal::Types::Array[String]` — The permissions the app is asking for, for example `member:basic:read`. `GET /api_keys/permissions` names and describes each one. Granting adds to whatever the user already granted this app rather than replacing it.
    
</dd>
</dl>

<dl>
<dd>

**response_type:** `Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequestResponseType` — The OAuth response type. Only `code` is accepted; defaults to `code`.
    
</dd>
</dl>

<dl>
<dd>

**state:** `String` — Opaque value appended to `redirect_url` unchanged, for the client to correlate the response with its request.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::OauthGrants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users Passkeys
<details><summary><code>client.users.passkeys.<a href="/lib/whop_sdk/users/passkeys/client.rb">list</a>() -> Whop_sdk::Users::Passkeys::Types::ListPasskeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's own passkeys, newest first. The list is always the caller's own; there is no parameter for reading another user's passkeys. Requires a user session: an API key or an OAuth token is refused, because a passkey confirms the account holder before a sensitive action and no app may enumerate one.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.passkeys.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**first:** `Integer` — The number of passkeys to return (default 20, max 100).
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns passkeys after this position.
    
</dd>
</dl>

<dl>
<dd>

**last:** `Integer` — The number of passkeys to return from the end of the range.
    
</dd>
</dl>

<dl>
<dd>

**before:** `String` — A cursor; returns passkeys before this position.
    
</dd>
</dl>

<dl>
<dd>

**order:** `Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestOrder` — The field to sort passkeys by.
    
</dd>
</dl>

<dl>
<dd>

**direction:** `Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestDirection` — Sort direction.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Passkeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.passkeys.<a href="/lib/whop_sdk/users/passkeys/client.rb">create</a>(request) -> Whop_sdk::Types::Passkey</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Registers a passkey for the authenticated user from the attestation a browser produced for a `registration` challenge. Mint that challenge first with `POST /users/me/passkeys/challenge`; it is single-use and expires 5 minutes after it is issued. Requires a user session.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.passkeys.create(
  attestation_object: "YXR0ZXN0YXRpb24",
  client_data_json: "Y2xpZW50LWRhdGE",
  credential_id: "bmV3LWNyZWRlbnRpYWw",
  nickname: "Work laptop"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**attestation_object:** `String` — The `attestationObject` from the WebAuthn attestation response, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**client_data_json:** `String` — The `clientDataJSON` from the WebAuthn attestation response, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**credential_id:** `String` — The WebAuthn credential ID the authenticator returned, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**nickname:** `String` — A name for this passkey, usually the device it lives on. 255 characters or fewer.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Passkeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.passkeys.<a href="/lib/whop_sdk/users/passkeys/client.rb">challenge</a>(request) -> Whop_sdk::Users::Passkeys::Types::ChallengePasskeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mints the challenge a browser needs to run a WebAuthn ceremony against the authenticated user's own passkeys. A `registration` challenge enrolls a new passkey; a `deletion` challenge is bound to the one passkey named by `passkey_id` and proves the user still holds it. Challenges are single-use and expire 5 minutes after they are issued, so send a fresh `Idempotency-Key` per ceremony — a replayed key returns the original challenge, which may already have expired. Requires a user session.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.passkeys.challenge(challenge_type: "registration")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**challenge_type:** `Whop_sdk::Users::Passkeys::Types::ChallengePasskeysRequestChallengeType` — The ceremony this challenge is for.
    
</dd>
</dl>

<dl>
<dd>

**passkey_id:** `String` — The passkey the ceremony targets, prefixed `wcred_`. Required when `challenge_type` is `deletion`, ignored otherwise.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Passkeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.passkeys.<a href="/lib/whop_sdk/users/passkeys/client.rb">delete</a>(id:, request) -> Whop_sdk::Users::Passkeys::Types::DeletePasskeysResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes one of the authenticated user's own passkeys. The request body carries a WebAuthn assertion from the passkey being deleted, so possession of the credential is proven before it is removed: mint a `deletion` challenge for it first, run the ceremony with that passkey, and send the result here. Deleting the user's last passkey is allowed — their other step-up factors remain. Requires a user session.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.passkeys.delete(
  id: "id",
  authenticator_data: "YXV0aGVudGljYXRvci1kYXRh",
  client_data_json: "Y2xpZW50LWRhdGE",
  signature: "c2lnbmF0dXJl"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` — Passkey ID, prefixed `wcred_`.
    
</dd>
</dl>

<dl>
<dd>

**authenticator_data:** `String` — The `authenticatorData` from the WebAuthn assertion, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**client_data_json:** `String` — The `clientDataJSON` from the WebAuthn assertion, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**signature:** `String` — The `signature` from the WebAuthn assertion, base64url-encoded.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Passkeys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users Preferences
<details><summary><code>client.users.preferences.<a href="/lib/whop_sdk/users/preferences/client.rb">retrieve</a>() -> Whop_sdk::Types::UserPreferences</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the authenticated user's settings document. Addressed only as `me` — the document always belongs to the session user.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.preferences.retrieve
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Preferences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.users.preferences.<a href="/lib/whop_sdk/users/preferences/client.rb">update</a>(request) -> Whop_sdk::Types::UserPreferences</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the authenticated user's settings document. Replaces the top-level keys it is given and leaves the rest untouched.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.preferences.update
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bounty_worker_onboarding_dismissed:** `Internal::Types::Boolean` — Whether the user has dismissed the first-time bounty worker onboarding. Set to `false` to show it again.
    
</dd>
</dl>

<dl>
<dd>

**investigation_enabled:** `Internal::Types::Boolean` — Whether investigation mode is enabled for the user. Only meaningful for staff users with investigation access.
    
</dd>
</dl>

<dl>
<dd>

**terms_accepted:** `Internal::Types::Boolean` — Records the user's acceptance of Whop's terms and policies. Only `true` is accepted — the server stamps `terms_accepted_at` and acceptance cannot be withdrawn here.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Preferences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users Preferences Notifications
<details><summary><code>client.users.preferences.notifications.<a href="/lib/whop_sdk/users/preferences/notifications/client.rb">set</a>(request) -> Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sets the authenticated user's notification preferences. Each preference is addressed by `scope`, not by id, so a scope read back from either list endpoint can be sent straight here.

A scope naming an experience with no topic sets that experience's level, and accepts all three levels. Any other scope sets a topic override, which is binary — `all` or `nothing` — and requires a `channel`.

`level: null` clears the preference. Preferences are stored as overrides, so clearing one means the scope inherits its default again rather than being switched off.

The batch is applied in one transaction: if any entry is rejected, none are written. Experience levels are applied before topic overrides, because setting a level replaces every topic preference for that experience — so an override sent alongside a level wins. The response reports what each scope now resolves to, in the order the entries were sent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.preferences.notifications.set(preferences: [{
  scope: {}
}])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**preferences:** `Internal::Types::Array[Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequestPreferencesItem]` — The preferences to set, at most 100 per request.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Preferences::Notifications::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users Preferences Notifications Experiences
<details><summary><code>client.users.preferences.notifications.experiences.<a href="/lib/whop_sdk/users/preferences/notifications/experiences/client.rb">list</a>() -> Whop_sdk::Users::Preferences::Notifications::Experiences::Types::ListExperiencesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's per-experience notification levels. Experiences the user never set a level for are omitted — their effective level is `all`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.preferences.notifications.experiences.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**first:** `Integer` — The number of preferences to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns preferences after this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Preferences::Notifications::Experiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Users Preferences Notifications Topics
<details><summary><code>client.users.preferences.notifications.topics.<a href="/lib/whop_sdk/users/preferences/notifications/topics/client.rb">list</a>() -> Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the authenticated user's topic-scoped notification preferences, plus user-agnostic platform defaults. Each filter matches preferences scoped to its value or not narrowed on that dimension. Per-experience levels are listed separately, by `GET /users/me/preferences/notifications/experiences`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.users.preferences.notifications.topics.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**channel:** `Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsRequestChannel` — Only return preferences for this delivery channel (or not narrowed to a channel).
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` — Only return preferences scoped to this account's member notifications (`biz_` tag).
    
</dd>
</dl>

<dl>
<dd>

**team_account_id:** `String` — Only return preferences scoped to this account's team notifications (`biz_` tag).
    
</dd>
</dl>

<dl>
<dd>

**experience_id:** `String` — Only return preferences scoped to this experience (`exp_` tag).
    
</dd>
</dl>

<dl>
<dd>

**topic_id:** `String` — Only return preferences scoped to this notification topic (`topic_` tag).
    
</dd>
</dl>

<dl>
<dd>

**first:** `Integer` — The number of preferences to return.
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` — A cursor; returns preferences after this position.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Whop_sdk::Users::Preferences::Notifications::Topics::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

