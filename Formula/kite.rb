class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.18.2"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.18.2/kite-1.18.2-macos-x64.tar.gz"
    sha256 "CA818EFAC775A31A37081CCBCC45AD78752B9158F1901E892BF023A2907C7D79"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.18.2/kite-1.18.2-linux-x64.tar.gz"
    sha256 "84DF5293307B91EEA00C1ACFAC2BF9851EE96BCEFBE87B091A82CEE10220546C"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.18.2", output
  end
end
