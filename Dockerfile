FROM alexenge/r_eeg:4.1.2

# Download UCAP data for 2 participants into the project directory
ENV PIPELINE_DATA_DIR="$HOME/proj/data"
RUN python3 -c "from pipeline.datasets import ucap; ucap.get_paths(2)" 
