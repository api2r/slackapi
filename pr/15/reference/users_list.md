# Get users list

Lists all users in a Slack team.

## Usage

``` r
users_list(
  include_locale = FALSE,
  team_id = NULL,
  per_req = 200L,
  max_reqs = Inf,
  max_tries_per_req = 3,
  token = Sys.getenv("SLACK_API_TOKEN")
)

req_users_list(
  include_locale = FALSE,
  team_id = NULL,
  per_req = 200L,
  token = Sys.getenv("SLACK_API_TOKEN")
)
```

## Arguments

- include_locale:

  (`logical`) Set this to `TRUE` to receive the locale for users.
  Defaults to `FALSE`.

- team_id:

  (`character`) Encoded team id to list users in, required if org token
  is used.

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

`users_list()`: A list of all users in the workspace. This includes both
invited users and deleted/deactivated users.

`req_users_list()`: A `httr2_request` request object that lists all
users in a Slack team.
