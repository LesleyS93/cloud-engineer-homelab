#!/bin/bash

find /tmp -type f -mtime +7 -delete

echo "Cleanup completed on $(date)"
