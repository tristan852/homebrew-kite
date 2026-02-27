class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.19.2"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.19.2/kite-1.19.2-macos-x64.tar.gz"
    sha256 "D98FB7265B586C18EC5CC040F5F4F10EF425E73E801013AF23D8687E7A062799"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.19.2/kite-1.19.2-linux-x64.tar.gz"
    sha256 "9A5FD48FD589AD2C471CB7A827A4EDDECAB8D3BF2351FF07CD3F7E6EEA6C9AED"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.19.2", output
  end
end
