# Get conversations history

Fetches a conversation's history of messages and events.

## Usage

``` r
conversations_history(
  channel,
  latest = lubridate::now(),
  oldest = 0,
  inclusive = TRUE,
  include_all_metadata = FALSE,
  per_req = 200L,
  max_reqs = Inf,
  max_tries_per_req = 3,
  token = Sys.getenv("SLACK_API_TOKEN")
)

req_conversations_history(
  channel,
  latest = lubridate::now(),
  oldest = 0,
  inclusive = TRUE,
  include_all_metadata = FALSE,
  per_req = 200L,
  token = Sys.getenv("SLACK_API_TOKEN")
)
```

## Arguments

- channel:

  (`character`) Conversation ID to fetch history for.

- latest:

  (`datetime` or `double`) End of time range of messages to include in
  results.

- oldest:

  (`datetime` or `double`) Start of time range of messages to include in
  results.

- inclusive:

  (`logical`) Include messages with `latest` or `oldest` timestamp in
  results only when either timestamp is specified.

- include_all_metadata:

  (`logical`) Return all metadata associated with this message.

- per_req:

  (`integer`) The maximum number of items to return. Fewer than the
  requested number of items may be returned, even if the end of the list
  hasn't been reached. Must be an integer under 1000.

- max_reqs:

  (`integer`) The maximum number of separate requests to perform. Passed
  on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- max_tries_per_req:

  (`integer`) The maximum number of times to attempt each individual
  request. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- token:

  (`character`) A bearer token provided by Slack. A later enhancement
  will add the ability to generate this token. Slack token are
  long-lasting, and should be carefully guarded.

## Value

`conversations_history()`: A channel's messages as a tibble.

`req_conversations_history()`: A `httr2_request` request object to fetch
a conversation's history of messages and events.
