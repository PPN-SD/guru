# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit cmake xdg-utils

DESCRIPTION="Qt plug-in to allow Qt and KDE based applications to read/write AVIF images."
HOMEPAGE="https://github.com/novomesk/qt-avif-image-plugin"

if [[ "${PV}" == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/novomesk/qt-avif-image-plugin.git"
else
	SRC_URI="https://github.com/novomesk/qt-avif-image-plugin/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS=""
fi

LICENSE="BSD-2"
SLOT="0"
IUSE=""

DEPEND=">=dev-qt/qtgui-5.12.3:5
	>=media-libs/libavif-0.8.0
"

BDEPEND=">=kde-frameworks/extra-cmake-modules-5.70:5"

RDEPEND="${DEPEND}"

src_install() {
	cmake_src_install

	insinto /usr/share/mime/packages/
	doins share/mime/packages/avif.xml
	doins share/mime/packages/avifs.xml
}

pkg_postinst() {
	xdg_mimeinfo_database_update
}
