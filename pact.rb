class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.1/pact-4.1-osx.tar.gz"
  sha256 "432e5d45c8634e65eefc94021ff2f3c4bfca7fffd76f1e23146e2a66582182f2"

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
