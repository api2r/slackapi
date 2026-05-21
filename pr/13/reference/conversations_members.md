# Get conversations history

Retrieve members of a conversation.

## Usage

``` r
conversations_members(
  channel,
  per_req = 200L,
  max_reqs = Inf,
  max_tries_per_req = 3,
  token = Sys.getenv("SLACK_API_TOKEN")
)

req_conversations_members(
  channel,
  per_req = 200L,
  token = Sys.getenv("SLACK_API_TOKEN")
)
```

## Arguments

- channel:

  (`character`) ID of the conversation to retrieve members for.

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

BKTODO: Return descriptions are not yet implemented in beekeeper

`conversations_members()`: A list of user IDs belonging to the members
in a conversation.

`req_conversations_members()`: A `httr2_request` request object to
retrieve members of a conversation.
