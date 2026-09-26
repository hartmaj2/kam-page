cat $1 | ssh hartmaj@kam.mff.cuni.cz "cat > combine_me.pdf"
ssh hartmaj@kam.mff.cuni.cz "gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=print_me.pdf -dBATCH combine_me.pdf combine_me.pdf"
ssh hartmaj@kam.mff.cuni.cz "lp -d $2 -o number-up=2 -o fit-to-page -n $3 print_me.pdf"

# HOW TO USE:
# sh cvika_print.sh <path_to_pdf.pdf> <printer_name> <num_of_pages>