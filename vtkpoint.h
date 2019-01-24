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
	double T, P, D, XMom, YMom,ZMom,XGrid, YGrid,ZGrid,SoundSpeed, S, Ma;
	double s;
public:
	VTKPOINT(){};
	VTKPOINT(
			double x_,
			double y_,
			double z_,
			double T_,
			double P_,
			double D_,
			double XMom_,
			double YMom_,
			double ZMom_,
			double XGrid_,
			double YGrid_,
			double ZGrid_,
			double SoundSpeed_,
			double S_,
			double Ma_
	):
		POINT(x_,y_,z_),
		T(T_),
		P(P_),
		D(D_),
		XMom(XMom_),
		YMom(YMom_),
		ZMom(ZMom_),
		XGrid(XGrid_),
		YGrid(YGrid_),
		ZGrid(ZGrid_),
		SoundSpeed(SoundSpeed_),
		S(S_),
		Ma(Ma_)
		{};
	void print();

};


class VTKSPLINE
{
public:
	SPLINE spl;
	deque<VTKPOINT> controlPt;
public:
	VTKSPLINE(deque<VTKPOINT> &ctrPts): controlPt(ctrPts) {
		deque<POINT> tmp, test;
		for (int i=0; i<ctrPts.size(); i++){
			tmp.push_back((POINT) ctrPts[i]);
		}
		spl = SPLINE(tmp);
		for (int i=0; i<spl.controlPt.size(); i++){
			controlPt[i].s = 1.0-spl.controlPt[i].s;
		}
	}
	void writeCtrPts(const char *name);
};


deque<VTKPOINT> set_deque_correct(deque<VTKPOINT> tmp){
	if (tmp[0].x < tmp[tmp.size()-1].x){
		reverse(tmp.begin(),tmp.end());
	}
	return tmp;
}
void VTKSPLINE::writeCtrPts(const char *name)
{
	FILE *fp = fopen(name, "wt");
	fprintf(fp, "x\ty\tz\ts\tT\tP\tD\tXMom\tYMom\tZMom\tXGrid\tYGrid\tZGrid\tc\tS\tMa\n");
	for (int i=0; i<controlPt.size(); i++)
		fprintf(fp, "%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\n",
				controlPt[i].x,
				controlPt[i].y,
				controlPt[i].z,
				controlPt[i].s,
				controlPt[i].T,
				controlPt[i].P,
				controlPt[i].D,
				controlPt[i].XMom,
				controlPt[i].YMom,
				controlPt[i].ZMom,
				controlPt[i].XGrid,
				controlPt[i].YGrid,
				controlPt[i].ZGrid,
				controlPt[i].SoundSpeed,
				controlPt[i].S,
				controlPt[i].Ma);
	fclose(fp);
}




deque<VTKPOINT> remove_pt_from_deque(deque<VTKPOINT> deq, VTKPOINT pt){
	deque<VTKPOINT> tmp;
	for (int i=0; i<deq.size();i++){
		if (deq[i]!=pt) tmp.push_back(deq[i]);
	}
	return tmp;
}

void initialize_ordering(deque<VTKPOINT>& ordered_pts, deque<VTKPOINT>& unordered_pts, POINT lead_point){
	VTKPOINT tmp;
	int index;
	for (int i=0; i<unordered_pts.size();i++){
		tmp = unordered_pts[i];
		tmp.z=0;
		tmp.x*=1000;
		tmp.y*=1000;
		if (mag(tmp - lead_point)<1e-1){
			ordered_pts.push_back(unordered_pts[i]);
			index = i;
		}
	}
	deque<VTKPOINT> removed = remove_pt_from_deque(unordered_pts,unordered_pts[index]);
	unordered_pts = removed;
}



deque<VTKPOINT> order_by_distance(deque<VTKPOINT> ordered_pts, deque<VTKPOINT> unordered_pts){

	if (unordered_pts.size()==0){
		return ordered_pts;
	}
	else{
		double mindistance = 1e10;
		VTKPOINT tmp;
		int index;
		for (int i=0; i<unordered_pts.size();i++){
			tmp = unordered_pts[i];
			tmp.z = 0;
			double distance = mag(ordered_pts[ordered_pts.size()-1]-tmp);
			if (distance < mindistance){
				mindistance = distance;
				index = i;
			}
		}
		ordered_pts.push_back(unordered_pts[index]);
		unordered_pts = remove_pt_from_deque(unordered_pts, unordered_pts[index]);
		return order_by_distance(ordered_pts, unordered_pts);
	}
}

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
	printf("xyzi: %15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\t%15.4le\n",
			x, y, z, s,T, P, D, XMom, YMom,ZMom, XGrid, YGrid,ZGrid, S, Ma);
}

#endif /* POINT_H_ */

