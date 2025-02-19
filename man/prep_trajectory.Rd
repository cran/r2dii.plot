% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prep_trajectory.R
\name{prep_trajectory}
\alias{prep_trajectory}
\title{Prepare data for a trajectory plot}
\usage{
prep_trajectory(
  data,
  convert_label = identity,
  span_5yr = FALSE,
  value_col = "percentage_of_initial_production_by_scope"
)
}
\arguments{
\item{data}{A data frame. Requirements:
\itemize{
\item The structure must be like \link{market_share}.
\item The following columns must have a single value: \code{sector}, \code{technology},
\code{region}, \code{scenario_source}.
\item (Optional) If present, the column \code{label} is used for data labels.
}}

\item{convert_label}{A symbol. The unquoted name of a function to apply to
y-axis labels. For example:
\itemize{
\item To convert labels to uppercase use \code{convert_label = toupper}.
\item To get the default behavior of \code{qplot_trajectory()} use
\code{convert_label = recode_metric_trajectory}.
}}

\item{span_5yr}{Logical. Use \code{TRUE} to restrict the time span to 5 years from
the start year (the default behavior of \code{qplot_trajectory()}), or use
\code{FALSE} to impose no restriction.}

\item{value_col}{Character. Name of the column to be used as a value to be
plotted.}
}
\value{
A data-frame ready to be plotted using \code{plot_trajectory()}.
}
\description{
Prepare data for a trajectory plot
}
\examples{
# `data` must meet documented "Requirements"
data <- subset(
  market_share,
  sector == "power" &
    technology == "renewablescap" &
    region == "global" &
    scenario_source == "demo_2020"
)

prep_trajectory(data)
}
\seealso{
\link{market_share}.
}
