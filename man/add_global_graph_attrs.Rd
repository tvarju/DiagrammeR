% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_global_graph_attrs.R
\name{add_global_graph_attrs}
\alias{add_global_graph_attrs}
\title{Add one or more global graph attributes}
\usage{
add_global_graph_attrs(graph, attr, value, attr_type)
}
\arguments{
\item{graph}{a graph object of class \code{dgr_graph}.}

\item{attr}{the name of the attribute to set for the \code{type} of global
attribute specified.}

\item{value}{the value to be set for the chosen attribute specified in the
\code{attr_for_type} argument.}

\item{attr_type}{the specific type of global graph attribute to set. The type
is specified with \code{graph}, \code{node}, or \code{edge}.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
Add global attributes of a specific type (either \code{graph_attrs},
  \code{node_attrs}, or \code{edge_attrs} for a graph object of class
  \code{dgr_graph}).
}
\examples{
# Create a new graph with no
# global graph attributes and
# add a global graph attribute
graph <-
  create_graph(
    attr_theme = NULL) \%>\%
  add_global_graph_attrs(
    attr = "overlap",
    value = "true",
    attr_type = "graph")

# Verify that the attribute
# addition has been made
graph \%>\%
  get_global_graph_attr_info()

# Add another attribute with
# `add_global_graph_attrs()`
graph <-
  graph \%>\%
  add_global_graph_attrs(
    attr = "penwidth",
    value = 12,
    attr_type = "node")

# Verify that the attribute
# addition has been made
graph \%>\%
  get_global_graph_attr_info()

# When adding an attribute where
# `attr` and `attr_type` already
# exists, the value provided will
# serve as an update
graph \%>\%
  add_global_graph_attrs(
    attr = "penwidth",
    value = 15,
    attr_type = "node") \%>\%
  get_global_graph_attr_info()
}
