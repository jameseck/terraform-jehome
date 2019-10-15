libvirt_host  = "192.168.0.35"
edgerouter_ip = "192.168.0.209"

static_hosts_map = {
  "pi.iot.je.home" = {
    ip           = "192.168.4.10",
    mac          = "b8:27:eb:e7:08:f5",
    network_name = "IOT",
    subnet       = "192.168.4.0/24",
  },
  "ps3.iot.je.home" = {
    ip           = "192.168.4.11",
    mac          = "fc:0f:e6:62:e9:c9",
    network_name = "IOT",
    subnet       = "192.168.4.0/24",
  },
  "emby.je.home" = {
    ip           = "192.168.0.21",
    mac          = "52:54:00:3e:d1:da",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "k8sdev.je.home" = {
    ip           = "192.168.0.9",
    mac          = "52:54:00:72:9A:D9",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "k8stesting.je.home" = {
    ip           = "192.168.0.12",
    mac          = "52:54:00:92:be:6f",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "k8s.je.home" = {
    ip           = "192.168.0.6",
    mac          = "52:54:00:D4:9A:2E",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "laptopw.je.home" = {
    ip           = "192.168.0.30",
    mac          = "b4:6b:fc:f5:11:3f",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "laptop.je.home" = {
    ip           = "192.168.0.31",
    mac          = "00:e0:4c:68:07:67",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "openshift.je.home" = {
    ip           = "192.168.0.5",
    mac          = "52:54:00:c0:7a:01",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "oswg.je.home" = {
    ip           = "192.168.0.8",
    mac          = "52:54:00:2a:01:3f",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "os.je.home" = {
    ip           = "192.168.0.7",
    mac          = "52:54:00:B1:12:CE",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "pi2.je.home" = {
    ip           = "192.168.0.11",
    mac          = "b8:27:eb:81:65:2e",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "pi4.je.home" = {
    ip           = "192.168.0.14",
    mac          = "dc:a6:32:0c:56:02",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "pi.je.home" = {
    ip           = "192.168.0.10",
    mac          = "b8:27:eb:b2:5d:a0",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "picam.je.home" = {
    ip           = "192.168.0.41",
    mac          = "b8:27:eb:d8:e1:45",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "plex.je.home" = {
    ip           = "192.168.0.20",
    mac          = "52:54:00:92:be:6c",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "proxy.je.home" = {
    ip           = "192.168.0.4",
    mac          = "52:54:00:23:55:3d",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "tplinksw.je.home" = {
    ip           = "192.168.0.249",
    mac          = "f0:9f:c2:61:85:84",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "tpswitch.je.home" = {
    ip           = "192.168.0.249",
    mac          = "E8:DE:27:41:AF:BF",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "unifiap.je.home" = {
    ip           = "192.168.0.2",
    mac          = "f0:9f:c2:f3:ca:2f",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
  "wgproxy.je.home" = {
    ip           = "192.168.0.49",
    mac          = "52:54:00:de:8e:97",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
  },
}

kvm_hosts_map = {
  "k8stesting.je.home" = {
    ip           = "192.168.0.12",
    mac          = "52:54:00:92:be:6f",
    network_name = "WIRED",
    subnet       = "192.168.0.0/24",
    pool         = "default",
    size         = 17179869184,
    memory       = 16384,
    cpu          = 4,
  },
}


#WIRED subnet 192.168.0.0/24 static-mapping emby.je.home ip-address 192.168.0.21
#WIRED subnet 192.168.0.0/24 static-mapping emby.je.home mac-address '52:54:00:3e:d1:da'
#WIRED subnet 192.168.0.0/24 static-mapping k8sdev.je.home ip-address 192.168.0.9
#WIRED subnet 192.168.0.0/24 static-mapping k8sdev.je.home mac-address '52:54:00:72:9A:D9'
#WIRED subnet 192.168.0.0/24 static-mapping k8stesting.je.home ip-address 192.168.0.12
#WIRED subnet 192.168.0.0/24 static-mapping k8stesting.je.home mac-address '52:54:00:92:be:6f'
#WIRED subnet 192.168.0.0/24 static-mapping k8s.je.home ip-address 192.168.0.6
#WIRED subnet 192.168.0.0/24 static-mapping k8s.je.home mac-address '52:54:00:D4:9A:2E'
#WIRED subnet 192.168.0.0/24 static-mapping laptopw.je.home ip-address 192.168.0.30
#WIRED subnet 192.168.0.0/24 static-mapping laptopw.je.home mac-address 'b4:6b:fc:f5:11:3f'
#WIRED subnet 192.168.0.0/24 static-mapping laptop.je.home ip-address 192.168.0.31
#WIRED subnet 192.168.0.0/24 static-mapping laptop.je.home mac-address '00:e0:4c:68:07:67'
#WIRED subnet 192.168.0.0/24 static-mapping openshift.je.home ip-address 192.168.0.5
#WIRED subnet 192.168.0.0/24 static-mapping openshift.je.home mac-address '52:54:00:c0:7a:01'
#WIRED subnet 192.168.0.0/24 static-mapping oswg.je.home ip-address 192.168.0.8
#WIRED subnet 192.168.0.0/24 static-mapping oswg.je.home mac-address '52:54:00:2a:01:3f'
#WIRED subnet 192.168.0.0/24 static-mapping os.je.home ip-address 192.168.0.7
#WIRED subnet 192.168.0.0/24 static-mapping os.je.home mac-address '52:54:00:B1:12:CE'
#WIRED subnet 192.168.0.0/24 static-mapping pi2.je.home ip-address 192.168.0.11
#WIRED subnet 192.168.0.0/24 static-mapping pi2.je.home mac-address 'b8:27:eb:81:65:2e'
#WIRED subnet 192.168.0.0/24 static-mapping pi4.je.home ip-address 192.168.0.14
#WIRED subnet 192.168.0.0/24 static-mapping pi4.je.home mac-address 'dc:a6:32:0c:56:02'
#WIRED subnet 192.168.0.0/24 static-mapping pi.je.home ip-address 192.168.0.10
#WIRED subnet 192.168.0.0/24 static-mapping pi.je.home mac-address 'b8:27:eb:b2:5d:a0'
#WIRED subnet 192.168.0.0/24 static-mapping plex.je.home ip-address 192.168.0.20
#WIRED subnet 192.168.0.0/24 static-mapping plex.je.home mac-address '52:54:00:92:be:6c'
#WIRED subnet 192.168.0.0/24 static-mapping proxy.je.home ip-address 192.168.0.4
#WIRED subnet 192.168.0.0/24 static-mapping proxy.je.home mac-address '52:54:00:23:55:3d'
#WIRED subnet 192.168.0.0/24 static-mapping tplinksw.je.home ip-address 192.168.0.249
#WIRED subnet 192.168.0.0/24 static-mapping tplinksw.je.home mac-address 'f0:9f:c2:61:85:84'
#WIRED subnet 192.168.0.0/24 static-mapping tpswitch.je.home ip-address 192.168.0.249
#WIRED subnet 192.168.0.0/24 static-mapping tpswitch.je.home mac-address 'E8:DE:27:41:AF:BF'
#WIRED subnet 192.168.0.0/24 static-mapping unifiap.je.home ip-address 192.168.0.2
#WIRED subnet 192.168.0.0/24 static-mapping unifiap.je.home mac-address 'f0:9f:c2:f3:ca:2f'
#WIRED subnet 192.168.0.0/24 static-mapping wgproxy.je.home ip-address 192.168.0.49
#WIRED subnet 192.168.0.0/24 static-mapping wgproxy.je.home mac-address '52:54:00:de:8e:97'


#IOT subnet 192.168.4.0/24 static-mapping pi.iot.je.home ip-address 192.168.4.10
#IOT subnet 192.168.4.0/24 static-mapping pi.iot.je.home mac-address 'b8:27:eb:e7:08:f5'
#IOT subnet 192.168.4.0/24 static-mapping ps3.iot.je.home ip-address 192.168.4.11
#IOT subnet 192.168.4.0/24 static-mapping ps3.iot.je.home mac-address 'fc:0f:e6:62:e9:c9'

