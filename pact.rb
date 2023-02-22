class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.6.0/pact-4.6.0-osx.tar.gz"
  sha256 "1a59fa703aa6a83286794bae8c699d57be7100491c6b2bddb5a2f5ce62a5a335"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
