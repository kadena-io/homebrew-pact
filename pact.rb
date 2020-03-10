class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.5.0/pact-3.5.0-osx.tar.gz"
  sha256 "20ecc0bc5320a626ff6d87eaa77492bb4f35d87c9aa419c511f6009744249f6f"

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
