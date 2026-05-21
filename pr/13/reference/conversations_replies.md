# Get conversations replies

Retrieve a thread of messages posted to a conversation

## Usage

``` r
conversations_replies(
  channel,
  ts,
  latest = lubridate::now(),
  oldest = 0,
  inclusive = TRUE,
  include_all_metadata = FALSE,
  per_req = 200L,
  max_reqs = Inf,
  max_tries_per_req = 3,
  token = Sys.getenv("SLACK_API_TOKEN")
)

req_conversations_replies(
  channel,
  ts,
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

  (`character`) Conversation ID to fetch thread from.

- ts:

  (`character` or `datetime` or `double`) Unique identifier of either a
  thread’s parent message or a message in the thread. ts must be the
  timestamp of an existing message with 0 or more replies. If there are
  no replies then just the single message referenced by ts will return -
  it is just an ordinary, unthreaded message.

- latest:

  (`datetime` or `double`) Only messages before this Unix timestamp will
  be included in results.

- oldest:

  (`datetime` or `double`) Only messages after this Unix timestamp will
  be included in results.

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

`conversations_replies()`: A thread of messages posted to a conversation
as a tibble. Note: The parent message is always included in the
response.

`req_conversations_replies()`: A `httr2_request` request object to
retrieve a thread of messages posted to a conversation as a tibble.
Note: The parent message is always included in the response.
