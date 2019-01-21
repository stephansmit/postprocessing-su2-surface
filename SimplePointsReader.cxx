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

//class INDEXED_POINT : public POINT
//{
//public:
//	int i;
////	double x,y,z;
//public:
//    INDEXED_POINT(double x_, double y_, double z_, int i_): POINT(x_,y_,z_), i(i_) {}
//};
//
//bool sortByXYZ(const INDEXED_POINT &lhs, const INDEXED_POINT &rhs) {
//
//    if (lhs.x < rhs.x)
//        return true;
//    else if (lhs.x > rhs.x)
//        return false;
//    if (lhs.y  < rhs.y)
//        return true;
//    else if (lhs.y > rhs.y)
//        return false;
//    if (lhs.z  < rhs.z)
//        return true;
//    else if (lhs.z > rhs.z)
//        return false;
//}



//deque<INDEXED_POINT> sort_by_distance(deque<POINT>, pt){
//
//}
//struct point
//{
//    // Left out making a constructor for simplicity's sake.
//    double x;
//    double y;
//    double z;
//    int i;
//};
//
//
//



int main(int argc, char* argv[])
{
  // Verify input arguments
  if ( argc != 2 )
  {
    std::cout << "Usage: " << argv[0]
              << " Filename(.xyz)" << std::endl;
    return EXIT_FAILURE;
  }
 
  //read all the data from the file
  vtkSmartPointer<vtkUnstructuredGridReader> reader =
  vtkSmartPointer<vtkUnstructuredGridReader>::New();
  reader->ReadAllScalarsOn();
  reader->ReadAllVectorsOn();
  reader->SetFileName(argv[1]);
  reader->Update();




  vtkUnstructuredGrid* ugrid = reader->GetOutput();
  vtkPointData *pointData = ugrid->GetPointData();

  vtkDataArray *arr = pointData->GetArray("Temperature");

  double vec[3];
  deque<VTKPOINT> deq;
  for (int i = 0; i < ugrid->GetNumberOfPoints(); i++)
  {
      ugrid->GetPoint(i,vec);
//      cout << vec[0] << endl;
      VTKPOINT pt = VTKPOINT(vec[0],vec[1],vec[2],i,arr->GetTuple1(i));
//      cout << pt.x << endl;
      deq.push_back(pt);
  };
  sort(deq.begin(), deq.end(), sortByXYZ);

  for (int i=0; i<deq.size();i++){
	  deq[i].print();
	  i++;
	  i++;
  }
  deque<POINT> tmpdeq;  for (int i=0; i<deq.size();i++)  tmpdeq.push_back((POINT) deq[i]);


  SPLINE test = SPLINE(tmpdeq);
  test.writeCtrPts("without.txt");

  deque<POINT> tmpwrite = test.discretize(1000,true,true);
  SPLINE spline(tmpwrite);
  spline.writeCtrPts("test.txt");
//  addToDisplay(test);
//




  //
  //  vtkCellData *cellData = ugrid->GetCellData();
  //  vtkPointData *pointData = ugrid->GetPointData();
  //  vtkFieldData *fieldData = ugrid->GetFieldData();
  //
  //  cout << ugrid->GetNumberOfPoints();
  //  double test = pointData->GetArray("Temperature")->GetTuple1(2);

//
//

//  for (int i = 0; i < fieldData->GetNumberOfArrays(); i++)
//  {
//      vtkDataArray* data = fieldData->GetArray(i);
//  };
//
//
//  for (int i = 0; i < cellData->GetNumberOfArrays(); i++)
//    {
//        vtkDataArray* data = cellData->GetArray(i);
//        cout << "cell " << data->GetName() << endl;
//
//    };
//  for (int i = 0; i < pointData->GetNumberOfArrays(); i++)
//	{
//		vtkDataArray* data = pointData->GetArray(i);
//		//vtkLookupTable* lut= data->GetLookupTable();
//
//		cout << "point " << data->GetName() << endl;
//		// =  data->;
//		//cout << test << endl;
//	};


//      for (int j = 0; j < data->GetNumberOfTuples(); j++)
//      {
//          double value = data->GetTuple1(j);
//          cout << "  value " << j << "th is " << value << endl;
//      }


//  vtkSmartPointer<vtkSimplePointsReader> reader =
//    vtkSmartPointer<vtkSimplePointsReader>::New();cmake example vtk
//  reader->SetFileName ( argv[1] );
//  reader->Update();
//
  // Visualize


  //Create a mapper and actor
//  vtkSmartPointer<vtkDataSetMapper> mapper =
//    vtkSmartPointer<vtkDataSetMapper>::New();
//  mapper->SetInputConnection(reader->GetOutputPort());
//
//  vtkSmartPointer<vtkActor> actor =
//    vtkSmartPointer<vtkActor>::New();
//  actor->SetMapper(mapper);
//
//  //Create a renderer, render window, and interactor
//  vtkSmartPointer<vtkRenderer> renderer =
//    vtkSmartPointer<vtkRenderer>::New();
//  vtkSmartPointer<vtkRenderWindow> renderWindow =
//    vtkSmartPointer<vtkRenderWindow>::New();
//  renderWindow->AddRenderer(renderer);
//  vtkSmartPointer<vtkRenderWindowInteractor> renderWindowInteractor =
//    vtkSmartPointer<vtkRenderWindowInteractor>::New();
//  renderWindowInteractor->SetRenderWindow(renderWindow);
//
//  //Add the actor to the scene
//  renderer->AddActor(actor);
//  renderer->SetBackground(.3, .6, .3); // Background color green
//
//  //Render and interact
//  renderWindow->Render();
//  renderWindowInteractor->Start();
//
//
//  renderWindowInteractor->Start();

  return EXIT_SUCCESS;
}
