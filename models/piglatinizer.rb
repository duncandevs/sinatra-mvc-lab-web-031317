#finds the first vowel places everything else to the back adds ay
#ie: school => oolschay
class PigLatinizer
  def piglatinize(inputs)
    inputs.split(" ").collect do |input|
      arr = input.split /([aeiouAEIOU].*)/
      if  arr.size == 1 || arr[0] == ""
          input + "way"
      else
          arr[1]+arr[0]+"ay"
      end
    end.join(" ")#end do
  end#end method
  def to_pig_latin(inputs)
    piglatinize(inputs)
  end
end
#'banana'.split /([aeiou].*)/ #=> ["b", "anana"]
