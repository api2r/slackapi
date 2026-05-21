# Parameters used in multiple functions

Reused parameter definitions are gathered here for easier editing.

## Arguments

- max_reqs:

  (`integer`) The maximum number of separate requests to perform. Passed
  on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- max_tries_per_req:

  (`integer`) The maximum number of times to attempt each individual
  request. Passed on to
  [`nectar::req_perform_opinionated()`](https://nectar.api2r.org/reference/req_perform_opinionated.html).

- pagination_fn:

  (`function`) The pagination scheme to use. Currently either `NULL` (no
  pagination, the default) or `slack_pagination_cursor` to use
  [`slack_pagination_cursor()`](https://jonthegeek.github.io/slackapi/reference/slack_pagination_cursor.md)
  for `cursor`-based pagination. See [Pagination through
  collections](https://api.slack.com/apis/pagination) in the Slack API
  documentation. We do not currently support "Classic pagination".

- per_req:

  (`integer`) The maximum number of items to return. Fewer than the
  requested number of items may be returned, even if the end of the list
  hasn't been reached. Must be an integer under 1000.

- req:

  (`httr2_request`) The request object to modify.

- resp:

  (`httr2_response`) A
  [`httr2::response()`](https://httr2.r-lib.org/reference/response.html)
  object (as returned by
  [`httr2::req_perform()`](https://httr2.r-lib.org/reference/req_perform.html)).

- team_id:

  (`character`) Encoded team id to list channels in, required if token
  belongs to org-wide app.

- token:

  (`character`) A bearer token provided by Slack. A later enhancement
  will add the ability to generate this token. Slack token are
  long-lasting, and should be carefully guarded.

- ...:

  These dots are for future extensions and must be empty.
