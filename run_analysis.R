###############################################################################
#
#   run_analysis.R
#   Author: Eugene Jarder
#
#   For completion of Course Project of Getting and Cleaning Data.
#
#   Usage:
#       run.analysis(<data directory>, <output file>)
#
###############################################################################

require(plyr)       # required to use the ddply function
require(reshape2)   # required to use the melt and dcast functions

# make.analyser()
# Creates an analyser object that will process the accelerometer data
#
# params:
#   directory - the directory that contains the accelerometer data
#
make.analyser <- function(directory)
{    
    subject.label <- 'subject.id'
    activity.label <- 'activity'
    
    # still need to have feature labels to subset the accelerometer data
    #
    feature.labels.path <- file.path(directory, 'features.txt')
    feature.labels <- read.table(feature.labels.path)[,2]
    mean.std.logical <- grepl('(mean|std)', feature.labels)
    
    # the names of the different activities
    #
    activity.labels.path <- file.path(directory, 'activity_labels.txt')    
    activity.labels <- read.table(activity.labels.path, header = FALSE)
    
    # templates for the data filenames
    #
    subject.filebase <- 'subject_%s.txt'
    feature.filebase <- 'X_%s.txt'
    activity.filebase <- 'Y_%s.txt'
    
    # fixed columns for the final data frame
    #
    fixed.columns = c(subject.label, activity.label)

    # load.one.file()
    # Load one data file from the accelerometer data
    #
    # params:
    #   filebase - the template for filename
    #   type - whether it is from the training or the test set
    #   class - the class of the columns to load
    # returns: data frame of the contents of the file
    #
    load.one.file <- function(filebase, type, class = NA)
    {
        filename <- sprintf(filebase, type)
        
        path <- file.path(directory, type, filename)
        
        read.table(path, header = FALSE, colClasses = class)
    }

    # load.activity.data()
    # Loads the activities corresponding to the accelerometer data. Merges with
    # data from activity_labels.txt to get the activity name corresponding to
    # the activity id.
    #
    # params:
    #   type - whether it is from the training or the test set
    # returns: data frame of the activity names
    #
    load.activity.data <- function(type)
    {
        activity.data <- load.one.file(activity.filebase, type)
        
        activity.data <- merge(activity.data, activity.labels, by.X = 'V1', 
                               by.Y = 'V1', all = TRUE)
        
        colnames(activity.data)[2] <- activity.label
        
        activity.data[2]
    }
    
    # load.mean.std.data()
    # Loads the feature data from the file, and filters them to return the mean
    # and std values only.
    #
    # params:
    #   type - whether it is from the training or the test set
    # returns: data frame containing the mean and std features only
    #
    load.mean.std.data <- function(type)
    {
        feature.data <- load.one.file(feature.filebase, type, 'numeric')
        
        colnames(feature.data) <- feature.labels
        
        feature.data <- feature.data[mean.std.logical]
        
        feature.data
    }
    
    # load.one.set()
    # Load one whole set of data. Merges the subject, activity, and feature
    # data into one data frame.
    #
    # params:
    #   type - whether it is from the training or the test set
    # returns: data frame with subject in the first column, activity name
    #   in the second column, and feature data on the rest
    #
    load.one.set <- function(type)
    {
        subject.data <- load.one.file(subject.filebase, type)
        colnames(subject.data) <- subject.label
        
        activity.data <- load.activity.data(type)
        
        mean.std.data <- load.mean.std.data(type)
        
        cbind(cbind(subject.data, activity.data), mean.std.data)
    }
    
    # load.data()
    # Load the data from the data directory. Assumes that the 'test' and
    # 'train' directories are present under it.
    #
    # returns: data frame of the row merged test and training data
    #
    load.data <- function()
    {
        training.data <- load.one.set('train')
        test.data <- load.one.set('test')
        
        rbind(training.data, test.data)
    }
    
    # melt.data()
    # Melt the data, fixing the columns listed in fixed.columns
    #
    # params:
    #   in.data - the data frame containing the data
    # returns: the melted data frame
    #
    melt.data <- function(in.data)
    {
        data.colnames <- colnames(in.data)
        in.data.variable.names <-
            data.colnames[!(data.colnames %in% fixed.columns)]
        
        melt(in.data, id = fixed.columns, 
             measure.vars = in.data.variable.names)    
    }
    
    # main body
    #    
    mean.std.data <- load.data()
    
    mean.std.data <- melt.data(mean.std.data)    
    
    # compute the averages per subject, activity, and variable
    #
    mean.std.data <- ddply(mean.std.data, c(fixed.columns, 'variable'), 
                           summarize, mean = mean(value))

    # reshape back to original columns with summarized, averaged, data
    #
    mean.std.data <- dcast(mean.std.data, list(fixed.columns, 'variable'), 
                           value.var = 'mean')
    # end main body
    
    # expose the output data frame
    #
    list(mean.std.data = mean.std.data)
}

# run.analysis()
# Helper function to simplify usage of the script. Takes a directory that
# contains the data to process, and the output filename. Output file format is
# *.csv
#
# params:
#   data.directory - the directory containing the accelerometer data
#   output.file - the output file where the cleaned data is written
#
#
run.analysis <- function(data.directory, output.file)
{
    analyser <- make.analyser(data.directory)
    
    write.csv(analyser$mean.std.data, output.file)
}