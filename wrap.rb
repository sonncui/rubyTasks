def wrap(str, c)
  newstr = str.gsub(/(?:.{#{c}})\s/) {|s| s + "\n"}
  puts newstr
end
