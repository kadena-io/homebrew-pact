class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact-5"
  version "5.2"

  on_macos do
    depends_on "openssl@3"
    depends_on "mpfr"

    on_arm do
      url "https://github.com/kadena-io/pact-5/releases/download/5.2/pact-5.2-darwin-aarch64.tar.gz"
      sha256 "4dbfdb946350505d14d1e92d8b2cdebe2fcd539fd5501be8a788df6df42a39e7"
    end

    head do
      on_arm do
        url "https://github.com/kadena-io/pact-5/releases/download/nightly/pact-nightly-darwin-aarch64.tar.gz"
      sha256 "89148a37ed807345dc16d75774637f12bc2f40574ad7affb3e3b48485d87e0f9"
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
