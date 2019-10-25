class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v3.3.0/pact-3.3.0-osx.tar.gz"
  sha256 "7eaf125767da6762ec4e477aca29cd1fbb6e7834e025b0881fcf9ee565752c69"

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
