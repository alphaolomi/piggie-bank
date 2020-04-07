import 'package:flutter/material.dart';

/// Domain
class Domain{
  final String value;
  final Color color;

///Domain
  Domain(this.value, this.color);

///getDomain
  static List<Domain> getDomain(List<String>values,List<Color>colors)
  {
    assert(values.length==colors.length);
    List<Domain> domains=[];
    for(int i=0;i<colors.length;i++)
      {
        domains.add(Domain(values[i],colors[i]));
      }
    return domains;
  }
}