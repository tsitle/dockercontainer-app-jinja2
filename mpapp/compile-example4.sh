#!/bin/bash

LVAR_TEMPL_INP_FN="example4/person.xml"
LVAR_DATA_INP_FN="example4/data.env"
LVAR_DATA_FMT="env"
LVAR_OUTP_FN="example4-output-person.xml"

export age=31

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}] and env var 'age') to '${LVAR_OUTP_FN}'..."
j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} ${LVAR_DATA_INP_FN} || exit 1

echo "Done."
