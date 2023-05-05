#################################
## Build a Website with distill #
#################################

# https://www.youtube.com/watch?v=83J2_iO4Bbw
# Credits and many thanks to Jenny Sloane


library(distill)
library(postcards)
library(usethis)
library(here)
install.packages("postcards")

# 1. Initial creating the website with all it's part with the distill package
create_website(dir= "."   , title= "Felix Schramm", gh_pages =T )

# 2. Replacing the "index"-page of the webseite through a tample 
#of the postcards package 
create_article(file = "index", template = "jolla", package = "postcards")

# 3. Website upload through Git

# Run this code in the Terminal/Shell 

#'git config --global user.name “FelixSchramm”
#git config --global user.email “felixschramm@me.com”
#git add -A # this will add everything'

# 4. Git authentication with the usethis package 
# generate the token 
create_github_token()

gitcreds::gitcreds_set()



# 5. Create new article for the CV-Page
# includes:
# - PDF-download integration with the here package
# - PDF - display


create_article("CV")

library(here)

library(knitr)

include_graphics()

'<div class="contributor_org">
  `r xfun::embed_file(here::here("rmarkdown1", "markdown1.Rmd"), text = "Download .Rmd here")`

`r xfun::embed_file(here::here("rmarkdown1", "markdown1.docx"), text = "Download word document here")`

`r xfun::embed_file(here::here("rmarkdown1", "markdown1.pdf"), text = "Download pdf here")`
</div>' 


