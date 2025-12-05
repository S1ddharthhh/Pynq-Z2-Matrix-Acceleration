import numpy as np
import time
import os
def multiply_matrices_ps():
    if not os.path.exists('matrix_a.npy') or not os.path.exists('matrix_b.npy'):
        print("❌ Error: Matrix files not found.")
        print("Please run matrix_generator.py first to create them.")
        return None, 0
    print("--- Starting Matrix Multiplication on the PS (Processor) ---")
    matrix_a = np.load('matrix_a.npy')
    matrix_b = np.load('matrix_b.npy')
    size = matrix_a.shape[0]
    print(f"Loaded {size}x{size} matrices A and B.")
    start_time = time.time()
    result_matrix_ps = np.dot(matrix_a, matrix_b)
    end_time = time.time()
    execution_time_sec = end_time - start_time
    np.save('result_matrix.npy', result_matrix_ps)
    print("Result matrix saved to result_matrix.npy.")
    return result_matrix_ps, execution_time_sec
if __name__ == "__main__":
    result_ps, time_sec = multiply_matrices_ps()
    if result_ps is not None:
        time_ms = time_sec * 1000
        print(f"\nExecution Time on PS (Processor): {time_ms:.3f} ms")