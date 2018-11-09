float accumulate(float list[N]) {
  float z = 0;
  for (int i = 0; i<N; i++) {
    z = map(z,list[i]);
  }
  return z;
}

#pragma glslify: export(accumulate)
