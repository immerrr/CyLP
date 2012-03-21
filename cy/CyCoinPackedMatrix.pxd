from cpython.ref cimport PyObject

cdef extern from "ICoinPackedMatrix.hpp":
    cdef cppclass CppCoinPackedMatrix "ICoinPackedMatrix":
        int getNumElements()
        PyObject* np_getIndices()
        PyObject* np_getElements()
        PyObject* np_getVectorStarts()
        int getMajorDim()
        int getMinorDim()

        CppCoinPackedMatrix(bint colordered, int* rowIndices,
                                    int* colIndices, double* elements,
                                    int numels)
        #double & operator[](int)
        #double getItem(int n)
        #void setItem(int n, double value)
        #void reserve(int n)
    CppCoinPackedMatrix *new_CppCoinPackedMatrix "new ICoinPackedMatrix" ()


cdef class CyCoinPackedMatrix:
    cpdef CppCoinPackedMatrix* CppSelf
    #cpdef getIndices(self)
    #cpdef getElements(self)
    #cpdef getNumElements(self)
    #cpdef getVectorStarts(self)
    #cpdef getMajorDim(self)
    #cpdef getMinorDim(self)