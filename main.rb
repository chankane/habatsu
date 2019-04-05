$FNAME = "./data.txt"

def read()
  File.read($FNAME).split("\n")
end


p read
