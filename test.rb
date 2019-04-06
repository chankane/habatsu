$n, $m = *gets.split.map(&:to_i)
$rel = Array.new($n).map { Array.new($n, false) }
m.times {
  *gets.split.map(&:to_i)
  $rel[?][?] = true
}
#h = gets