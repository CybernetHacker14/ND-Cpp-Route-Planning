#include "route_planner.h"
#include <algorithm>

RoutePlanner::RoutePlanner(RouteModel& model, float start_x, float start_y, float end_x, float end_y) : m_Model(model) {
	// Convert inputs to percentage:
	start_x *= 0.01;
	start_y *= 0.01;
	end_x *= 0.01;
	end_y *= 0.01;

	start_node = &m_Model.FindClosestNode(start_x, start_y);
	end_node = &m_Model.FindClosestNode(end_x, end_y);
}

/// <summary>
/// The ConstructFinalPath method returns the final path found from the A* search.
/// This method takes the current (final) node as an argument and iteratively follows the chain of parents of nodes,
/// until the starting node is found.
/// </summary>
/// <param name="current_node"> : RouteModel::Node* pointing to the final node</param>
/// <returns>The final path which can be rendered using extended io2d library</returns>
std::vector<RouteModel::Node> RoutePlanner::ConstructFinalPath(RouteModel::Node* current_node) {
	// Create path_found vector
	distance = 0.0f;
	std::vector<RouteModel::Node> path_found;

	while (current_node->parent) {
		RouteModel::Node parent = *(current_node->parent);
		path_found.emplace_back(*current_node);
		distance += current_node->distance(parent);
		current_node = current_node->parent;
	}

	path_found.emplace_back(*current_node);
	std::reverse(path_found.begin(), path_found.end());
	distance *= m_Model.MetricScale(); // Multiply the distance by the scale of the map to get meters.
	return path_found;
}

/// <summary>
/// Heuristic function to get the h-value for a node.
/// It uses the RouteModel::Node::distance() method
/// Required by A* search algorithm
/// </summary>
/// <param name="node"> : RouteModel::Node* whose h-value needs to be found</param>
/// <returns>the h-value of the node, in float</returns>
float RoutePlanner::CalculateHValue(RouteModel::Node const* node) {
	return node->distance(*end_node);
}

/// <summary>
/// Populates the neighbors vector of the argument using RouteModel::Node::FindNeighbors() method.
/// Also set's the parent, h_value, g_value and visited attributes for each node in the neighbor.
/// </summary>
/// <param name="current_node"> : RouteModel::Node* whose neighbors need to be computed</param>
void RoutePlanner::AddNeighbors(RouteModel::Node* current_node) {
	current_node->FindNeighbors();

	for (auto node : current_node->neighbors) {
		node->parent = current_node;
		node->g_value = current_node->g_value + current_node->distance(*node);
		node->h_value = CalculateHValue(node);

		open_list.emplace_back(node);

		node->visited = true;
	}
}

/// <summary>
/// Sorts the open_list vector, and returns the node with the lowest cost.
/// </summary>
/// <returns>RouteModel::Node* in the open_list vector with lowest (h_value + g_value)</returns>
RouteModel::Node* RoutePlanner::NextNode() {
	std::sort(open_list.begin(), open_list.end(), Compare);
	auto node = open_list.front();
	open_list.erase(open_list.begin());
	return node;
}

/// <summary>
/// An static comparison function used by std::sort to sort the open_list
/// </summary>
/// <param name="a"> : RouteModel::Node* first node</param>
/// <param name="b"> : RouteModel::Node* second node</param>
/// <returns>true if first node cost is less than second node cost, else false</returns>
bool RoutePlanner::Compare(const RouteModel::Node* a, const RouteModel::Node* b)
{
	return (a->h_value + a->g_value) < (b->h_value + b->g_value);
}

/// <summary>
/// The A* Search algorithm
/// </summary>
void RoutePlanner::AStarSearch() {
	RouteModel::Node* currentNode = start_node;
	start_node->visited = true;
	open_list.emplace_back(start_node);

	while (open_list.size() > 0) {
		AddNeighbors(currentNode);
		currentNode = NextNode();

		if (currentNode->distance(*end_node) == 0) {
			m_Model.path = ConstructFinalPath(currentNode);
			return;
		}
	}
}