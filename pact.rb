class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.1.1/pact-4.1.1-osx.tar.gz"
  sha256 "fedd8db8715df6b9c18c8fec6bb01a864907367ac980eb5546899f4790478db7"

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
