class Tigrex < Formula
    include Language::Python::Virtualenv

    desc "A Magic the Gathering CLI Tool"
    homepage "https://github.com/ericjaychi/tigrex"
    url "https://github.com/ericjaychi/tigrex/archive/v1.2.0.tar.gz"
    sha256 "4fa2bc917f169097d1a058dea02b5947e7ee58ac80f146c6ee7deaaf8de81800"
    version "1.2.0"

    resource "fire" do
        url "https://files.pythonhosted.org/packages/d9/69/faeaae8687f4de0f5973694d02e9d6c3eb827636a009157352d98de1129e/fire-0.2.1.tar.gz"
        sha256 "6865fefc6981a713d2ce56a2a2c92c56c729269f74a6cddd6f4b94d16ae084c9"
    end

    resource "requests" do
        url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz"
        sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
    end

    depends_on "python"

    def install
        virtualenv_install_with_resources
    end
end
