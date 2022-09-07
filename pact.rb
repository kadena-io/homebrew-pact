class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.4/pact-4.4-osx.tar.gz"
  sha256 "4ec697dcd800aede26adedac0a1c8580e460f5f6a9d71d727ba562f83be5dd07"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
