mult3interval n1 n2 n3 | (n1 < n2) && (mod n1 n3 == 0) = mult3interval (n1 + 1) n2 n3 ++ [n1]
                       | (n1 < n2) && (mod n1 n3 /= 0) = mult3interval (n1 + 1) n2 n3 ++ []
                       | (n1 == n2) && (mod n1 n3 == 0) = [n1]
                       | (n1 == n2) && (mod n1 n3 /= 0) = []
                       | n1 > n2 = []
