/*

PyVisiLibity: a Python binding of VisiLibity1
Copyright (C) 2018 Yu Cao < University of Southampton> Yu.Cao at soton.ac.uk
Originally by Stefanie T. of MIT, United States

PyVisiLibity is free software: you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.
PyVisiLibity is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.
You should have received a copy of the GNU Lesser General Public
License along with PyVisiLibity.  If not, see <http://www.gnu.org/licenses/>.


*/
%module visilibity
#pragma SWIG nowarn=501
#pragma SWIG nowarn=501,505,401
%{

#include "visilibity.hpp"
%}
%include std_vector.i
namespace std {
         %template(pointList) vector<VisiLibity::Point>;
         %template(polygonList) vector<VisiLibity::Polygon>;
}


%include visilibity.hpp


%extend VisiLibity::Polygon {
  Point __getitem__(unsigned i) {
    return (*self)[i];
  }
};
