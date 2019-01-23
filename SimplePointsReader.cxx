#include <vtkSmartPointer.h>
#include <vtkUnstructuredGridReader.h>

#include <vtkSimplePointsReader.h>
#include <vtkDataSetMapper.h>
#include <vtkCellData.h>
#include <vtkPointData.h>
#include <vtkFieldData.h>
#include <vtkDataSetAttributes.h>
#include <vtkUnstructuredGrid.h>


#include <vtkActor.h>
#include <vtkProperty.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>


#include <lines.h>
#include <vtkpoint.h>
#include <Param.h>


void output_results(string VTKFile, string OutPutFile){

	//read all the data from the file
	vtkSmartPointer<vtkUnstructuredGridReader> reader =
	vtkSmartPointer<vtkUnstructuredGridReader>::New();
	reader->ReadAllScalarsOn();
	reader->ReadAllVectorsOn();
	reader->SetFileName(VTKFile.c_str());
	reader->Update();

	//read the points and the scalars
	vtkUnstructuredGrid* ugrid = reader->GetOutput();
	vtkPointData *pointData = ugrid->GetPointData();
	vtkDataArray *arrTemperature = pointData->GetArray("Temperature");
	vtkDataArray *arrPressure = pointData->GetArray("Pressure");
	vtkDataArray *arrDensity = pointData->GetArray("Density");
	vtkDataArray *arrXMomentum = pointData->GetArray("X-Momentum");
	vtkDataArray *arrYMomentum = pointData->GetArray("Y-Momentum");
	vtkDataArray *arrZMomentum = pointData->GetArray("Z-Momentum");
	vtkDataArray *arrXGrid = pointData->GetArray("Grid_Velx");
	vtkDataArray *arrYGrid = pointData->GetArray("Grid_Vely");
	vtkDataArray *arrZGrid = pointData->GetArray("Grid_Velz");
	vtkDataArray *arrSoundSpeed = pointData->GetArray("SoundSpeed");
	vtkDataArray *arrEntropy = pointData->GetArray("Entropy");
	vtkDataArray *arrMach = pointData->GetArray("Mach");

	//create the VTK points
	double tmp_pt[3];
	deque<VTKPOINT> deq;
	for (int i = 0; i < ugrid->GetNumberOfPoints(); i++)
	{
	  ugrid->GetPoint(i,tmp_pt);
	  VTKPOINT pt = VTKPOINT(
			  tmp_pt[0],
			  tmp_pt[1],
			  tmp_pt[2],
			  arrTemperature->GetTuple1(i),
			  arrPressure->GetTuple1(i),
			  arrDensity->GetTuple1(i),
			  arrXMomentum->GetTuple1(i),
			  arrYMomentum->GetTuple1(i),
			  arrZMomentum->GetTuple1(i),
			  arrXGrid->GetTuple1(i),
			  arrYGrid->GetTuple1(i),
			  arrZGrid->GetTuple1(i),
			  arrSoundSpeed->GetTuple1(i),
			  arrEntropy->GetTuple1(i),
			  arrMach->GetTuple1(i)
	  );
	  deq.push_back(pt);
	};
	//sort on the basis of coordinates
	sort(deq.begin(), deq.end(), sortByXYZ);

	//split in different spanheights
	deque<VTKPOINT> tmpdeq1,tmpdeq2,tmpdeq3;
	for (int i=0; i<deq.size();i++){
	  tmpdeq1.push_back(deq[i]);
	  i++;
	  tmpdeq2.push_back(deq[i]);
	  i++;
	  tmpdeq3.push_back(deq[i]);
	}

	//read leading point
	POINT leadPt = readPt("leadpoint.txt");


	//order the points
	deque<VTKPOINT> order_deq1, init_order_deq1;
	deque<VTKPOINT> order_deq2, init_order_deq2;
	deque<VTKPOINT> order_deq3, init_order_deq3;



	initialize_ordering(init_order_deq1, tmpdeq1, leadPt);
	initialize_ordering(init_order_deq2, tmpdeq2, leadPt);
	initialize_ordering(init_order_deq3, tmpdeq3, leadPt);


	order_deq1 =order_by_distance(init_order_deq1, tmpdeq1);
	order_deq2 =order_by_distance(init_order_deq2, tmpdeq2);
	order_deq3 =order_by_distance(init_order_deq3, tmpdeq3);


	//create splines
	VTKSPLINE test1 = VTKSPLINE(order_deq1);
	VTKSPLINE test2 = VTKSPLINE(order_deq2);
	VTKSPLINE test3 = VTKSPLINE(order_deq3);

	//write the points
	string file1 = OutPutFile+"_1.txt";
	string file2 = OutPutFile+"_2.txt";
	string file3 = OutPutFile+"_3.txt";

	//write the points
	test1.writeCtrPts(file1.c_str());
	test2.writeCtrPts(file2.c_str());
	test3.writeCtrPts(file3.c_str());


}
int main(int argc, char* argv[])
{

	ParamMap param = ParamMap(argv[1]);
	string VTKPRESSURE = param.getStringParam("VTKFILE_PRESSURE");
	string VTKSUCTION = param.getStringParam("VTKFILE_SUCTION");
	string LEADPOINT = param.getStringParam("TXTFILE_LEADPOINT");
	string OUTPUTPRESSURE =param.getStringParam("OUTPUTFILE_PRESSURE");
    string OUTPUTSUCTION =param.getStringParam("OUTPUTFILE_SUCTION");

    cout << "reading the results" << endl;
    output_results(VTKPRESSURE, OUTPUTPRESSURE);
    output_results(VTKSUCTION, OUTPUTSUCTION);
    cout << "written the results" << endl;


  return EXIT_SUCCESS;
}
