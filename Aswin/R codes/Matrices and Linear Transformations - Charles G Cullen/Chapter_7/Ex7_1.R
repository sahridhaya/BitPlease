#page - 226
#section - 7.3 THE CLASSICAL CANONICAL FORM
#example 1

#included package - pbdDMAT

#for hypercompanion function
suppressMessages(library(pbdDMAT, quietly = TRUE))

#hypercompanion
companion(-6,5,1, type = "matrix", bldim = .pbd_env$BLDIM, ICTXT = .pbd_env$ICTXT)


###the standard way to solve this provlem is this but the package used is not available for the new versions