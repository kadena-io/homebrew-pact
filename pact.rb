class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://install.kadena.io/pact/builds/3.0.1/osx/pact-3.0.1.tar.gz"
  sha256 "961ef97173927cf7895bd8d70dbe9d658a3a00581a5dd4183317425697e3cc5c"

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
