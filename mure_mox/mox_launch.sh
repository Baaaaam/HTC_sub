#!/bin/bash

template_bash=mure_mox.bash_template
built_bash=mure_mox.bash

sed "s/MOX_PARAMETER/$@/" ${template_bash} > ${built_bash}
bin=./mure_mox.sub
condor_submit ${bin} -queue 1

