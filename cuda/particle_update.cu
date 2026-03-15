#include "../include/particle.h"

__global__ void update_particles(Particle* particles, int n, float dt) {

    int id = blockIdx.x * blockDim.x + threadIdx.x;

    if (id >= n) return;

    particles[id].x += particles[id].vx * dt;
    particles[id].y += particles[id].vy * dt;
}