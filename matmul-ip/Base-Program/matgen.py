import numpy as np
MATRIX_SIZE = 128
print(f"--- Generating {MATRIX_SIZE}x{MATRIX_SIZE} Matrices ---")
matrix_a = np.random.randint(0, 10, size=(MATRIX_SIZE, MATRIX_SIZE), dtype=np.int32)
matrix_b = np.random.randint(0, 10, size=(MATRIX_SIZE, MATRIX_SIZE), dtype=np.int32)
np.save('matrix_a.npy', matrix_a)
np.save('matrix_b.npy', matrix_b)
print("Matrix A saved to matrix_a.npy")
print("Matrix B saved to matrix_b.npy")
