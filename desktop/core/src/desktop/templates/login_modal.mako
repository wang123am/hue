## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.    See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##       http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

<%!
  from desktop import conf
  from django.utils.translation import ugettext as _
  from useradmin.password_policy import is_password_policy_enabled, get_password_hint
%>


<link rel="stylesheet" href="${ static('desktop/css/login.css') }">

<div id="login-modal" class="modal fade hide" style="padding: 0px!important;box-shadow: none;background: transparent;">

  <div class="login-container">
      <a href="#" class="close wrong-token link-message" data-dismiss="modal" style="display: none; margin: 10px">&times;</a>
      <div class="logo"><img src="${ static('desktop/art/hue-login-logo-ellie@2x.png') }" width="70" height="70"></div>
      <h4 class="muted" style="margin-bottom: 50px">
        ${ _('Your session has expired.')}
        <br/>
        <a id="reload" class="pointer">
        <span class="logged-out link-message" style="display: none">
          ${ _('Reload this page to sign in again') }
        </span>
        <span class="wrong-token link-message" style="display: none">
          ${ _('Please reload this page') }
        </span>
        </a>
      </h4>
  </div>
</div>

<script>
  $(document).ready(function () {
    $('#reload').on('click', function () {
      location.reload();
    });
  });
</script>

