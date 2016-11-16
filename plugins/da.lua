do

function run(msg, matches)
        return "Groups: 182\nUsers: 185\nowner: 182"
end 
return {
  patterns = {
    "^([Ss]tats) (extreme)",
    "^[#!/]([Ss]tats) (extreme)",

  },
  run = run
}
end
