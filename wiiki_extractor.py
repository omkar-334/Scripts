import multiprocessing
import sys

from wikiextractor.WikiExtractor import main

# Force the 'spawn' method for Windows
multiprocessing.set_start_method("spawn", force=True)

# Manually set the arguments that would normally come from the command line
sys.argv = [
    "wikiextractor",  # Script name
    "C:\\Users\\omkar\\Downloads\\tewiki-latest-pages-articles-multistream.xml",  # Input file path
    "--json",  # Desired output format
]

# Run the main function with the arguments
main()
