#!/bin/bash

sub_path=/home/mouginot/HTC_sub/mure_mox/
template_bash=${sub_path}mure_mox.bash_template
built_bash=${sub_path}mure_mox.bash

sed "s/MOX_PARAMETER/$@/" ${template_bash} > ${built_bash}

bin=/home/mouginot/HTC_sub/mure_mox/mure_mox.sub

condor_submit ${bin} -queue 1

rm ${built_bash}
