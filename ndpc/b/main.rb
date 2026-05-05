# B
# トポロジカルソート
# 経路数え上げ

MOD = 998244353

gets.to_i.times do
  n, m = gets.split.map(&:to_i)

  graph = Array.new(n) { [] }
  # in-degree（入次数）
  indeg = [0] * n

  m.times do
    u, v = gets.split.map(&:to_i).map(&:pred)
    graph[u] << v
    indeg[v] += 1
  end

  # トポロジカルソート
  deque = n.times.filter { indeg[it].zero? }

  dp = [0] * n
  dp[0] = 1

  until deque.empty?
    u = deque.shift

    graph[u].each do |v|
      dp[v] += dp[u]
      dp[v] %= MOD

      indeg[v] -= 1
      deque << v if indeg[v].zero?
    end
  end

  puts dp[-1]
end
