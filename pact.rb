class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.11.0/pact-4.11.0-osx.tar.gz"
  sha256 "8d3e194a13593cdf33dcd314cb0ca2452302106bfe238624f8e9761c9a4e1ca2"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
