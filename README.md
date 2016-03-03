The program requires 'libnss-extrausers' package and the config file 'nsswitch.conf' in order to be able to use /var/lib/extrausers/{passwd,shadow} created by Soul

Needs to be announced by e.g. Avahi
A specific set of services needs to be announced - otherwise Time Machine client will pretend to be connecting to the machine and failing, while in fact not even trying a connection. This is probably a mesure employed by Apple to intentionally prevent interoperation with non-Apple AFP servers. The example of the set of services can be found at https://github.com/experimental-platform/platform-hostname-avahi
