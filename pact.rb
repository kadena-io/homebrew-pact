class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.0.1/pact-4.0.1-osx.tar.gz"
  sha256 "a356e1db593cf427047f2187b5ecc281fc2f2d4f85290c4b4dd823338b858658"

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
