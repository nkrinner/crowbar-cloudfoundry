#
# Copyright 2014, SUSE LINUX Products GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class CloudfoundryService < ServiceObject
  def initialize(thelogger)
    super(thelogger)
    @bc_name = "cloudfoundry"
  end

  class << self
    def role_constraints
      {
        "cloudfoundry" => {
          "unique" => false,
          "count" => 1,
          "exclude_platform" => {
            "windows" => "/.*/"
          }
        }
      }
    end
  end

  def create_proposal
    @logger.debug("Cloudfoundry create_proposal: entering")
    base = super

    @logger.debug("Cloudfoundry create_proposal: exiting")
    base
  end

  def proposal_dependencies(role)
    answer = []

    answer
  end
end
