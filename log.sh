#!/bin/bash
remote_user="sirisha"
remote_host="remote-machine-ip-or-hostname"
remote_directory="C:\Users\devop\ITC\ARM"
local_download_directory="/local/path/to/download/directory"
ssh "$remote_user@$remote_host" << EOF
  cd "$remote_directory"
  find . -name "*log*" -mtime +1 -exec tar -czvf archived_logs.tar.gz {} +
  scp archived_logs.tar.gz "$remote_user@$remote_host:$local_download_directory"
  find . -name "*log*" -mtime +1 -exec rm {} +
  rm archived_logs.tar.gz
EOF
