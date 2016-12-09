# Tyrus Malmstrom
# Makefile for P5 assignment
# CS410 :: intro to graphics

CXX		= g++
OBJS		= raytracer.o ModelObject.o Camera.o Ray.o Face.o Color.o LightSource.o Sphere.o
DEBUG		= -g
CPPFLAGS	= -Wall -std=c++11 -I. -I./PNGPP_FILES -fopenmp -Ofast -c $(libpng-config --cflags) $(DEBUG)  # The only thing that you need to keep in mind when compiling the
							      					   # above program is that the compiler must be able to find the Eigen header files.
							      					   # The directory in which you placed Eigen's source code must be in the include path
							      					   # As well as the PNGPP header files.
LDFLAGS		= -Wall $(DEBUG) -fopenmp $(libpng-config --ldflags) -lpng
EXE 		= raytracer

all: clean raytracer #by default, make my makefile clean up the project directory, just to be safe.

raytracer: $(OBJS)
	$(CXX) $(OBJS) $(LDFLAGS) -o raytracer
	@echo "-- Success!"

raytracer.o: raytracer.cpp
	@echo "-- Compiling raytracer..."
	$(CXX) $(CPPFLAGS) raytracer.cpp

ModelObject.o: ModelObject.cpp ModelObject.h
	@echo "-- Compiling ModelObject class..."
	$(CXX) $(CPPFLAGS) ModelObject.cpp

# P3:
Camera.o: Camera.cpp Camera.h
	@echo "-- Compiling Camera class..."
	$(CXX) $(CPPFLAGS) Camera.cpp

Ray.o: Ray.cpp Ray.h
	@echo "-- Compiling Ray class..."
	$(CXX) $(CPPFLAGS) Ray.cpp

Face.o: Face.cpp Face.h
	@echo "-- Compiling Face class..."
	$(CXX) $(CPPFLAGS) Face.cpp

# P4: 
Color.o: Color.cpp Color.h
	@echo "-- Compiling Color class..."
	$(CXX) $(CPPFLAGS) Color.cpp


LightSource.o: LightSource.cpp LightSource.h
	@echo "-- Compiling LightSource class..."
	$(CXX) $(CPPFLAGS) LightSource.cpp


Sphere.o: Sphere.cpp Sphere.h
	@echo "-- Compiling Sphere class..."
	$(CXX) $(CPPFLAGS) Sphere.cpp

clean:
	@echo "Cleaning up project directory ..."
	rm -f $(OBJS) *~ raytracer

package:
	@echo "Packaging up project directory..."
	tar -cvf pa5.tar *.cpp *.h ./Eigen ./PNGPP_FILES Makefile *.txt *.mtl *.obj
