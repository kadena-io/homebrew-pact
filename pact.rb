class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.3.1/pact-4.3.1-osx.tar.gz"
  sha256 "162f7ab4380a58db120a08b70beb770f024ed35ad541e77c022e2c2d98e47578"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
