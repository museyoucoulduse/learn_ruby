#write your code here

def translate(word)
  sentence = []
  if [' '].include? word then
    words = word.split(' ')
    words.each do |w|
      sentence << _translate(w)
    end
    sentence.join(' ')
  else
    _translate(word)
  end
end

def _translate(w)
  if include_vovel(w) then
    return w = w + 'ay'
  elsif !(include_vovel(w)) &&
    !(include_vovel(w, 1)) then
      ar = w.split ''
      first = ar.shift
      second = ar.shift
      ar = ar << first
      ar = ar << second
      return w = ar.join + 'ay'
  elsif !(include_vovel(w)) then
    ar = w.split ''
    first = ar.shift
    ar = ar << first
    return w = ar.join + 'ay'
  end
end

def include_vovel(w, n=0)
  if ['a', 'e', 'i', 'o', 'u'].include? w[n] then
    true
  else
    false
  end
end
