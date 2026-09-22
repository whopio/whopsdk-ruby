# frozen_string_literal: true

module Whop_sdk
  class Environment
    PRODUCTION = { api: "https://api.whop.com/api/v1", vault: "https://vault-api.whop.com/api/v1" }.freeze

    SANDBOX = { api: "https://sandbox-api.whop.com/api/v1", vault: "https://sandbox-vault-api.whop.com/api/v1" }.freeze
  end
end
