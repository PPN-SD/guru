# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	ansi_term@0.12.1
	anstream@0.6.4
	anstyle@1.0.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	assert_cmd@2.0.12
	atty@0.2.11
	autocfg@1.1.0
	bstr@1.8.0
	ci_info@0.10.2
	clap@4.4.8
	clap_builder@4.4.8
	clap_lex@0.6.0
	colorchoice@1.0.0
	difflib@0.4.0
	doc-comment@0.3.3
	either@1.9.0
	envmnt@0.8.4
	fsio@0.1.3
	getopts@0.2.21
	hashbrown@0.12.3
	indexmap@1.9.3
	itertools@0.11.0
	libc@0.2.47
	memchr@2.6.4
	nias@0.5.0
	no_color@0.1.0
	predicates@3.0.4
	predicates-core@1.0.6
	predicates-tree@1.0.9
	proc-macro2@1.0.69
	quote@1.0.33
	redox_syscall@0.1.50
	redox_termios@0.1.1
	regex-automata@0.4.3
	rusty-hook@0.11.2
	serde@1.0.192
	serde_derive@1.0.192
	strsim@0.10.0
	syn@2.0.39
	termion@1.5.1
	termtree@0.4.1
	toml@0.5.11
	unicode-ident@1.0.12
	unicode-width@0.1.5
	utf8parse@0.2.1
	wait-timeout@0.2.0
	winapi@0.3.6
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
"

inherit cargo

DESCRIPTION="Futuristic take on hexdump"
HOMEPAGE="https://github.com/sitkevij/hex"
SRC_URI="https://github.com/sitkevij/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" ${CARGO_CRATE_URIS}"
LICENSE="Apache-2.0 MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/hx"

src_install() {
	cargo_src_install

	dodoc README.md
	doman hx.1
}
