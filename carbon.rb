require "formula"

class Carbon < Formula
  homepage "https://github.com/benoist/carbon-crystal"
  head "https://github.com/benoist/carbon-crystal.git"

  depends_on "crystal-lang" => :build

  def install
    system "crystal", "build", "-o", "bin/carbon", "src/command.cr", "--release"
    prefix.install "bin"
  end
end