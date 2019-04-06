# すべてのパターンを試しているだけ
# id は 1-12 ではなく 0-11

def read()
  data = readlines.map { |line| line.split.map(&:to_i) }
  [data[0][0], data[0][1], data[1..-1]]
end

def cre_powerset(set)
  (0..set.size).flat_map { |i| set.combination(i).to_a }
end

def is_habatsu(members)
  members.combination(2) { |e1, e2| return false if !$rel[e1][e2] }
  true
end

$ans = 0

# ただ読み込み
$n, $m, _ = *read

# 行列に変換
$rel = Array.new($n).map { Array.new($n, false) }
_.each { |e| $rel[e[0] - 1][e[1] - 1] = true }

# すべての組み合わせを取得
powerset = cre_powerset((0...$n).to_a)

powerset.each { |e| $ans = e.length if e.length > $ans if is_habatsu(e) }

p $ans
