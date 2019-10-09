#Custom NVIDIA CUDA profiling commands for better automation and easier logfile creation

alias prof='nvprof --unified-memory-profiling off'

function proff{
  if [ ! -d ./profile-logs ]; then
    mkdir -p ./profile-logs;
  fi
  nvprof --unified-memory-profiling off --log-file "profile-logs/$2" "$1";
}
export -f proff
