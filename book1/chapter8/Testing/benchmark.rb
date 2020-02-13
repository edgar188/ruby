require 'benchmark'
# puts Benchmark.measure { 10000.times { print "." } }

iterations = 10000000

b = Benchmark.measure do
    for i in 0..iterations do
        x = i
    end
end

c = Benchmark.measure do
    iterations.times do |i|
        x = i
    end
end

puts b
puts c