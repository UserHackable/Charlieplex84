#!/usr/bin/ruby

11.times do |x|
  11.times do |y|
    next if x == y
    name = "LED_%d_%d"%[x,y]
    xp = (x + 1) * 0.2
    yp = (y + ((x < y) ? 1 : 2)) * 0.2
    print "move %s (%0.1f %0.1f);"%[name,xp,yp]
    puts "CHANGE PACKAGE %s '%s';"%[name,"LEDOVAL"]
  end
end
