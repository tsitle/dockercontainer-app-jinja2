#!/bin/bash

LVAR_TEMPL_INP_FN="example3/person.xml"
LVAR_DATA_INP_FN="example3/data-a.ini"
LVAR_DATA_FMT="ini"
LVAR_OUTP_FN="example3-output-person-a.xml"

export age=31

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}] and env var 'age') to '${LVAR_OUTP_FN}'..."
j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} ${LVAR_DATA_INP_FN} || exit 1

LVAR_DATA_INP_FN="example3/data-b.yaml"
LVAR_DATA_FMT="yaml"
LVAR_OUTP_FN="example3-output-person-b.xml"

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}] and env var 'age') to '${LVAR_OUTP_FN}'..."
j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} ${LVAR_DATA_INP_FN} || exit 1

LVAR_OUTP_FN="example3-output-person-c.xml"

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from piped '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}] and env var 'age') to '${LVAR_OUTP_FN}'..."
j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} - < ${LVAR_DATA_INP_FN} || exit 1

echo "Done."
