# A
# 末尾分解
# 境界状態圧縮

N = gets.to_i

full = [0] * (N + 1)
gap  = [0] * (N + 1)

# 幅0：何も置かない
full[0] = 1

# 幅1：縦ドミノ1個
full[1] = 1 if N >= 1

(2 .. N).each do |i|
  # 完全に埋まった状態を作る
  full[i] =
    full[i - 1] +   # 縦ドミノ
    full[i - 2] +   # 横ドミノ2個(縦ドミノ2個は上のfull[i - 1]がすでにやっているので入れない)
    gap[i - 1]      # gapをL字で埋める

  # 1マス欠け状態を作る
  gap[i] =
    gap[i - 1] +        # gapを横に伸ばす
    full[i - 2] * 2     # L字で新しくgap生成（上下2通り）
end

puts full[N]
