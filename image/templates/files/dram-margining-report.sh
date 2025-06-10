#!/bin/bash
#
# Copyright 2025 Oxide Computer Company
#

set -o errexit
set -o pipefail
set -o xtrace

. /lib/svc/share/smf_include.sh

DMAR_REPORT=/usr/bin/dmar-report

if [[ ! -x $DMAR_REPORT ]]; then
	fatal "Cannot find executable file $DMAR_REPORT"
fi

$DMAR_REPORT

exit $SMF_EXIT_OK
