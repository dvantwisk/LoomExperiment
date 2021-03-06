setClass('LoomFile', contains='RTLFile')

#' @export
#' @importFrom S4Vectors isSingleString
LoomFile <- function(path)
{
    if (!isSingleString(path))
        stop('"filename" must be a single string, specifiying a path')
    new('LoomFile', resource=path)
}
