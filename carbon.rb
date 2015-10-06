require "formula"

class Carbon < Formula
  homepage "https://github.com/benoist/carbon-crystal"
  head "https://github.com/benoist/carbon-crystal.git"
  url "https://github.com/benoist/carbon-crystal/archive/v0.1.0.tar.gz"
  sha256 "ab72ca9a6f571330561619d91e3e9a56f0993be8da3b8764efec2014976129cb"

  depends_on "crystal-lang" => :build

  def install
    system "crystal", "build", "-o", "bin/carbon", "src/command.cr", "--release"
    bin.install "bin/carbon"
  end
end