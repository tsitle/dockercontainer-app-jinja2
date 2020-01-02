#!/bin/bash

LVAR_TEMPL_INP_FN="example1/nginx.j2"
LVAR_DATA_INP_FN="example1/nginx.json"
LVAR_DATA_FMT="json"
LVAR_OUTP_FN="example1-output-nginx-a.conf"

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}]) to '${LVAR_OUTP_FN}'..."
j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} ${LVAR_DATA_INP_FN} || exit 1

LVAR_OUTP_FN="example1-output-nginx-b.conf"

echo "Compiling '${LVAR_TEMPL_INP_FN}' (data taken from piped '${LVAR_DATA_INP_FN}' [fmt=${LVAR_DATA_FMT}]) to '${LVAR_OUTP_FN}'..."
cat ${LVAR_DATA_INP_FN} | j2 -f ${LVAR_DATA_FMT} -o ${LVAR_OUTP_FN} ${LVAR_TEMPL_INP_FN} || exit 1

echo "Done."
