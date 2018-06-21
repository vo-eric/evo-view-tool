
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "evo_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "evo_view_tool"
  spec.version       = EvoViewTool::VERSION
  spec.authors       = ["Eric Vo"]
  spec.email         = ["vo.eric@gmail.com"]

  spec.summary       = %q{Basic view selection for personal projects}
  spec.description   = %q{Provides HTML data}
  spec.homepage      = "https://github.com/vo-eric"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
