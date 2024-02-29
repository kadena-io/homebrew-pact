class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.10.0/pact-4.10.0-osx.tar.gz"
  sha256 "0b4f948d6b426e30ecf1fe6f736e935a9f5a45640b76608a6aa8b3db0677a952"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
