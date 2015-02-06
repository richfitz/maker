##' Don't use this function; use the package remake
##' (https://github.com/richfitz/remake) instead.
##' @title Transitional wrapper around remake
##' @param ... Arguments passed to remake
##' @param maker_file Passed to remake as remake_file
##' @export
##' @import remake
##' @rdname package-deprecated
make <- function(..., maker_file="maker.yml") {
  .Deprecated("remake::make", old="maker::make")
  remake::make(..., remake_file=maker_file)
}
##' @export
##' @rdname package-deprecated
maker <- function(maker_file="maker.yml", ...) {
  .Deprecated("remake::remake", old="maker::maker")
  remake::remake(maker_file, ...)
}
