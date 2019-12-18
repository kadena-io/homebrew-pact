class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.4.0/pact-3.4.0-osx.tar.gz"
  sha256 "0ccda22e03aed783549f2a32024aec53a354887e9b8f1724ce972a3dfe067dc3"

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
