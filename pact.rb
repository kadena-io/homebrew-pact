class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.5.1/osx/pact-2.5.1.tar.gz"
  sha256 "f0734c83ac6440636e6cfefb7d6dbdf052d24e025b1aee9cfc0687dbbf782dca"

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
