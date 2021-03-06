% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_cmty_l_eigenvec.R
\name{get_cmty_l_eigenvec}
\alias{get_cmty_l_eigenvec}
\title{Get community membership by leading eigenvector}
\usage{
get_cmty_l_eigenvec(graph)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph}.}
}
\value{
a data frame with group membership
assignments for each of the nodes.
}
\description{
Through the calculation of the leading
non-negative eigenvector of the modularity matrix
of the graph, obtain the group membership values for
each of the nodes in the graph.
}
\examples{
# Create a random graph using the
# `add_gnm_graph()` function
graph <-
  create_graph(
    directed = FALSE) \%>\%
  add_gnm_graph(
    n = 10,
    m = 15,
    set_seed = 23)

# Get the group membership
# values for all nodes in the
# graph through calculation of
# the leading non-negative
# eigenvector of the modularity
# matrix of the graph
graph \%>\%
  get_cmty_l_eigenvec()

# Add the group membership
# values to the graph as a node
# attribute
graph <-
  graph \%>\%
  join_node_attrs(
    df = get_cmty_l_eigenvec(.))

# Display the graph's node data frame
graph \%>\%
  get_node_df()
}
