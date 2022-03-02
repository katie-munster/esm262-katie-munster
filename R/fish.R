
#' Analyze fish data
#'
#' This function returns the most common fish, the rarest fish, and the total number of fish
#' @param fish vector of possible fish
#' @return max_min_count list of results

fish_function = function(fish) {
  most_common_fish = names(which.max(summary(fish)))
  most_rare_fish = names(which.min(summary(fish)))
  total_count_fish = length(fish)
  max_min_count = c(most_common_fish, most_rare_fish, total_count_fish)
  return(max_min_count)
}
