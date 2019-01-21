#ifndef VTKPOINT_H_
#define VTKPOINT_H_

#include "stdio.h"
#include "math.h"
#include <string>
#include <list>
#include <deque>
#include <algorithm>
using namespace std;

#ifdef WITH_OPENGL
  #include <GL/glu.h>
  #include <GL/glut.h>
#else
  #include "gldummy.h"
#endif

#include "point.h"

class VTKPOINT : public POINT
{
public:
	int i;
	double T;
//	double x,y,z;
public:
	VTKPOINT(double x_, double y_, double z_, int i_, double T_): POINT(x_,y_,z_), i(i_), T(T_) {}
	void print();
};

//class VTKSPLINE : public SPLINE{
//public:
//	VTKSPLINE(const deque<VTKPOINT> &ctrPts)   {
//		deque<POINT> test;
//		for (int i=0; i<ctrPts.size();i++) test.push_back(ctrPts[i]);
//		LINE(ttest);
//		init();
//	}
//};


bool sortByXYZ(const VTKPOINT &lhs, const VTKPOINT &rhs) {

    if (lhs.x < rhs.x)
        return true;
    else if (lhs.x > rhs.x)
        return false;
    if (lhs.y  < rhs.y)
        return true;
    else if (lhs.y > rhs.y)
        return false;
    if (lhs.z  < rhs.z)
        return true;
    else if (lhs.z > rhs.z)
        return false;
}



void VTKPOINT::print()
{
	printf("xyzi: %15.4le\t%15.4le\t%15.4le\t%15.4le\n", x, y, z, T);
}

#endif /* POINT_H_ */

