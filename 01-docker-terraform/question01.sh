# Run docker with the python:3.12.8 image in an interactive mode, use the entrypoint bash
docker run -it --entrypoint bash python:3.12.8

# Check pip version
pip --version

# Result:
# - pip 24.3.1 from /usr/local/lib/python3.12/site-packages/pip (python 3.12)
# - Answer: 24.3.1