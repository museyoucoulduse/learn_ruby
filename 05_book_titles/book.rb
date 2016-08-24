class Book
# write your code here
  attr_accessor :title
  def title=(t)
    tmp = t.split(' ')
    if tmp.length == 1 then
    @title = tmp[0].capitalize
    else
      first_word = false
      tmp.each_with_index do |ti, i|
        if first_word then ti.capitalize!; first_word = false end
        if ti == 'the' then first_word = true end
        if ti == 'eat' || ti == 'i' || ti == 'was' then ti.capitalize! end
        if ti.length <= 3 && i > 0 && i < tmp.length - 1 then next end
        ti.capitalize!
      end
      @title = tmp.join(' ')
    end
  end
end
