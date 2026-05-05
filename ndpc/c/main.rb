# C
# 決定性有限オートマトン（DFA）の直積上でのDP

MOD = 998244353

N = gets.to_i
base = "a".ord
S1, S2, S3 = gets.split.map { |s| s.bytes.map { it - base } }

L1 = S1.size
L2 = S2.size
L3 = S3.size

# dp[i][j][k] :
# 長さ n の文字列のうち、
# S1の先頭i文字、S2の先頭j文字、S3の先頭k文字まで部分列としてマッチしているものの個数
dp = Array.new(L1 + 1) { Array.new(L2 + 1) { Array.new(L3 + 1, 0) } }
dp[0][0][0] = 1

N.times do
  # 次の文字を追加したときの状態を保存する配列
  next_dp = Array.new(L1 + 1) { Array.new(L2 + 1) { Array.new(L3 + 1, 0) } }

  L1.times do |i|
    L2.times do |j|
      L3.times do |k|
        val = dp[i][j][k]
        next if val.zero?

        # 'a' から 'z' までの26通りの文字を追加する遷移をシミュレーション
        26.times do |c|
          # 一致していれば次に進み、一致していなければ留まる
          ni = c == S1[i] ? i + 1 : i
          nj = c == S2[j] ? j + 1 : j
          nk = c == S3[k] ? k + 1 : k

          # いずれかの文字列が完全にマッチしてしまったら（部分列として含まれてしまったら）
          # その状態は破棄する（遷移させない）
          if ni < L1 && nj < L2 && nk < L3
            next_dp[ni][nj][nk] = (next_dp[ni][nj][nk] + val) % MOD
          end
        end
      end
    end
  end

  dp = next_dp
end

ans = 0
L1.times do |i|
  L2.times do |j|
    L3.times do |k|
      ans = (ans + dp[i][j][k]) % MOD
    end
  end
end

puts ans
