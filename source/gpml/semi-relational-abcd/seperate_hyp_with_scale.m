%Copyright 2018 UNIST under XAI Project supported by Ministry of Science and ICT, Korea

%Licensed under the Apache License, Version 2.0 (the "License"); 
%you may not use this file except in compliance with the License.
%You may obtain a copy of the License at

%   https://www.apache.org/licenses/LICENSE-2.0

%Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.


function [scale hyp_fS, hyp_f] = seperate_hyp_with_scale(model, hyp)
hyp_fS = hyp(2*model.M + 1:2*model.M + model.num_hyp_fS);
num_f = int32(model.num_hyp_f/model.M);
for m = 1: model.M
    scale{m} = hyp(2*m - 1: 2*m);
    hyp_f{m} = hyp(2*model.M + model.num_hyp_fS + 1 + num_f*(m-1): 2*model.M + model.num_hyp_fS + num_f*m);
end
end

