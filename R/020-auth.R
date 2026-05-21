.slack_req_auth <- function(req, token = NULL) {
  if (!is.null(token)) {
    req <- httr2::req_auth_bearer_token(req, token)
  }
  return(req)
}

.slack_auth <- function(token = NULL) {
  nectar::auth_prepare(
    auth_fn = .slack_req_auth,
    token = token
  )
}

.find_token <- function(token = NULL, body = NULL, query = NULL) {
  token %||% body$token %||% query$token
}
