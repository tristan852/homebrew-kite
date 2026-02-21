class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.16.3"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.16.3/kite-1.16.3-macos-x64.tar.gz"
    sha256 "DC7B999DCD1E6B2DD58D4B33B33CDF24F9ECBC9DA8B44756241AF5122F60C125"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.16.3/kite-1.16.3-linux-x64.tar.gz"
    sha256 "F209C0454EF5EA37E04E2AC34A828E34B45B4EE5AA1F39D5DAF45D3278569738"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.16.3", output
  end
end
