require "set"
require "rbtree"
require "ac-library-rb/dsu"
require "ac-library-rb/segtree"
require "ac-library-rb/priority_queue"
require "ac-library-rb/fenwick_tree"
include AcLibraryRb

# MOD = 998244353
MOD = 10 ** 9 + 7
INF = 1 << 60

def bsearch(ng, ok, &block)
  while (ok - ng).abs > 1
    mid = (ok + ng) / 2
    block[mid] ? ok = mid : ng = mid
  end
  ok
end
