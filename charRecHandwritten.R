# defining a function to check if package are installed
is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1]) 

if(!is.installed("tesseract"))
   install.packages("tesseract")

# Load library
library("tesseract")

# Load imagem one and extract characters by OCR with low quality of image
text <- ocr("data/imagemExemplo.png")
cat(text)

# Load second image with hi quality of image
text <- ocr("data/imagemExemplo2.png")
cat(text)
