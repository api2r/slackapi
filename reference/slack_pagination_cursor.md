# Apply cursor-based pagination

Process a `resp` object to extract the next cursor, and build the next
`req`. Use as the `pagination_fn` argument to
[`slack_req_prepare()`](https://slackapi.api2r.org/reference/slack_req_prepare.md).

## Usage

``` r
slack_pagination_cursor(resp, req)
```

## Arguments

- resp:

  (`httr2_response`) A
  [`httr2::response()`](https://httr2.r-lib.org/reference/response.html)
  object (as returned by
  [`httr2::req_perform()`](https://httr2.r-lib.org/reference/req_perform.html)).

- req:

  (`httr2_request`) The request object to modify.

## Value

A [`httr2::request()`](https://httr2.r-lib.org/reference/request.html)
object with additional class `nectar_request`.
