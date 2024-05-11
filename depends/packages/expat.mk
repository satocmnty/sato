package=expat
$(package)_version=2.6.2
$(package)_download_path=https://downloads.sourceforge.net/project/expat/expat/$($(package)_version)
$(package)_file_name=$(package)-$($(package)_version).tar.xz
$(package)_sha256_hash=ee14b4c5d8908b1bec37ad937607eab183d4d9806a08adee472c3c3121d27364

define $(package)_set_vars
$(package)_config_opts=--disable-static --without-docbook
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
