Gem::Specification.new do |s|
  s.name        = 'mutate'
  s.version     = '1.0.0'
  s.date        = '2014-07-03'
  s.summary     = "Allows any object use methods similar to Enumerable, but for scalar transformation rather than vector."
  s.description = "Adds Object#mutate (similar to Enumerable#map), Object#keep (Enumerable#select), Object#toss (Enumerable#reject), Object#impart (Enumerable#inject). Object#tap already exists for Enumerable#each (for side effects)."
  s.authors     = ["James Lawrence Turner"]
  s.email       = 'james@urx.com'
  s.files       = ["lib/mutate.rb"]
  s.homepage    = 'http://github.com/jlturner/mutate'
  s.license     = 'MIT'
end