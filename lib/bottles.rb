class Bottles
  def song
    verses(99, 0)
  end

  def verses(i, j)
    song = []
    while i >= j
      song << verse(i)
      i -= 1
    end
    song.join("\n")
  end

  def verse(i)
    "#{current(i)}\n#{take(i)}, #{remaining(i-1)}\n"
  end

  def current(i)
    num = i == 0 ? "no more" : i.to_s
    counter = i == 1 ? "bottle" : "bottles"
    "#{num.to_s.capitalize} #{counter} of beer on the wall, #{num} #{counter} of beer."
  end

  def take(i)
    if i == 0
      "Go to the store and buy some more"
    elsif i == 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def remaining(i)
    if i == -1
      "99 bottles of beer on the wall."
    elsif i == 0
      "no more bottles of beer on the wall."
    elsif i == 1
      "1 bottle of beer on the wall."
    else
      "#{i} bottles of beer on the wall."
    end
  end
end
