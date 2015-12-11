GLUON_SITE_PACKAGES := \
        gluon-mesh-batman-adv-15 \
        gluon-alfred \
        gluon-announced \
        gluon-autoupdater \
        gluon-setup-mode \
        gluon-config-mode-core \
        gluon-config-mode-autoupdater \
        gluon-config-mode-hostname \
        gluon-config-mode-mesh-vpn \
        gluon-config-mode-geo-location \
        gluon-config-mode-contact-info \
        gluon-ebtables-filter-multicast \
        gluon-ebtables-filter-ra-dhcp \
        gluon-luci-admin \
        gluon-luci-autoupdater \
        gluon-luci-mesh-vpn-fastd \
        gluon-luci-portconfig \
        gluon-luci-private-wifi \
        gluon-luci-wifi-config \
        gluon-next-node \
        gluon-mesh-vpn-fastd \
        gluon-radvd \
        gluon-status-page \
        iwinfo \
        iptables \
        haveged

# USB, FAT32 and common NIC support for target X86-generic
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
    kmod-usb-core \
    kmod-usb2 \
    kmod-usb-hid \
    kmod-usb-net \
    kmod-usb-net-asix \
    kmod-usb-net-dm9601-ether \
    block-mount \
    kmod-fs-ext4 \
    kmod-fs-vfat \
    kmod-usb-storage  \
    kmod-usb-storage-extras  \
    blkid  \
    swap-utils  \
    kmod-nls-cp1250  \
    kmod-nls-cp1251  \
    kmod-nls-cp437  \
    kmod-nls-cp775  \
    kmod-nls-cp850  \
    kmod-nls-cp852  \
    kmod-nls-cp866  \
    kmod-nls-iso8859-1  \
    kmod-nls-iso8859-13  \
    kmod-nls-iso8859-15  \
    kmod-nls-iso8859-2  \
    kmod-nls-koi8r  \
    kmod-nls-utf8
endif

# USB support for some 8MB models

#ar71xx-generic
GLUON_TLWR842_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_TLWR1043_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_TLWR2543_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_TLWDR4300_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_WNDR3700_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_WRT160NL_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_DIR825B1_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_GLINET_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_WZRHPG450H_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_WZRHPAG300H_SITE_PACKAGES := kmod-usb-core kmod-usb2
GLUON_ARCHERC7_SITE_PACKAGES := kmod-usb-core kmod-usb2

#mpc85xx-generic
GLUON_TLWDR4900_SITE_PACKAGES := mod-usb-core kmod-usb2

DEFAULT_GLUON_RELEASE := exp$(shell date '+%y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= experimental
export GLUON_BRANCH

GLUON_LANGS ?= en de
