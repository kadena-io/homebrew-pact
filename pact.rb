class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.7.0/pact-3.7.0-osx.tar.gz"
  sha256 "da2be9c43248ded6cb9a19e3b6fc2733695b9ffd1a9cafd3ce701986d2e30626"

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
