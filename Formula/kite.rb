class Kite < Formula
  desc "A Connect Four solver"
  homepage "https://github.com/tristan852/kite"
  version "1.17.1"

  if OS.mac?
    url "https://github.com/tristan852/kite/releases/download/v1.17.1/kite-1.17.1-macos-x64.tar.gz"
    sha256 "CBD71EBF596EF98C129CE0C7AA60EFD7F7843373D36F077BC4D727445553E4C4"
  elsif OS.linux?
    url "https://github.com/tristan852/kite/releases/download/v1.17.1/kite-1.17.1-linux-x64.tar.gz"
    sha256 "6FECA24B8A5FEACEFDDC6E915B7E5A35A897DB86887409BCE24D6A460E67D002"
  end

  def install
    bin.install "kite"
  end

  test do
    output = shell_output("#{bin}/kite --version")
    assert_match "1.17.1", output
  end
end
