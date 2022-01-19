class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.1.1/pact-4.2.0-osx.tar.gz"
  sha256 "0d41ef837cd7f097106ca04dc9c4067db81dff462dc89a70c7257d34290a39dd"
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
