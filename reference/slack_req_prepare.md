# Generate a request for the Slack API

Prepare a request for the Slack API, using the opinionated framework
defined in
[`nectar::req_init()`](https://nectar.api2r.org/reference/req_init.html),
[`nectar::req_modify()`](https://nectar.api2r.org/reference/req_modify.html),
[`nectar::req_tidy_policy()`](https://nectar.api2r.org/reference/req_tidy_policy.html),
and
[`nectar::req_pagination_policy()`](https://nectar.api2r.org/reference/req_pagination_policy.html).

## Usage

``` r
slack_req_prepare(
  path,
  query = list(),
  body = NULL,
  method = NULL,
  pagination_fn = NULL,
  tidy_fn = nectar::resp_tidy_unknown,
  token = Sys.getenv("SLACK_API_TOKEN"),
  call = rlang::caller_env()
)
```

## Arguments

- path:

  (`character` or `list`) The route to an API endpoint. Optionally, a
  list or character vector with the path as one or more unnamed
  arguments (which will be concatenated with "/") plus named arguments
  to [`glue::glue()`](https://glue.tidyverse.org/reference/glue.html)
  into the path.

- query:

  (`character` or `list`) An optional list or character vector of
  parameters to pass in the query portion of the request. Can also
  include a `.multi` argument to pass to
  [`httr2::req_url_query()`](https://httr2.r-lib.org/reference/req_url.html)
  to control how elements containing multiple values are handled.

- body:

  (multiple types) An object to use as the body of the request. If any
  component of the body is a path, pass it through
  [`fs::path()`](https://fs.r-lib.org/reference/path.html) or otherwise
  give it the class "fs_path" to indicate that it is a path.

- method:

  (`length-1 character`, optional) If the method is something other than
  `GET` or `POST`, supply it. Case is ignored.

- pagination_fn:

  (`function`) The pagination scheme to use. Currently either `NULL` (no
  pagination, the default) or `slack_pagination_cursor` to use
  [`slack_pagination_cursor()`](https://jonthegeek.github.io/slackapi/reference/slack_pagination_cursor.md)
  for `cursor`-based pagination. See [Pagination through
  collections](https://api.slack.com/apis/pagination) in the Slack API
  documentation. We do not currently support "Classic pagination".

- token:

  (`character`) A bearer token provided by Slack. A later enhancement
  will add the ability to generate this token. Slack token are
  long-lasting, and should be carefully guarded.

- call:

  (`environment`) The environment from which a function was called, e.g.
  [`rlang::caller_env()`](https://rlang.r-lib.org/reference/stack.html)
  (the default). The environment will be mentioned in error messages as
  the source of the error. This argument is particularly useful for
  functions that are intended to be called as utilities inside other
  functions.

## Value

A [`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object with additional class `nectar_request`.
