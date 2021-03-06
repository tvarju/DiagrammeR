% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_prism.R
\name{add_prism}
\alias{add_prism}
\title{Add a prism of nodes to the graph}
\usage{
add_prism(graph, n, type = NULL, label = TRUE, rel = NULL,
  node_aes = NULL, edge_aes = NULL, node_data = NULL,
  edge_data = NULL)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}

\item{n}{the number of nodes describing the shape
of the prism. For example, the triagonal prism has
\code{n} equal to 3 and it is composed of 6 nodes
and 9 edges. For any n-gonal prism, the graph will
be generated with 2\code{n} nodes and 3\code{n}
edges.}

\item{type}{an optional string that describes the
entity type for the nodes to be added.}

\item{label}{either a vector object of length
\code{n} that provides optional labels for the new
nodes, or, a boolean value where setting to
\code{TRUE} ascribes node IDs to the label and
\code{FALSE} yields a blank label.}

\item{rel}{an optional string for providing a
relationship label to all new edges created in the
node prism.}

\item{node_aes}{an optional list of named vectors
comprising node aesthetic attributes. The helper
function \code{node_aes()} is strongly recommended
for use here as it contains arguments for each
of the accepted node aesthetic attributes (e.g.,
\code{shape}, \code{style}, \code{color},
\code{fillcolor}).}

\item{edge_aes}{an optional list of named vectors
comprising edge aesthetic attributes. The helper
function \code{edge_aes()} is strongly recommended
for use here as it contains arguments for each
of the accepted edge aesthetic attributes (e.g.,
\code{shape}, \code{style}, \code{penwidth},
\code{color}).}

\item{node_data}{an optional list of named vectors
comprising node data attributes. The helper
function \code{node_data()} is strongly recommended
for use here as it helps bind data specifically
to the created nodes.}

\item{edge_data}{an optional list of named vectors
comprising edge data attributes. The helper
function \code{edge_data()} is strongly recommended
for use here as it helps bind data specifically
to the created edges.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
With a graph object of class
\code{dgr_graph}, add a node prism to the graph.
}
\examples{
# Create a new graph and
# add 2 prisms
graph <-
  create_graph() \%>\%
  add_prism(
    n = 3,
    type = "prism",
    label = "a") \%>\%
  add_prism(
    n = 3,
    type = "prism",
    label = "b")

# Get node information from this graph
graph \%>\%
  get_node_info()

# Node and edge aesthetic and data
# attributes can be specified in
# the `node_aes`, `edge_aes`,
# `node_data`, and `edge_data`
# arguments

set.seed(23)

graph_w_attrs <-
  create_graph() \%>\%
  add_prism(
    n = 3,
    label = c(
      "one", "two",
      "three", "four",
      "five", "six"),
    type = c(
      "a", "a",
      "b", "b",
      "c", "c"),
    rel = "A",
    node_aes = node_aes(
      fillcolor = "steelblue"),
    edge_aes = edge_aes(
      color = "red",
      penwidth = 1.2),
    node_data = node_data(
      value = c(
        1.6, 2.8, 3.4,
        3.2, 5.3, 6.2)),
    edge_data = edge_data(
      value =
        rnorm(
          n = 9,
          mean = 5.0,
          sd = 1.0)))

# Get the graph's node data frame
graph_w_attrs \%>\%
  get_node_df()

# Get the graph's edge data frame
graph_w_attrs \%>\%
  get_edge_df()
}
