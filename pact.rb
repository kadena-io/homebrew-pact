class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact-5"
  version "5.3"

  on_macos do
    depends_on "openssl@3"
    depends_on "mpfr"

    on_arm do
      url "https://github.com/kadena-io/pact-5/releases/download/5.3/pact-5.3-darwin-aarch64.tar.gz"
      sha256 "95f99292a02b7d884dfbc97392e0db250e21309728983024115278af8363cd59"
    end

    head do
      on_arm do
        url "https://github.com/kadena-io/pact-5/releases/download/nightly/pact-nightly-darwin-aarch64.tar.gz"
      sha256 "84859cb902ab96c5e096760748fd656c1772c19f649e8cf7c4d65e7be686ba51"
      end
    end

    def install
      if Hardware::CPU.intel?
        odie "Error: Pact 5 is not supported on Intel Macs."
      end

      bin.install "pact"
    end

    def caveats
      <<~EOS
         Pact 5 is only available for ARM-based Macs.
    EOS
    end
    test do
      system "#{bin}/pact", "--version"
    end
  end
end
