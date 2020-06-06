class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.6.0/pact-3.6.0-osx.tar.gz"
  sha256 "e17cad13560c9901638b4d8c3e3d9cfc7e78e3fbc3a4dc4c38d4cbb105461a61"

  depends_on "z3"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
