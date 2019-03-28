require 'benchmark/ips'
require_relative "crawler.rb"

Benchmark.ips do |x|
  # Configure the number of seconds used during
  # the warmup phase (default 2) and calculation phase (default 5)
  x.config(time: 10, warmup: 2)

  # Typical mode, runs the block as many times as it can
  x.report("crawler") do
    SubwaySpStatus::Crawler.all
  end

  # Compare the iterations per second of the various reports!
  x.compare!
end
