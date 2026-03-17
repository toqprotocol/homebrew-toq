class ToqAT010Alpha1 < Formula
  desc "Secure agent-to-agent communication protocol"
  homepage "https://toq.dev"
  license "Apache-2.0"
  version "0.1.0-alpha.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "34068b6fc151d6236fac2ab3c306e7262c792bda5d04785d5fb10aa79e47a941"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b15f7364960de4530655780423533808d755bbffd10d3b43b8eaf67ae64a3f4f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c8998e89f098f9e402f3333a1a716c7389228fa11de456662825b4ad5a3c917"
    else
      url "https://github.com/toqprotocol/toq/releases/download/v#{version}/toq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "98c1d4c8d10687c9ab55725e44941cf03abe963b5f34790a55404941e6ae5069"
    end
  end

  def install
    bin.install "toq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toq --version")
  end
end
