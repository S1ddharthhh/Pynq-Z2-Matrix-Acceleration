#include <hls_stream.h>
#include "ap_axi_sdata.h"

#define MATRIX_SIZE 128
typedef int data_t;
typedef ap_axiu<32, 0, 0, 0> stream_packet;

// -----------------------------------------------------------------------
// TOP-LEVEL FUNCTION
// -----------------------------------------------------------------------
void matmul_hls(hls::stream<stream_packet>& stream_in, hls::stream<stream_packet>& stream_out) {
    
    // THE REAL FIX: 
    // We replace 'ap_ctrl_none' with an 's_axilite' interface.
    // This makes the IP visible to the processor and to PYNQ.
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    
    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE axis port=stream_out

    // On-chip buffers
    data_t A[MATRIX_SIZE][MATRIX_SIZE];
    data_t B[MATRIX_SIZE][MATRIX_SIZE];
    data_t C[MATRIX_SIZE][MATRIX_SIZE];

    #pragma HLS BIND_STORAGE variable=A type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=B type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=C type=ram_2p impl=bram

    #pragma HLS ARRAY_PARTITION variable=A type=block factor=16 dim=2
    #pragma HLS ARRAY_PARTITION variable=B type=block factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=C type=block factor=16 dim=2

    // STAGE 1: Load Matrix A
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            A[i][j] = stream_in.read().data;
        }
    }

    // STAGE 2: Load Matrix B
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            B[i][j] = stream_in.read().data;
        }
    }

    // STAGE 3: Compute
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            data_t sum = 0;
            for (int k = 0; k < MATRIX_SIZE; k++) {
                #pragma HLS UNROLL factor=16
                sum += A[i][k] * B[k][j];
            }
            C[i][j] = sum;
        }
    }

    // STAGE 4: Stream Result Out
    for (int i = 0; i < MATRIX_SIZE; i++) {
        for (int j = 0; j < MATRIX_SIZE; j++) {
            #pragma HLS PIPELINE II=1
            stream_packet temp;
            temp.data = C[i][j];
            temp.last = (i == MATRIX_SIZE - 1 && j == MATRIX_SIZE - 1);
            temp.keep = -1; 
            temp.strb = -1; 
            stream_out.write(temp);
        }
    }
}