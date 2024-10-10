grep -o -E "CSC510" file* \
| uniq -c \
| grep -v -E "^\s*[012].*:CSC510$" \
| sed -E "s/\s+[0-9]*\s//g" \
| sed -E "s/:(CSC510)$//g" \
| xargs grep -c "sample" \
| sed -E "s/:[0-9]+$//g" \