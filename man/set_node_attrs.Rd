% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_node_attrs.R
\name{set_node_attrs}
\alias{set_node_attrs}
\title{Set node attribute values}
\usage{
set_node_attrs(graph, node_attr, values, nodes = NULL)
}
\arguments{
\item{graph}{a graph object of
class \code{dgr_graph}.}

\item{node_attr}{the name of the
attribute to set.}

\item{values}{the values to be
set for the chosen attribute for
the chosen nodes.}

\item{nodes}{an optional vector
of node IDs for filtering the list
of nodes present in the graph.}
}
\value{
a graph object of class
\code{dgr_graph}.
}
\description{
From a graph object of
class \code{dgr_graph}, set node
attribute values for one or more
nodes.
}
\examples{
# Create a node data frame (ndf)
ndf <-
  create_node_df(
    n = 4,
    type = "basic",
    label = TRUE,
    value = c(3.5, 2.6, 9.4, 2.7))

# Create an edge data frame (edf)
edf <-
  create_edge_df(
    from = c(1, 2, 3),
    to = c(4, 3, 1),
    rel = "leading_to")

# Create a graph
graph <-
  create_graph(
    nodes_df = ndf,
    edges_df = edf)

# Set attribute `color = "green"` for
# nodes `1` and `3` using the graph object
graph <-
  graph \%>\%
  set_node_attrs(
    node_attr = color,
    values = "green",
    nodes = c(1, 3))

# View the graph's node data frame
graph \%>\%
  get_node_df()

# Set attribute `color = "blue"` for
# all nodes in the graph
graph <-
  graph \%>\%
  set_node_attrs(
    node_attr = color,
    values = "blue")

# Display the graph's ndf
graph \%>\%
  get_node_df()
}
