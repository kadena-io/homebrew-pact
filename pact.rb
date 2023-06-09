class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.7.1/pact-4.7.1-osx.tar.gz"
  sha256 "612b8b7133ae53def442b67239e3d192c9a9f081a8339a3eae80c2aa5ae71287"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
