class MongodbBin < Formula
  desc "High-performance, schema-free, document-oriented database"
  homepage "https://www.mongodb.com/"
  url "https://fastdl.mongodb.org/osx/mongodb-osx-ssl-x86_64-4.0.5.tgz"
  sha256 "3a7c5a60ab3b5d0614d44e64c02f3550ca1f639da1b618d2b566a0224108f67d"

  bottle :unneeded

  def install
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/mongod", "--sysinfo"
  end
end
