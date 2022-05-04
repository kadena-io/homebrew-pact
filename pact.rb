class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.3/pact-4.3-osx.tar.gz"
  sha256 "55cee8cf6602dd9405555a385ba7ba7872c5a0113940a8dc2d6a6ca0ec61b596"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
