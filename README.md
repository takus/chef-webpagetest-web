webpagetest-web Cookbook
========================

Installs [webpagetest web-server](https://sites.google.com/a/webpagetest.org/docs/private-instances#TOC-Web-Server1) (not agent).

Requirements
------------

#### platforms

- `CentOS 6.4`

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
Authors: Takumi Sakamoto
