class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.19.1"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.19.1/kite-1.19.1-macos-x64.tar.gz"
    sha256 "BD9CA6A72ABA777E8A06ED7B30BD5B6346A8A51DA11AB4BACA397E91E7182362"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.19.1/kite-1.19.1-linux-x64.tar.gz"
    sha256 "EE0CC5165489C1732305659395FCE54FC2B88CDB3A1787D1BF59913A4ADE9A29"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.19.1", output
  end
end
