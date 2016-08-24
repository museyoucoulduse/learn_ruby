class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    s = @seconds
    if s == 0 then
      return '00:00:00'
    end
    hh = (s / 3600)
    puts hh
    mm = ((s - (hh * 3600)).abs / 60)
    puts mm
    ss = (s - (hh * 3600) - (mm * 60)).abs
    puts ss
    str = ""
    if hh < 3600 * 99 then
      str += _zeroes(hh)
    end
    if mm < 60 * 60 then
      str += _zeroes(mm)
    end
    if ss < 60 then
      str += _zeroes(ss, false)
    end
    return str
  end

  def _zeroes(tt, colon=true)
    if tt > 9 then
      str = tt.to_s
    elsif tt > 0
      str = '0' + tt.to_s
    else
      str = '00'
    end
    if colon then
      str += ':'
    end
    return str
  end
end
