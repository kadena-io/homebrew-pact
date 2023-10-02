class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.9.0/pact-4.9.0-osx.tar.gz"
  sha256 "2999417fcef527cb89fc3bbbacfe6e0c23f39b2b106f77d2d369a9b783096574"
  depends_on "kadena-io/pact/z3"

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
