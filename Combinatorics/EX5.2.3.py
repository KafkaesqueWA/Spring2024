from collections import deque
import random

def shortest_path(graph, start, end):
    # Queue for BFS traversal
    queue = deque()
    # Dictionary to store the parent node of each vertex in the shortest path
    parent = {}
    # Set to keep track of visited vertices
    visited = set()

    queue.append(start)
    visited.add(start)
    parent[start] = None

    while queue:
        current_vertex = queue.popleft()
        if current_vertex == end:
            break

        for neighbor in graph[current_vertex]:
            if neighbor not in visited:
                visited.add(neighbor)
                queue.append(neighbor)
                parent[neighbor] = current_vertex

    # Reconstruct the shortest path
    shortest_path = []
    vertex = end
    while vertex is not None:
        shortest_path.append(vertex)
        vertex = parent[vertex]

    shortest_path.reverse()

    return shortest_path if shortest_path[0] == start else []


def shortest_path_from_walk(graph, walk):
    if len(walk) < 2:
        return []

    start_vertex = walk[0]
    end_vertex = walk[-1]

    if start_vertex not in graph or end_vertex not in graph:
        return []

    return shortest_path(graph, start_vertex, end_vertex)

# Example usage:

def generate_walks_with_loops(graph, start_vertex, length):
    def dfs(vertex, current_walk):
        current_walk.append(vertex)
        if len(current_walk) == length:
            walks.append(current_walk.copy())
            current_walk.pop()
            return
        for neighbor in graph[vertex]:
            dfs(neighbor, current_walk)
        current_walk.pop()
    
    walks = []
    dfs(start_vertex, [])
    return walks


def has_no_duplicates(lst):
    return len(lst) == len(set(lst))

def all_lists_have_no_duplicates(list_of_lists):
    for sublist in list_of_lists:
        if not has_no_duplicates(sublist):
            return False
    return True

graph = {
    'A': ['B'],                 #vertex A is connected to vertex B       
    'B': ['A','C','E','F'],     #vertex B is connected to vertex A, C, E, F
    'C': ['B','D'],             #etc
    'D': ['C','E'],
    'E': ['D','B'],
    'F': ['B','G'],
    'G': ['F','H'],
    'H': ['G','I'],
    'I': ['H','J','D'],
    'J': ['I','K'],
    'K': ['J','D'],
    'L': ['I']
}
#print(graph)

start_vertex = 'I'
walkLength = 10

walks = generate_walks_with_loops(graph, start_vertex, walkLength)
#print("Example walks:", walks)

paths = []
for i in walks:
    path = shortest_path_from_walk(graph, i)
    #print("path from walk ", i)
    #print(path)
    paths.append(path)

random_number = random.randint(0,len(walks))

print("Number of walks of length " + str(walkLength) + " which start on " + start_vertex + ":", len(walks))
print("All walks have paths:", all_lists_have_no_duplicates(paths))
print("Example walk and path:")
print("Walk:",walks[random_number])
print("Path:",paths[random_number])
