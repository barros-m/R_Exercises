answer <-  "yes"

# Keep asking until the user enters something different from "yes" 
while(toupper(answer) == "YES")
{
  answer <- readline("Try again? ")
}

print("All done!")
