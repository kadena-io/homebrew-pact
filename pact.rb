class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.8.0/pact-4.8.0-osx.tar.gz"
  sha256 "bbe08a28487af96c27d0c59d4f5ebfac766e74f2cd424dba5d3659eb8d8b98a8"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
