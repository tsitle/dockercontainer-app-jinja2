#!/bin/bash

LVAR_TEMPL_INP_FN="example2/person.xml"
LVAR_OUTP_FN="example2-output-person.xml"

export name=Andrew
export age=31

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from env vars 'name' and 'age') to '${LVAR_OUTP_FN}'..."
j2 -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} || exit 1
echo "Done."
