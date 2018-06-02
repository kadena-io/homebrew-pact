class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.4.0/osx/pact-2.4.0.tar.gz"
  sha256 "2638ee8776597be787e455daf9a767091bdf7e5f4809f1b48935770e7581cbc9"

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
