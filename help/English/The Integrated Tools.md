## The Integrated Tools ##

There is the list of integrated tools :

- A Sanity Checker
- A Garbage Collector

### Sanity Checker ###

This tool performs a check between the methods defined in the interface and the corresponding entries in the virtual table. Following the analysis of the loaded source codes, the analyzed files that are healthy will be displayed in green with the status **OK**. The files which are in yellow mean that there is one or more spelling error(s) in the name of the methods. This can be voluntary on the part of the programmer and therefore normal. The files which are in red can be an error of the type **The number of methods differs** either an error of the type **The number of parameters differs** and/or an error of the type **The return type differs**. To display the error report, just double left click on the faulty file. 

### Garbage Collector ###

This tool analyzes a piece of code in order to find the created objects and to add the destructor calls for these objects. Example: 

```
VectorA.Vector3::Vector3 = Vector3::New()
VectorB.Vector3::Vector3 = Vector3::New()
VectorC.Vector3::Vector3 = VectorA\Copy()
```

After analysis, the code will have the calls to the destructors added :

```
VectorA.Vector3::Vector3 = Vector3::New()
VectorB.Vector3::Vector3 = Vector3::New()
VectorC.Vector3::Vector3 = VectorA\Copy()

VectorA\Free()
VectorB\Free()
VectorC\Free()
```

**Note that pointers are not considered in the analysis.**

---

This document was last modified on November 29^th^, 2021 at 19h40 by Guillaume Saumure. 

