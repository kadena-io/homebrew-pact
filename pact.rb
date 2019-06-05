class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://install.kadena.io/pact/builds/3.0/osx/pact-3.0.tar.gz"
  sha256 "daa6ce68e37c73df6bad71daa811c5d2616414c249b790e270ec338d629cb388"

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
