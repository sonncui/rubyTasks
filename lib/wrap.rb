def wrap(str, c)
  newstr = str.gsub(/.{#{c}}\s/) {|s| s + "\n"}
  print newstr
end
