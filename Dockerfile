# syntax=docker/dockerfile:1
FROM python:3.7-alpine

WORKDIR /src

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

# EXPOSE 5000


# If this was to run in production, you would use this command here (I think --- in theory --- but I haven't tested it)
# That being said, since this is supposed to be a Dev container scenario... I'm not sure I actually want to "run" anything, just spin up the container and wait for me to attach to it in VSCode.
# CMD["python", "src.main:py"] 