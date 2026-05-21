# Get conversations list

Lists all channels in a Slack team.

## Usage

``` r
conversations_list(
  exclude_archived = FALSE,
  per_req = 200L,
  team_id = NULL,
  types = c("public_channel", "private_channel", "mpim", "im"),
  max_reqs = Inf,
  max_tries_per_req = 3,
  token = Sys.getenv("SLACK_API_TOKEN")
)

req_conversations_list(
  exclude_archived = FALSE,
  per_req = 200L,
  team_id = NULL,
  types = c("public_channel", "private_channel", "mpim", "im"),
  token = Sys.getenv("SLACK_API_TOKEN")
)
```

## Arguments

- exclude_archived:

  (`logical`) Set to `TRUE` to exclude archived channels from the list.

- per_req:

  (`integer`) The maximum number of items to return. Fewer than the
  requested number of items may be returned, even if the end of the list
  hasn't been reached. Must be an integer under 1000.

- team_id:

  (`character`) Encoded team id to list channels in, required if token
  belongs to org-wide app.

- types:

  (`character`) Mix and match channel types by providing a vector of any
  combination of `public_channel`, `private_channel`, `mpim`, `im`.

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

`conversations_list()`: A tibble of information about channels and
channel-like conversations.

`req_conversations_list()`: A `httr2_request` request object to list all
channels in a Slack team.
