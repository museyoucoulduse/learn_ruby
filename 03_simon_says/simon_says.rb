#write your code here
def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, n=2)
  ((text + ' ') * n).strip
end

def start_of_word(word, n)
  word[0...n]
end

def first_word(word)
  word.split(' ')[0]
end

def titleize(word)
  title = word.split(' ')
  if title.length == 1 then
    return title[0].capitalize
  else
    title.each_with_index do |t, i|
      if t.length <= 4 && i > 0 && i < title.length - 1 then next end
      t.capitalize!
    end
    return title.join(' ')
  end
end
