webpagetest-web cookbook (beta ver.)
====================================

Installs [webpagetest web-server](https://sites.google.com/a/webpagetest.org/docs/private-instances#TOC-Web-Server1) (not agent).
For now, this cookbook doesn't configure `www/settings` because this is an beta version.

Requirements
------------

#### platforms

- `CentOS`

#### cookbooks

- [opscode-cookbooks/yum](https://github.com/opscode-cookbooks/yum/)
- [opscode-cookbooks/apache2](https://github.com/opscode-cookbooks/apache2/)
- [opscode-cookbooks/php](https://github.com/opscode-cookbooks/php/)

Attributes
----------

#### webpagetest-web::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['webpagetest-web']['documentroot']</tt></td>
    <td>String</td>
    <td>document root</td>
    <td><tt>/var/www</tt></td>
  </tr>
</table>

Usage
-----

#### webpagetest-web::default

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[webpagetest-web]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

* Author:: Takumi Sakamoto

* Copyright:: 2013, Takumi Sakamoto

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
