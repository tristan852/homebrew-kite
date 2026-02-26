class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.19.0"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.19.0/kite-1.19.0-macos-x64.tar.gz"
    sha256 "6547704C3A2E27D16B0BAFA677449036C7A7A2BC0EF1C995BAA7B0CC518E7198"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.19.0/kite-1.19.0-linux-x64.tar.gz"
    sha256 "881F6B0A601CF5015003740E80D8F4CA1F787933716145BF5715D89039CA0C00"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.19.0", output
  end
end
