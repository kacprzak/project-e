#include <algorithm>
#include <iostream>
#include <vector>

template <typename T>
bool next_permutation(std::vector<T> &array) {
  // Find non-increasing suffix
  if (array.size() == 0)
    return false;
  auto i = array.end() - 1;
  while (i > array.begin() && *(i - 1) >= *i)
    --i;
  if (i == array.begin())
    return false;

  // Find successor to pivot
  auto j = array.end() - 1;
  while (*j <= *(i - 1))
    --j;
  std::iter_swap(i - 1, j);

  // Reverse suffix
  std::reverse(i, array.end());
  return true;
}

int main() {
  std::vector<int> data = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  for (int i = 1; i < 1000000; ++i)
    next_permutation(data);

  for (auto x : data)
    std::cout << x;
  std::cout << '\n';
}
