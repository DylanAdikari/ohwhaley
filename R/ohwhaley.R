usethis::use_pipe()

#' Deliver praise
#' @description Summon a whale for a customisable pick me up
#'
#' @param what whatever phrase you want to be able to echo. if not supplied, a random phrase will be chosen.
#' @return Whale shaped message
#' @export
#'
#' @examples
#' say("You're whale-come")
say <- function(what){
  #Defining the whale ASCII
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
  #Finding the position of where to print message
  what_pos_start <-
    regexpr('%s', whale)[1] - 1

  what_pos_end <- what_pos_start + 3

  #If what isn't supplied...
  if(missing(what)){
    what <- phrases %>% sample(size = 1) #See here's the pipe!
  }

  #Combining positions, message and whale together
  out <- paste0(substr(whale, 1, what_pos_start), #Top of speech bubble
                what, #User specified message
                substr(whale, what_pos_end, nchar(whale))) #Bottom of speech bubble + whale

  #Return whale message
  message(out)
}


#' Whale pun phrases used in say()
#' @keywords internal
phrases <-  c(
  "You're whale-come!",
  "How are you? I'm whaley good!",
  "I'm having a whale of a time!",
  "Whale, whale, whale...look who's here!",
  "Gee...this is over-whalming!",
  "Everything whale be alright!",
  "Get whale soon!",
  "Whale done! This looks great!",
  "What do you call a pod of noisy whales?        An ORCASTRA!"
)
usethis::use_mit_license("Dylan Adikari")
?say
usethis::use_pipe()
usethis::use_testthat()
usethis::use_test("ohwhaley")
say("hello")
say("Hallo, wie gehts am dieses schönen tag?")

say(hello)

gh::gh_whoami()
