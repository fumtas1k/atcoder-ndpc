# E
# 貪欲法
# ダブリング

MAX_K = 18
N, M, Q = gets.split.map(&:to_i)

# dp[i][j]: j日目以降から参加し始めて、2^i個のイベントに参加したときの、最も早い終了日
dp = Array.new(MAX_K + 1) { [N] * N }

M.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  # 同じ開始日の場合は最も早く終わるものを記録する
  dp[0][a] = b if b < dp[0][a]
end

# dp[0]を後ろから更新する (i日目から参加できる一番早く終わるイベント)
(N - 1).downto(1) do |i|
  dp[0][i - 1] = [dp[0][i - 1], dp[0][i]].min
end

# ダブリングのテーブルを構築
MAX_K.times do |i|
  (N - 1).times do |j|
    # 終了日の翌日が次の開始日
    nj = dp[i][j] + 1
    next if nj >= N
    dp[i + 1][j] = dp[i][nj]
  end
end

Q.times do
  l, r = gets.split.map(&:to_i).map(&:pred)
  cnt = 0
  curr = l
  MAX_K.downto(0) do |i|
    break if curr >= N
    next if dp[i][curr] > r
    # 2^i 個のイベントに参加
    cnt += 1 << i
    # 終了日の翌日を次の開始日とする
    curr = dp[i][curr] + 1
  end
  puts cnt
end
