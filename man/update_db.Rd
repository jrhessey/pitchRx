% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/update.R
\name{update_db}
\alias{update_db}
\title{Update an existing PITCHf/x database}
\usage{
update_db(connect, end = Sys.Date() - 1, ...)
}
\arguments{
\item{connect}{Either an SQLite or MySQL database connection}

\item{end}{date to stop data collection. The default value of 'yesterday' is recommended to ensure the update performs properly.}

\item{...}{arguments passed onto \link{scrape}}
}
\description{
Data from games played starting the day after the most recent date in the database
are appended to the appropriate tables.
}
\details{
Using this function requires the DBI package
}
\examples{
\dontrun{
 library(dplyr)
 db <- src_sqlite("pitchRx.sqlite3")
 update_db(db$con)
}
}
\seealso{
\url{http://baseballwithr.wordpress.com/2014/04/13/modifying-and-querying-a-pitchfx-database-with-dplyr/}
}

