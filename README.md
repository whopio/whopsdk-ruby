# Whopsdk Ruby API library

The Whopsdk Ruby library provides convenient access to the Whopsdk REST API from any Ruby 3.2.0+ application. It ships with comprehensive types & docstrings in Yard, RBS, and RBI – [see below](https://github.com/stainless-sdks/whopsdk-ruby#Sorbet) for usage with Sorbet. The standard library's `net/http` is used as the HTTP transport, with connection pooling via the `connection_pool` gem.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/whopsdk).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

```ruby
gem "whopsdk", "~> 0.0.1"
```

## Usage

```ruby
require "bundler/setup"
require "whopsdk"

whopsdk = Whopsdk::Client.new(
  api_key: ENV["WHOPSDK_API_KEY"] # This is the default and can be omitted
)

page = whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

puts(page.id)
```

### Pagination

List methods in the Whopsdk API are paginated.

This library provides auto-paginating iterators with each list response, so you do not have to request successive pages manually:

```ruby
page = whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

# Fetch single item from page.
invoice = page.data[0]
puts(invoice.id)

# Automatically fetches more pages as needed.
page.auto_paging_each do |invoice|
  puts(invoice.id)
end
```

Alternatively, you can use the `#next_page?` and `#next_page` methods for more granular control working with pages.

```ruby
if page.next_page?
  new_page = page.next_page
  puts(new_page.data[0].id)
end
```

### Handling errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `Whopsdk::Errors::APIError` will be thrown:

```ruby
begin
  invoice = whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")
rescue Whopsdk::Errors::APIConnectionError => e
  puts("The server could not be reached")
  puts(e.cause)  # an underlying Exception, likely raised within `net/http`
rescue Whopsdk::Errors::RateLimitError => e
  puts("A 429 status code was received; we should back off a bit.")
rescue Whopsdk::Errors::APIStatusError => e
  puts("Another non-200-range status code was received")
  puts(e.status)
end
```

Error codes are as follows:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
whopsdk = Whopsdk::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx", request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds. You can use the timeout option to configure or disable this:

```ruby
# Configure the default for all requests:
whopsdk = Whopsdk::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx", request_options: {timeout: 5})
```

On timeout, `Whopsdk::Errors::APITimeoutError` is raised.

Note that requests that time out are retried by default.

## Advanced concepts

### BaseModel

All parameter and response objects inherit from `Whopsdk::Internal::Type::BaseModel`, which provides several conveniences, including:

1. All fields, including unknown ones, are accessible with `obj[:prop]` syntax, and can be destructured with `obj => {prop: prop}` or pattern-matching syntax.

2. Structural equivalence for equality; if two API calls return the same values, comparing the responses with == will return true.

3. Both instances and the classes themselves can be pretty-printed.

4. Helpers such as `#to_h`, `#deep_to_h`, `#to_json`, and `#to_yaml`.

### Making custom or undocumented requests

#### Undocumented properties

You can send undocumented parameters to any endpoint, and read undocumented response properties, like so:

Note: the `extra_` parameters of the same name overrides the documented parameters.

```ruby
page =
  whopsdk.invoices.list(
    company_id: "biz_xxxxxxxxxxxxxx",
    request_options: {
      extra_query: {my_query_parameter: value},
      extra_body: {my_body_parameter: value},
      extra_headers: {"my-header": value}
    }
  )

puts(page[:my_undocumented_property])
```

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a request, as seen in the examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints while retaining the benefit of auth, retries, and so on, you can make requests using `client.request`, like so:

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"hello": "world"}
)
```

### Concurrency & connection pooling

The `Whopsdk::Client` instances are threadsafe, but are only are fork-safe when there are no in-flight HTTP requests.

Each instance of `Whopsdk::Client` has its own HTTP connection pool with a default size of 99. As such, we recommend instantiating the client once per application in most settings.

When all available connections from the pool are checked out, requests wait for a new connection to become available, with queue time counting towards the request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

## Sorbet

This library provides comprehensive [RBI](https://sorbet.org/docs/rbi) definitions, and has no dependency on sorbet-runtime.

You can provide typesafe request parameters like so:

```ruby
whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")
```

Or, equivalently:

```ruby
# Hashes work, but are not typesafe:
whopsdk.invoices.list(company_id: "biz_xxxxxxxxxxxxxx")

# You can also splat a full Params class:
params = Whopsdk::InvoiceListParams.new(company_id: "biz_xxxxxxxxxxxxxx")
whopsdk.invoices.list(**params)
```

### Enums

Since this library does not depend on `sorbet-runtime`, it cannot provide [`T::Enum`](https://sorbet.org/docs/tenum) instances. Instead, we provide "tagged symbols" instead, which is always a primitive at runtime:

```ruby
# :send_invoice
puts(Whopsdk::CollectionMethod::SEND_INVOICE)

# Revealed type: `T.all(Whopsdk::CollectionMethod, Symbol)`
T.reveal_type(Whopsdk::CollectionMethod::SEND_INVOICE)
```

Enum parameters have a "relaxed" type, so you can either pass in enum constants or their literal value:

```ruby
# Using the enum constants preserves the tagged type information:
whopsdk.invoices.create(
  collection_method: Whopsdk::CollectionMethod::SEND_INVOICE,
  # …
)

# Literal values are also permissible:
whopsdk.invoices.create(
  collection_method: :send_invoice,
  # …
)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.2.0 or higher.

## Contributing

See [the contributing documentation](https://github.com/stainless-sdks/whopsdk-ruby/tree/main/CONTRIBUTING.md).
