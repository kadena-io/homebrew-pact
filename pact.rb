class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.5.1/osx/pact-2.5.1.1.tar.gz"
  sha256 "ddadcfe077f256a886a2418a9a97c1ac352e28dca55057463b8472e0147fec79"

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
