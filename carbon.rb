require "formula"

class Carbon < Formula
  homepage "https://github.com/benoist/carbon-crystal"
  head "https://github.com/benoist/carbon-crystal.git"
  url "https://github.com/benoist/carbon-crystal/archive/v0.1.0.tar.gz"
  sha256 "2a4395881499cb260791fae42f95dd45ec351bbca4f1d99f3f1dc76cd54ceb16"

  depends_on "crystal-lang" => :build

  def install
    system "crystal", "build", "-o", "bin/carbon", "src/command.cr", "--release"
    bin.install "bin/carbon"
  end
end