$FNAME = "./data.txt"

def read()
  data = []
  File.open($FNAME, "r") do |f|
    while line = f.gets
      data.append([line[0].to_i, line[2].to_i])
    end
  end
  [data[0][0], data[0][1], data[1..-1]]
end


p read
