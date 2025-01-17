'''
Created on Jan 25, 2013

@author: Mihai
'''

class Student:
    
    def __init__(self,id,name):
        self.__id=id
        self.__name=name
        
    def getId (self):
        return self.__id
    
    def getName (self):
        return self.__name
    
    def __str__(self):
        return str(self.__id) + " " + self.__name

    
class Lab:
    
    def __init__(self,studentId,labNumber,problemNumber):
        self.__studentId=studentId
        self.__labNumber=labNumber
        self.__problemNumber=problemNumber
        
    def getStudentId(self):
        return self.__studentId
    
    def getLabNumber(self):
        return self.__labNumber
    
    def getProblemNumber(self):
        return self.__problemNumber
    
    def __str__(self):
        return str(self.__studentId) + " " + str(self.__labNumber) + " " + self.__problemNumber
    