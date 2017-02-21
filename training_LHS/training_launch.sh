#!/bin/bash

template_bash=training_mlp.bash_template
built_bash=training_mlp.bash

sed "s/XS_PARAMETER/$@/" ${template_bash} > ${built_bash}
bin=./training_mlp.sub
condor_submit ${bin} -queue 1

