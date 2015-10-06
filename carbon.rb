require "formula"

class Carbon < Formula
  homepage "https://github.com/benoist/carbon-crystal"
  head "https://github.com/benoist/carbon-crystal.git"

  def install
    system "crystal", "build", "-o", "bin/carbon", "src/command.cr"
    prefix.install "bin"
  end
end