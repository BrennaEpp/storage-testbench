# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
FROM python:3.11@sha256:cc7372fe4746ca323f18c6bd0d45dadf22d192756abc5f73e39f9c7f10cba5aa

EXPOSE 9000
WORKDIR /opt/storage-testbench

COPY . /opt/storage-testbench/

RUN python3 -m pip install -e .

CMD ["python3", \
      "testbench_run.py", \
      "0.0.0.0", \
      "9000", \
      "10"]
