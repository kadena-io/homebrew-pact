class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.2.1/pact-4.2.1-osx.tar.gz"
  sha256 "9a9110330df68b3dd2b68424b4bb7bed8533b89ee10605de7f8028199f48a4d5"
  depends_on "kadena-io/pact/z3"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
