# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TelegramMcp < Formula
  desc "Telegram MCP server for AI assistants"
  homepage "https://github.com/chaindead/telegram-mcp"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.17/telegram-mcp_Darwin_x86_64.tar.gz"
      sha256 "590ee5e03380dbdd5b75b20b5829cd7041d607afbdccc4bbf2bc00f0f50938c8"

      def install
        bin.install "telegram-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.17/telegram-mcp_Darwin_arm64.tar.gz"
      sha256 "90484e0af485f5f2ef1a59eb470cefed3464d96e7a0d2fd61425ac6a3bc92182"

      def install
        bin.install "telegram-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.17/telegram-mcp_Linux_x86_64.tar.gz"
        sha256 "7c65ef5754b1fa88ea5c37d826e6ae3995ee5991d31831c062111dafab1bcde2"

        def install
          bin.install "telegram-mcp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.17/telegram-mcp_Linux_arm64.tar.gz"
        sha256 "505786b410732ad2278723eb10c449d6c2661c2649e19ab86b5fbe0e2ea1bfe7"

        def install
          bin.install "telegram-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/telegram-mcp", "--version"
  end
end
