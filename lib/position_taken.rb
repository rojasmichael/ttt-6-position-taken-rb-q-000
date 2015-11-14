def taken?
    owner.nil?
  end

  def empty?
    !taken?
  end
end

def draw?
  @board.all &:taken?
end

def display_board
  @board.each.with_index(1) |field, idx|
    print "#{field.owner || idx} | "
    print "\n-----------\n" if idx % 3 == 0
  end
end

