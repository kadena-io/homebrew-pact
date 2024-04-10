class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "https://github.com/kadena-io/pact/releases/download/v4.11.0/pact-4.11.0-osx.tar.gz"
  sha256 "8d3e194a13593cdf33dcd314cb0ca2452302106bfe238624f8e9761c9a4e1ca2"
  depends_on "z3"
  depends_on "openssl@3"

  on_arm do
    url "https://github.com/kadena-io/pact/releases/download/v4.11.0/pact-4.11.0-aarch64-osx.tar.gz"
    sha256 "4bdd64fe18e20bf1582a5aeea58852635ec2f626cf672e48e00e40a05d3ee3ff"
  end

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
