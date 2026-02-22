class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.18.1"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.18.1/kite-1.18.1-macos-x64.tar.gz"
    sha256 "B6618474AD1BD162E59D89F0C08F921839269E1A47BACC02C4F092ABC89EE763"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.18.1/kite-1.18.1-linux-x64.tar.gz"
    sha256 "33CD6060A4C558E84C5577544A568960A5DF8ED71530A64D5A9DD836C7C8C11B"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.18.1", output
  end
end
