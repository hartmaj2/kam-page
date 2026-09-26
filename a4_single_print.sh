cat $1 | ssh hartmaj@kam.mff.cuni.cz "cat > print_me.pdf"
ssh hartmaj@kam.mff.cuni.cz "lp -d $2 -o fit-to-page -n $3 print_me.pdf"

# HOW TO USE:
# sh cvika_print.sh <path_to_pdf.pdf> <printer_name> <num_of_pages>