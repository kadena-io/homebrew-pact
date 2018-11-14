class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.6.0/osx/pact-2.6.0.tar.gz"
  sha256 "1b1359f535f3605a26a920a02f3efd56701da15473472fe09cd3985b0e111470"

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
