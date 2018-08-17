class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.5.0/osx/pact-2.5.0.tar.gz"
  sha256 "e1b3a5e490174b6c70a7d8632583edb89bbb33b9bcaaf6898c315a8268709778"

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
